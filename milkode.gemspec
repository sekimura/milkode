# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{milkode}
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["ongaeshi"]
  s.date = %q{2012-02-02}
  s.description = %q{Line based local source code search engine & grep-command & web-app.}
  s.email = %q{ongaeshi0621@gmail.com}
  s.executables = ["gmilk", "milk"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "HISTORY.ja.rdoc",
    "HISTORY.rdoc",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/gmilk",
    "bin/milk",
    "lib/milkode/cdstk/cdstk.rb",
    "lib/milkode/cdstk/cdstk_command.rb",
    "lib/milkode/cdstk/cdstk_yaml.rb",
    "lib/milkode/cdstk/cli_cdstk.rb",
    "lib/milkode/cdstk/cli_cdstksub.rb",
    "lib/milkode/cdweb/app.rb",
    "lib/milkode/cdweb/cli_cdweb.rb",
    "lib/milkode/cdweb/config.ru",
    "lib/milkode/cdweb/lib/coderay_wrapper.rb",
    "lib/milkode/cdweb/lib/command.rb",
    "lib/milkode/cdweb/lib/database.rb",
    "lib/milkode/cdweb/lib/grep.rb",
    "lib/milkode/cdweb/lib/mkurl.rb",
    "lib/milkode/cdweb/lib/my_nokogiri.rb",
    "lib/milkode/cdweb/lib/query.rb",
    "lib/milkode/cdweb/lib/search_contents.rb",
    "lib/milkode/cdweb/lib/search_files.rb",
    "lib/milkode/cdweb/public/css/coderay-patch.css",
    "lib/milkode/cdweb/public/css/coderay.css",
    "lib/milkode/cdweb/public/css/milkode.css",
    "lib/milkode/cdweb/public/images/MilkodeIcon135.png",
    "lib/milkode/cdweb/public/images/directory.png",
    "lib/milkode/cdweb/public/images/document-new-4.png",
    "lib/milkode/cdweb/public/images/file.png",
    "lib/milkode/cdweb/public/images/go-home-5.png",
    "lib/milkode/cdweb/public/js/milkode.js",
    "lib/milkode/cdweb/views/filelist.haml",
    "lib/milkode/cdweb/views/help.haml",
    "lib/milkode/cdweb/views/index.haml",
    "lib/milkode/cdweb/views/layout.haml",
    "lib/milkode/cdweb/views/search.haml",
    "lib/milkode/cdweb/views/view.haml",
    "lib/milkode/common/archive-zip.rb",
    "lib/milkode/common/dbdir.rb",
    "lib/milkode/common/dir.rb",
    "lib/milkode/common/display_util.rb",
    "lib/milkode/common/grenfiletest.rb",
    "lib/milkode/common/grensnip.rb",
    "lib/milkode/common/platform.rb",
    "lib/milkode/common/string_snip.rb",
    "lib/milkode/common/util.rb",
    "lib/milkode/findgrep/findgrep.rb",
    "lib/milkode/findgrep/result.rb",
    "lib/milkode/grep/cli_grep.rb",
    "milkode.gemspec",
    "test/data/a_project/cdstk.rb",
    "test/data/a_project/cdstk_yaml.rb",
    "test/data/abc.zip",
    "test/data/b_project/runner.rb",
    "test/data/b_project/test_dir.rb",
    "test/data/nodir_abc.zip",
    "test/data/nodir_abc_xpi.xpi",
    "test/file_assert.rb",
    "test/file_test_utils.rb",
    "test/milkode_test_work.rb",
    "test/rake_test_loader.rb",
    "test/runner.rb",
    "test/test_bin_exec.rb",
    "test/test_cdstk.rb",
    "test/test_cdstk_command.rb",
    "test/test_cdstk_yaml.rb",
    "test/test_cli_cdstk.rb",
    "test/test_cli_grep.rb",
    "test/test_coderay_wrapper.rb",
    "test/test_coderay_wrapper_data.rb",
    "test/test_database.rb",
    "test/test_dbdir.rb",
    "test/test_dir.rb",
    "test/test_gren_util.rb",
    "test/test_helper.rb",
    "test/test_mkurl.rb",
    "test/test_query.rb",
    "test/test_string_snip.rb",
    "test/test_util.rb"
  ]
  s.homepage = %q{http://github.com/ongaeshi/milkode}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Line based local source code search engine & grep-command & web-app.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_runtime_dependency(%q<termcolor>, [">= 1.2.0"])
      s.add_runtime_dependency(%q<rroonga>, [">= 1.1.0"])
      s.add_runtime_dependency(%q<rack>, [">= 1.3.4"])
      s.add_runtime_dependency(%q<sinatra>, [">= 1.2.6"])
      s.add_runtime_dependency(%q<launchy>, [">= 0.3.7"])
      s.add_runtime_dependency(%q<coderay>, ["= 0.9.8"])
      s.add_runtime_dependency(%q<thin>, [">= 1.2.10"])
      s.add_runtime_dependency(%q<archive-zip>, [">= 0.4.0"])
      s.add_runtime_dependency(%q<haml>, [">= 3.1.2"])
      s.add_runtime_dependency(%q<sass>, [">= 3.1.3"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 1.5.0"])
      s.add_runtime_dependency(%q<hpricot>, [">= 0.8.2"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<termcolor>, [">= 1.2.0"])
      s.add_dependency(%q<rroonga>, [">= 1.1.0"])
      s.add_dependency(%q<rack>, [">= 1.3.4"])
      s.add_dependency(%q<sinatra>, [">= 1.2.6"])
      s.add_dependency(%q<launchy>, [">= 0.3.7"])
      s.add_dependency(%q<coderay>, ["= 0.9.8"])
      s.add_dependency(%q<thin>, [">= 1.2.10"])
      s.add_dependency(%q<archive-zip>, [">= 0.4.0"])
      s.add_dependency(%q<haml>, [">= 3.1.2"])
      s.add_dependency(%q<sass>, [">= 3.1.3"])
      s.add_dependency(%q<nokogiri>, [">= 1.5.0"])
      s.add_dependency(%q<hpricot>, [">= 0.8.2"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<termcolor>, [">= 1.2.0"])
    s.add_dependency(%q<rroonga>, [">= 1.1.0"])
    s.add_dependency(%q<rack>, [">= 1.3.4"])
    s.add_dependency(%q<sinatra>, [">= 1.2.6"])
    s.add_dependency(%q<launchy>, [">= 0.3.7"])
    s.add_dependency(%q<coderay>, ["= 0.9.8"])
    s.add_dependency(%q<thin>, [">= 1.2.10"])
    s.add_dependency(%q<archive-zip>, [">= 0.4.0"])
    s.add_dependency(%q<haml>, [">= 3.1.2"])
    s.add_dependency(%q<sass>, [">= 3.1.3"])
    s.add_dependency(%q<nokogiri>, [">= 1.5.0"])
    s.add_dependency(%q<hpricot>, [">= 0.8.2"])
  end
end

