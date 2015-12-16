require "./phonetic_alphabetizer"

if !ARGV.empty?
  ARGV.each do |arg|
    puts PhoneticAlphabetizer.new(arg).call
  end
elsif !STDIN.tty? && !STDIN.closed?
  puts PhoneticAlphabetizer.new(STDIN.gets_to_end).call
else
  abort("Usage: spellout [arguments]")
end
