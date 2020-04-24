# frozen_string_literal: true

# rubocop:disable Style/GlobalVars

def add_cflags flags
  print "checking if the C compiler accepts #{flags}... "
  with_cflags("#{$CFLAGS} #{flags}") do
    if test_compile
      puts 'OK'
      true
    else
      puts "\rC compiler does not accept #{flags}"
      false
    end
  end
end

def test_compile
  try_compile "int main() {return 0;}", "", {werror: true}
end
