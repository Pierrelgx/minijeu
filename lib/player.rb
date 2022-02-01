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

      def search_weapon #pour find a better arm
        new_weapon_level = rand(1..6)
        puts "cette arme est de niveau #{new_weapon_level}"
          if new_weapon_level > weapon_level then @weapon_level = new_weapon_level
            puts "prends là, elle est meilleure !"
            else
            puts "pas la peine, ça roxxxx du poney
          end
      end


end