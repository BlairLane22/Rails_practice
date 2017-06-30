module FirstsHelper

	def age
		a = 114

		if a > 18
			b = "you are old enough to drink"
		else
			b = "You are not old enough to drink"
		end
		return b
	end


	def math
		print "Enter the first x coordinate: "
		x1 = gets.to_i
		print "Enter the first y coordinate: "
		y1 = gets.to_i

		print "Enter the second x coordinate: "
		x2 = gets.to_i
		print "Enter the second y coordinate: "
		y2 = gets.to_i

		midPointX = (x1 + x2) / 2
		midPointY = (y1 + y2) / 2

		puts "The midpoints of your line segment is (#{midPointX},#{midPointY})"
	end

end
