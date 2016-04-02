switch=true
pin = 1
gpio.mode(pin,gpio.OUTPUT)
gpio.write(pin,gpio.HIGH)
--print(gpio.read(pin))

tmr.alarm(1, 5000, 1, function() 
 value=adc.read(0)
 if value>=0 then 
   send(value)
 else
		
 end

 if switch==true then
   switch=false
   gpio.write(pin,gpio.HIGH)
 else
   switch=true
   gpio.write(pin,gpio.LOW)
 end
end)
function send(value)
conn=net.createConnection(net.TCP, 0)
conn:on("receive", function(conn, payload) print(payload) end )
conn:connect(80,"121.40.34.247")
conn:send("GET /updateMq5?username=qy&value="..value.." HTTP/1.1\r\nHost: zx.yearn.cc\r\n"
.."Connection: keep-alive\r\nAccept: */*\r\n\r\n")
end