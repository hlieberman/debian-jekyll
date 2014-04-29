#-*- mode: ruby; coding: utf-8 -*-
require 'rake/testtask'
task :default => :test
Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/**/test_*.rb'].select { |file| ! file =~  /tags|site|rdiscount|entry_filter|post/ }
  t.verbose = true
end
