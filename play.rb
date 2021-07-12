require_relative "main"

Jin = Person.new("Jin-sakai", 100, 50, 80)
puts Jin
puts "\n"

loop do
    jin.attack(khotun)
    puts khotun
    puts "\n"
    break if khotun.die?
    puts "\n"

    khotun_attack(jin)
    puts jin
    puts "\n"
    break if jin.die?
    puts "\n"
end