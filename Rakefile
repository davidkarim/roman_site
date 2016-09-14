# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

# Added to ensure that ci_reporter_minitest gem is used to create reports
require 'ci/reporter/rake/minitest'
# ...
# Rake code that creates a task called `:minitest`
# ...
task :minitest => 'ci:setup:minitest'

Rails.application.load_tasks
