class Light
  def initialize(name, number, power, color)
    @name =name
    @number =number
    @power =power
    @color =color
  end
  def to_s
    "#{@number} | #{@name} | #{@power} | #{@color}"
  end
end

def power_calc()
  def lights()
	print "How many lights of this type do you have? "
	lightnum = gets.chomp.to_i
	print "Input power consumption of 1 light (in watts): "
	watt = gets.chomp.to_i
	totalwatt = watt*lightnum
	return lightnum, totalwatt
end

totallights = 0
grandtotalwatt = 0

print "Input 120/240/etc. Service: "
service = gets.chomp.to_i

print "Do you have any lights to input? [Y/N] "
  morelights = gets.chomp.downcase

until morelights == "n"
	puts "..............................."
	templights, temptotalwatt = lights()
	totallights += templights
	grandtotalwatt += temptotalwatt
	print "Do you have any lights to input? [Y/N] " #really anything or n
morelights = gets.chomp.downcase
end

puts "..............................."
puts "You have #{totallights} lights which use #{grandtotalwatt} watts of power."
amps = Float(grandtotalwatt)/service
puts "This is equal to #{amps} amps with a #{service} service."
return nil
end

def light_tracker()
    append = 0
    append = 0+1 
    puts "...................."
    puts "What is the name of the light?"
    name = gets.chomp
    realname = name.to_s+append.to_s
    puts "...................."
    puts "How many of them are there?"
    number = gets.chomp
    puts "...................."
    puts "How much power do they draw? (In Watts)"
    power = gets.chomp
    puts "...................."
    puts "What color are they?"
    color = gets.chomp
    realname_l = Light.new("#{name}", "#{number}", "#{power}", "#{color}")
    puts "...................."
    puts realname_l.to_s
  return realname.to_s
end


###################LAYER-OF-ABSTRACTION!!!!!!!!####################
puts "Welcome to Power Calculator MKII!!"
puts "Please select a command from the following: "
puts "  1: The Original Power Calculator"
puts "  2: Light Tracker: Like Spreadsheets but BETTER!!1! (worse) "
puts "  3: SOMETHING ELSE"
puts "  4: SAMPLE TEXT"

print "Your selection: "
selection = gets.chomp

if selection == "1"
  power_calc()
  
elsif selection == "2"
  go = "BUTTS"
  list = Array.new
  until go == "n"
    list << light_tracker()
    puts "Do you want to add another light? [Y/N]"
    go = gets.chomp.downcase
  end
  puts list.to_s
  puts "Do you want to view any light details? [Y/N]"
  input = gets.chomp.downcase
  if input == "y"
  puts "SOMEDAY I'LL WRITRE THIS ROUTINE"
  else
  puts "GOODBYE"
  end


elsif selection == "3"
  puts "NOT A VALID SELECTION!"

elsif selection == "4"
  puts "BUTTS"
end