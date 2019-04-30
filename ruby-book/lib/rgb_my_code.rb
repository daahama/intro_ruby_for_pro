def to_hex(r, g, b)
	ret = "#"
	rgb = [r, g, b]
	rgb.each do |x|
		ret += x.to_s(16).rjust(2, '0')
	end
	ret
end
