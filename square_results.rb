
lines = File.open("results.csv").readlines
puts lines[0]
lines[1..-1].each do |line|
	line = line.split(",")
	puts (line[0].to_i ** 2).to_s + ", " + line[1] + ", " + (line[2].to_i ** 2).to_s + ", " + line[3]
end
