class Person
    attr_reader :name, :deflecting

    def initialize(name, hitpoint, attack_damage, deflecting)
        @name = name
        @hitpoint = hitpoint
        @attack_damage = attack_damage
        @deflecting = deflecting
    end
    
    def to_s
        "#{@name} has #{@hitpoint} hitpoint and #{@attack_damage} attack damage"
    end

    def attack(other_person)
        r = rand(1..100)
        if r <= other_person.deflecting && other_person.deflecting !=0
            puts"#{@name} attacks #{other_person.name} with #{attack_damage} damage"
            puts"#{other_person.name} deflecting the attack"
        else 
            other_person.take_damage(@attack_damage)
            puts "#{name} attacks #{other_person.name} with #{attack_damage} damage"
        end
    end

    def take_damage(damage)
        @hitpoint -= damage
    end
end