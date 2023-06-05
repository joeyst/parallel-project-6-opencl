
def extract_data(text)
	[text.split(" ")[18], text.split(" ")[23], text.split(" ")[29], text.split(" ")[34]].map {|string| string.to_s.strip.ljust(4)}.join(", ") 
end

lines = File.open("results.txt").readlines[2..-1]

puts "Number of Work Groups, Matrix Size, Work Elements, Giga Mults/Sec"
lines.each_slice(3) do |slice|
	puts extract_data(slice.join)
end
