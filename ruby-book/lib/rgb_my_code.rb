def to_hex(r, g, b)
	ret = "#"
	rgb = [r, g, b]
	rgb.each do |x|
		ret += x.to_s(16).rjust(2, '0')
	end
	ret
end

def to_ints(hex)
	r = hex[1, 2]
	g = hex[3, 2]
	b = hex[5, 2]
	[r, g, b].map { |x| x.hex }
end
