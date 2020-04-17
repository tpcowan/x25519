# frozen_string_literal: true

# rubocop:disable Style/GlobalVars

require "mkmf"

require_relative '../extconf_helpers'

add_cflags '-Wall -O3 -pedantic -std=c99 -mbmi -mbmi2'
add_cflags '-march=native -mtune=native'


begin
  create_makefile "x25519_precomputed"
rescue
  $stderr.puts "Error creating makefile for x25519_precomputed"
end

# rubocop:enable Style/GlobalVars
