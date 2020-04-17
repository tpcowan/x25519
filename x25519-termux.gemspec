# frozen_string_literal: true

require File.expand_path('lib/x25519-termux/version', __dir__)

Gem::Specification.new do |spec|
  spec.name          = 'x25519-termux'
  spec.version       = X25519::VERSION
  spec.authors       = ['Thomas Cowan']
  spec.email         = ['thomas@corda.company']
  spec.summary       = "Public key cryptography library providing the X25519 D-H function"
  spec.description = <<-DESCRIPTION.strip.gsub(/\s+/, ' ')
    An efficient public key cryptography library for Ruby providing key
    exchange/agreement via the X25519 (a.k.a. Curve25519) Elliptic Curve
    Diffie-Hellman function as described in RFC 7748. Forked branch of
    crypto-rb/x25519 modified to work on termux or other platforms where
    compiling the precomputed C extension fails.
  DESCRIPTION
  spec.date          = '2020-04-21'
  spec.homepage      = 'https://github.com/tpcowan/x25519'
  spec.license       = 'BSD-3-Clause' # https://spdx.org/licenses/BSD-3-Clause.html
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.platform      = Gem::Platform::RUBY
  spec.extensions    = ['ext/x25519_precomputed/extconf.rb', 'ext/x25519_ref10/extconf.rb']

  spec.required_ruby_version = '>= 2.2.2'
  spec.add_development_dependency 'bundler', '~> 2.0'
end
