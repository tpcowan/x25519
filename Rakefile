# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/clean"

CLEAN.include("**/*.o", "**/*.so", "**/*.bundle", "pkg", "tmp")

require "rake/extensiontask"
Rake::ExtensionTask.new("x25519_ref10") do |ext|
  ext.ext_dir = "ext/x25519_ref10"
end

# unless ARGV.include? '--disable-preccomputed'
#   Rake::ExtensionTask.new("x25519_precomputed") do |ext|
#     ext.ext_dir = "ext/x25519_precomputed"
#   end
# end

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new

require "rubocop/rake_task"
RuboCop::RakeTask.new

task default: %w[compile spec rubocop]
