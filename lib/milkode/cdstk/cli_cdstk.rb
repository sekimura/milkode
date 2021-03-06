# -*- coding: utf-8 -*-
require 'optparse'
require 'milkode/cdstk/cli_cdstksub'
require 'milkode/cdstk/cdstk'
require 'milkode/common/dbdir.rb'
require 'milkode/cdweb/cli_cdweb'
require 'milkode/grep/cli_grep'
include Milkode

module Milkode
  class CLI_Cdstk
    def self.execute(stdout, arguments=[])
      opt = OptionParser.new <<EOF
#{File.basename($0)} COMMAND [ARGS]

The most commonly used #{File.basename($0)} are:
  add         Add packages.
  cleanup     Cleanup garbage records.
  dir         Disp package dir.
  dump        Dump records.
  grep        Print lines matching a pattern
  info        Disp information.
  init        Init db.
  list        List packages. 
  mcd         Print 'mcd' command.
  pwd         Disp current db.
  rebuild     Rebuild db.
  remove      Remove packages.
  setdb       Set default db. 
  update      Update packages.
  web         Run web-app.
EOF

      opt.order!(arguments)
      subcommand = arguments.shift
      
      case subcommand
      when 'grep'
        Milkode::CLI_Grep.execute(stdout, arguments)
      else
        subcommand_default(stdout, opt, subcommand, arguments)
      end
    end

    private

    def self.subcommand_default(stdout, opt, subcommand, arguments)
      subopt = Hash.new
      suboptions = Hash.new
      
      subopt['init'], suboptions['init'] = CLI_Cdstksub.setup_init
      subopt['add'] = CLI_Cdstksub.setup_add
      subopt['update'], suboptions['update'] = CLI_Cdstksub.setup_update
      subopt['remove'], suboptions['remove'] = CLI_Cdstksub.setup_remove
      subopt['list'], suboptions['list'] = CLI_Cdstksub.setup_list
      subopt['pwd'], suboptions['pwd'] = CLI_Cdstksub.setup_pwd
      subopt['cleanup'], suboptions['cleanup'] = CLI_Cdstksub.setup_cleanup
      subopt['rebuild'] = OptionParser.new("#{File.basename($0)} rebuild")
      subopt['dump'] = OptionParser.new("#{File.basename($0)} dump")
      subopt['web'], suboptions['web'] = CLI_Cdstksub.setup_web
      subopt['dir'], suboptions['dir'] = CLI_Cdstksub.setup_dir
      subopt['setdb'], suboptions['setdb'] = CLI_Cdstksub.setup_setdb
      subopt['mcd'], suboptions['mcd'] = CLI_Cdstksub.setup_mcd
      subopt['info'], suboptions['info'] = CLI_Cdstksub.setup_info
      
      if (subopt[subcommand])
        subopt[subcommand].parse!(arguments) unless arguments.empty?
        init_default = suboptions['init'][:init_default]

        db_dir = select_dbdir(subcommand, init_default)
        obj = Cdstk.new(stdout, db_dir)

        case subcommand
        when 'init'
          FileUtils.mkdir_p db_dir if (init_default)
          obj.init 
        when 'update'
          obj.update(arguments, suboptions[subcommand])
        when 'add'
          obj.add(arguments)
        when 'remove'
          obj.remove(arguments, suboptions[subcommand])
        when 'list'
          obj.list(arguments, suboptions[subcommand])
        when 'pwd'
          obj.pwd(suboptions[subcommand])
        when 'cleanup'
          obj.cleanup(suboptions[subcommand])
        when 'rebuild'
          obj.rebuild
        when 'dump'
          obj.dump
        when 'web'
          obj.compatible?
          Milkode::CLI_Cdweb.execute_with_options(stdout, suboptions[subcommand])
        when 'dir'
          obj.dir(arguments, suboptions[subcommand])
        when 'setdb'
          obj.setdb(arguments, suboptions[subcommand])
        when 'mcd'
          obj.mcd(arguments, suboptions[subcommand])
        when 'info'
          obj.info(arguments, suboptions[subcommand])
        end
      else
        if subcommand
          $stderr.puts "#{File.basename($0)}: '#{subcommand}' is not a #{File.basename($0)} command. See '#{File.basename($0)} --help'"
        else
          stdout.puts opt.help
        end
      end
    end

    def self.select_dbdir(subcommand, init_default)
      if (subcommand == 'init')
        if (init_default)
          Dbdir.default_dir
        else
          '.'
        end
      else
        if (Dbdir.dbdir?('.') || !Dbdir.dbdir?(Dbdir.default_dir))
          '.'
        else
          Dbdir.default_dir
        end
      end
    end
 
  end
end
