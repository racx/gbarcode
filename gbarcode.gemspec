require 'date'
Gem::Specification.new do |s|
  s.name = %q{gbarcode}
  s.version = "0.98"
  s.date = Date.today.to_s
  s.summary = %q{A C extension that wraps the GNU Barcode project.}
  s.description = s.summary + " For more Ruby-ish syntax, you should use the Rbarcode gem."
  s.authors = "Angel Pizarro"
  s.email = "angel@delagoya.com"
  s.homepage = "http://gbarcode.rubyforge.org"
  s.files = Dir.glob('**/*')
  s.require_paths << 'ext'
  s.rubyforge_project = %q{gbarcode}
  s.extensions = %w{ext/extconf.rb}
  s.has_rdoc = true
  s.required_ruby_version = '>= 1.8.5'
  s.requirements << 'gbarcode'
end