# Run pogpio damon before this file: sudo pigpiod
require "pigpio"
include Pigpio::Constant

pi = Pigpio.new
puts "#{pi.inspect}"
unless pi.connect
   puts "Not Connected"
   exit -1
end

led = pi.gpio(21)
led.mode = PI_OUTPUT
led.pud = PI_PUD_OFF
led.write 1
puts "Moter Started....."
state = led.read
puts "GPIO State before closing: #{state}"
sleep 10
led.write 0
puts "Moter closed"
state = led.read
puts "GPIO State after closing: #{state}"
pi.stop
