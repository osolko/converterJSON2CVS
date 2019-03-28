input = File.open "en.json", "r"

output = File.open "en.csv", "w" 
	
	while line = input.gets

		key = line.split(':')[0]
	  value = line.split(': ')[1]

	   # puts  "#{input.lineno} - KEY: #{key}   TEXT: #{value} "
	   output.write "#{key}, #{value}" if not line.start_with?("{") || line.start_with?("}")	
	 end

output.close
input.close

puts "Converted to CVS"		