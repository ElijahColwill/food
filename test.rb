require './food'
require './meal'
require './day'
require './month'
require './activity'
require './exersize'

scrambled_eggs = Food.new("Scrambled Eggs", "1 egg", 100)
bacon = Food.new("Bacon", "3 slices", 100)
cereal = Food.new("Cereal", "1 oz", 135)
milk = Food.new("Milk", "1 cup", 125)
orange_juice = Food.new("Orange Juice", "1 cup", 110)

breakfast = Meal.new("Breakfast")
breakfast.add_food(scrambled_eggs, 3)
breakfast.add_food(bacon, 2)
breakfast.add_food(cereal, 2)
breakfast.add_food(milk, 1)
breakfast.add_food(orange_juice, 1)

sandwich = Food.new("Roast Beef Sandwich", "1 sandwich", 345)
salad = Food.new("Salad", "1 cup", 11)
salad_dressing = Food.new("Salad Dressing", "1 tbsp", 145)
chicken_soup = Food.new("Chicken Noodle Soup", "1 cup", 75)
sweet_tea = Food.new("Sweet Tea", "8 oz", 100)

lunch = Meal.new("Lunch")
lunch.add_food(sandwich, 1)
lunch.add_food(salad, 2)
lunch.add_food(salad_dressing, 3)
lunch.add_food(chicken_soup, 1.5)
lunch.add_food(sweet_tea, 2)

broccoli = Food.new("Broccoli", "1 cup", 40)
steak = Food.new("Steak", "5 oz", 240)
potatos = Food.new("Mashed potatos", "1 cup", 255)
gravy = Food.new("Gravy", "1 cup", 125)
rice = Food.new("Rice", "1 cup", 230)
ice_cream = Food.new("Ice Cream", "1 cup", 270)
soda = Food.new("Soda", "12 oz", 180)

dinner = Meal.new("Dinner")
dinner.add_food(broccoli, 1)
dinner.add_food(steak, 1.6)
dinner.add_food(potatos, 1.5)
dinner.add_food(gravy, 0.25)
dinner.add_food(rice, 1)
dinner.add_food(ice_cream, 1)
dinner.add_food(soda, 1)

chips = Food.new("Chips", "10 chips", 100)
candy = Food.new("Fruit Snacks", "1 bag", 89)
trail_mix = Food.new("Trail Mix", "1 cup", 693)

snacks = Meal.new("Snacks")
snacks.add_food(chips, 3)
snacks.add_food(candy, 1)
snacks.add_food(trail_mix, 0.2)

puts "---"
puts breakfast
puts "Breakfast calories: #{breakfast.calories}"
puts "---"
puts lunch
puts "Lunch calories: #{lunch.calories}"
puts "---"
puts dinner
puts "Dinner calories: #{dinner.calories}"
puts "---"
puts snacks
puts "Snacks calories: #{snacks.calories}"
puts "---"

day1 = Day.new(2000)
day1.add_meal(breakfast)
day1.add_meal(lunch)
day1.add_meal(dinner)
day1.add_meal(snacks)

month1 = Month.new(day1.calories, 2000)

puts "Meeting daily calorie goal?"
day1_met_goal = day1.met_goal? 
puts day1_met_goal
puts "---"
puts "Weight change in a month:"
puts month1.weight_change

jogging = Activity.new("Jogging", 300, 0.5)
yoga = Activity.new("Yoga", 240, 1.0/3)
weightlifting = Activity.new("Weight Lifting", 266, 0.75)

exersize1 = Exersize.new()
exersize1.add_exersize(jogging)
exersize1.add_exersize(yoga)
exersize1.add_exersize(weightlifting)
calorie_goal = exersize1.total_calories + 2000

day2 = Day.new(calorie_goal)
day2.add_meal(breakfast)
day2.add_meal(lunch)
day2.add_meal(dinner)
day2.add_meal(snacks)

month2 = Month.new(day2.calories, calorie_goal)

puts "---"
puts "With exersize, Big Dan's new calorie goal is #{calorie_goal}."
puts "Meeting daily calorie goal with exersize?"
day2_met_goal = day2.met_goal? 
puts day2_met_goal
puts "---"
puts "Weight change in a month with exersize:"
puts month2.weight_change







