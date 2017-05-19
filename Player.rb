class Player


  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end


  def do_battle(damage)
    @health_points -= damage
    if @health_points <= 0
      @lives -= 1
    end
    if @health_points <= 0
       @health_points = 10
    end
    if @lives == 0
      restart
    end
  end

  def restart
   initialize
 end
end
ronen = Player.new

puts ronen.level_up

puts ronen.collect_treasure

puts ronen.do_battle(5)
