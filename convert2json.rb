input = File.open "en.csv", "r"

output = File.open "converted.json", "w" 
output.write "{\n"

	while line = input.gets
		
		key = line.split(',')[0]
	  value = line.split(', "')[1]

	# 	puts  "#{input.lineno} #{key}: \"#{value}"
	 	output.write "#{key}: \"#{value}"	
	 end

output.write "}"
output.close
input.close

puts "Converted to json"		