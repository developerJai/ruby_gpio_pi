# Run pogpio damon before this file: sudo pigpiod
require "pigpio"
include Pigpio::Constant

pi = Pigpio.new
puts "#{pi.inspect}"
unless pi.connect
   puts "Not Connected"
   exit -1
end

led = pi.gpio(26)
led.mode = PI_OUTPUT
led.pud = PI_PUD_OFF
6.times do |i|
  led.write 1
  puts "on #{i+1}"
  sleep 1
  led.write 0
  puts "off #{i+1}"
  sleep 1
end
# led.write 1
pi.stop
