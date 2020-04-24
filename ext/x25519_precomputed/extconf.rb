# frozen_string_literal: true

# rubocop:disable Style/GlobalVars

require "mkmf"

require_relative '../extconf_helpers'

if enable_config('precomputed') == false
  $CFLAGS << ' -DDISABLE_PRECOMPUTED'
end

add_cflags '-Wall -O3 -pedantic -std=c99 -mbmi -mbmi2'
add_cflags '-march=native -mtune=native'

create_makefile("x25519_precomputed")

# rubocop:enable Style/GlobalVars
