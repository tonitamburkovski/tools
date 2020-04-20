require "tools/version"

module Tools
  class Pokemon
    EFFECTIVENESS = [
      ['fire', 'grass', 2],
      ['grass', 'fire', 0.5],
      ['fire', 'water', 0.5],
      ['water', 'fire', 2],
      ['fire', 'electric', 1],
      ['water', 'grass', 0.5],
      ['grass', 'water', 2],
      ['water', 'electric', 0.5],
      ['electric', 'water', 2],
      ['grass', 'electric', 1],
      ['electric', 'grass', 1],
      ['electric', 'fire', 1]
    ]

    def initialize(calculate_damage)
      @calculate_damage = calculate_damage
    end

    def damage
      cal_damage = 0
      EFFECTIVENESS.each do |i|
        if @calculate_damage[0] == i[0] && @calculate_damage[1] == i[1]
          cal_damage = 50 * (@calculate_damage[2] / @calculate_damage[3]) * i[2]
        end
        #  calculate(i, cal_damage)
        # puts cal_damage
      end
      cal_damage
    end

    # def calculate(i, cal_damage)
    #   # cal_damage = 0
    #   if @calculate_damage[0] == i[0] && @calculate_damage[1] == i[1]
    #     cal_damage = 50 * (@calculate_damage[2] / @calculate_damage[3]) * i[2]
    #   end
    #   cal_damage
    # end
  end

  class Adjust_time
    def initialize(time)
      @time = time
    end

    def new_time
      new_minutes = 0
      new_hours = 0
      new_seconds = (@time[0][6, 2].to_i + @time[3])
      if new_seconds > 59
        new_minutes = new_seconds / 60
        new_seconds -= (new_minutes * 60)
      end
      new_minutes += (@time[0][3, 2].to_i + @time[2])
      if new_minutes > 59
        new_hours = new_minutes / 60
        new_minutes -= (new_hours * 60)
      end
      new_hours += (@time[0][0, 2].to_i + @time[1])
      new_hours -= (new_hours / 24) * 24 if new_hours > 24
      new_seconds = '0' + new_seconds.to_s if new_seconds < 10
      new_minutes = '0' + new_minutes.to_s if new_minutes < 10
      new_hours = '0' + new_hours.to_s if new_hours < 10
      new_hours.to_s + ':' + new_minutes.to_s + ':' + new_seconds.to_s
    end

    # def new_time?(new_time)
    #   new_seconds = '0' + new_seconds.to_s if new_seconds < 10
    #   new_minutes = '0' + new_minutes.to_s if new_minutes < 10
    #   new_hours = '0' + new_hours.to_s if new_hours < 10
    #   new_hours.to_s + ':' + new_minutes.to_s + ':' + new_seconds.to_s
    # end

    # def calculate_time
    #   new_minutes = 0
    #   new_hours = 0
    #   new_seconds = (@time[0][6, 2].to_i + @time[3])
    #   if new_seconds > 59
    #     new_minutes = new_seconds / 60
    #     new_seconds -= (new_minutes * 60)
    #   end
    #   new_minutes += (@time[0][3, 2].to_i + @time[2])
    #   if new_minutes > 59
    #     new_hours = new_minutes / 60
    #     new_minutes -= (new_hours * 60)
    #   end
    #   new_hours += (@time[0][0, 2].to_i + @time[1])
    #   new_hours -= (new_hours / 24) * 24 if new_hours > 24
    #   new_hours
    # end

  end

  class Armstrong
    def initialize(number)
      @number = number
    end

    def valid?
      check
    end

    private

    def check
      sum_of_its_digits == @number
    end

    def array_of_number
      @number.digits
    end

    def number_of_digits
      @number.digits.length
    end

    def sum_of_its_digits
      array_of_number.map { |a| a**number_of_digits }.sum
    end
  end

  class Allergies
    ALLERGENS = {
      1 => 'eggs',
      2 => 'peanuts',
      4 => 'shellfish',
      8 => 'strawberries',
      16 => 'tomatoes',
      32 => 'chocolate',
      64 => 'pollen',
      128 => 'cats'
    }
    def initialize(score)
      @score = score
      @score -= 256 while @score >= 256
      @i = 128
    end

    def allergic_to?(allergen)
      allergies_m.include?(allergen)
      # puts allergies_m
      # puts ('kolku e objektot allergies')
    end

    def which_allergie
      allergie = ''
      ALLERGENS.each do |key, value|
        next unless key == @i

        allergie = value
        @score -= @i
      end
      allergie
    end

    def allergies_m
      allergies1 = []
      while @score.positive?
        allergies1 << which_allergie if @score >= @i
        @i /= 2
      end
      allergies1
    end

    # def check_allergie (i1, scr1)
    #   ALLERGENS.each { |key, value|
    #     next unless key == i1
    #     allergie = value
    #     scr1 -= i
    #     # @i /= 2
    #   }
    #   allergie
    # end

    # def allergies
    #   allergies1 = []
    #   scr = @score
    #   i = 128
    #   # puts ("proveri_allergies_prazno #{allergies1}")
    #   while scr.positive?
    #     if scr >= i
    #       allergies1 = check_allergie (i, scr)
    #       # ALLERGENS.each { |key, value|
    #       #   next unless key == i
    #       #   allergies1 << value
    #       #   sc -= i
    #       #   # @i /= 2
    #       # }
    #     end
    #     i /= 2
    #   end
    #   # puts ("proveri2 #{allergies1}")

    #   allergies1
    # end
  end
end
