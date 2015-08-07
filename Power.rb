#Ruby program for calculating power with many lights with the same power draw
#Maybe I'll add support for differing power later...

print "Input Number of Lights: "
lights = gets.chomp
print "Input Power in Watts per Light: "
energy = gets.chomp
print "Input 120/240 Service: "
service = gets.chomp

totalwatt = Float(energy)*Float(lights)

amps = Float(totalwatt)/Float(service)

puts "#{lights} lights will use #{totalwatt} watts of power, or #{amps} amps on a #{service} service"
