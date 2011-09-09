# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "holiday_jp/version"

Gem::Specification.new do |s|
  s.name        = "holiday_jp"
  s.version     = HolidayJp::VERSION
  s.authors     = ["Masaki KOMAGATA"]
  s.email       = %q{komagata@gmail.com}
  s.homepage    = %q{http://github.com/komagata/holiday_jp}
  s.summary     = %q{Japanese Holidays from 1970 to 2050.}
  s.description = %q{Japanese Holidays from 1970 to 2050.}
  s.date = %q{2010-09-14}
  s.rdoc_options = ["--charset=UTF-8"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "shoulda"
end
