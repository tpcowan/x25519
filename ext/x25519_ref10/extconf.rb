# frozen_string_literal: true

# rubocop:disable Style/GlobalVars

require "mkmf"

require_relative '../extconf_helpers'

add_cflags '-Wall -O3 -pedantic -std=c99'


create_makefile "x25519_ref10"

# rubocop:enable Style/GlobalVars
