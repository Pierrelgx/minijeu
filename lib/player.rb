class Player
    attr_accessor :name, :life_points
    @@all_players = []

    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_state
        puts "#{@name} a actuellement #{@life_points} points de liiiiife"
    end

    def gets_damage(damage_received)
        @life_points -= damage_received
        if @life_points <= 0
            puts "le joueur #{@name} a été tué !" 
        end
    end

    def attack(attacked)
        puts "#{@name} attaque #{attacked.name}"
        damage_received = compute_damage
        puts "#{@name} vient d'attaquer #{attacked.name} et lui inflige #{damage_received} points de dommage"
        attacked.gets_damage(damage_received)
    end

    def compute_damage
        return rand(1..6)
      end













end