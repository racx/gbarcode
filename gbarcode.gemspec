GEM_NAME = "gbarcode" # what ppl will type to install your gem
RUBYFORGE_PROJECT = "gbarcode" # The unix name for your project
HOMEPATH = "http://#{RUBYFORGE_PROJECT}.rubyforge.org"
REV = nil # UNCOMMENT IF REQUIRED: File.read(".svn/entries")[/committed-rev="(d+)"/, 1] rescue nil
GEM_VERSION = "0.98"
RDOC_OPTS = ["--exclude", "\.c$"]
PKG = "#{GEM_NAME}-#{GEM_VERSION}"
PKG_FILES = FileList['*.txt', 'doc/**/*.*', 'ext/**/*.c', 'ext/**/*.h', 'ext/**/*.rb']

SPEC = Gem::Specification.new do |s|
  s.name = GEM_NAME
  s.version = GEM_VERSION
  s.summary = "A C extension that wraps the GNU Barcode project."
  s.description = s.summary + " For more Ruby-ish syntax, you should use the Rbarcode gem."
  s.author = "Angel Pizarro"
  s.email = "angel@delagoya.com"
  s.homepage = "http://gbarcode.rubyforge.org"
  s.test_files = FileList['test/**/*']
  s.files = PKG_FILES
  s.require_paths = [".","ext"]
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = FileList['*.txt']
  s.has_rdoc = true
  s.rdoc_options = RDOC_OPTS
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 1.8.4"
  s.rubyforge_project = RUBYFORGE_PROJECT
end