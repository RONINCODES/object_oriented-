class Cat


  def initialize (name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time > 12
      "#{@meal_time-12}PM"
    elsif @meal_time == 12
      "#{@meal_time}PM"
    elsif @meal_time == 0
      "#{ @meal_time +12 }AM"
    else
      "#{@meal_time} AM"
    end
  end



  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} and I eat at #{eats_at}"
  end
end

cat1 = Cat.new("Garfield", "lasagna", 12)
cat2 = Cat.new("Dog", "Tuna", 0)
cat3 = Cat.new("Dot", "Dog Food", 18)

puts cat1.eats_at

cat1.meow
cat2.meow
cat3.meow
