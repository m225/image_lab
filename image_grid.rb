require "./image_array.rb"

img = ImageArray.new("./bumblebee.jpg")

img.rows.times do |i|
	img.columns.times do |j|
		if (j < img.columns/2)
			if (i < img.rows/2)
				img[i][j].red = 0
				img[i][j].green = 0
			else
				img[i][j].blue = 0
				img[i][j].green = 0
			end
		else			
			if (i < img.rows/2)
				img[i][j].red = 0
				img[i][j].blue = 0
			else
				img[i][j].green = 0
				purple = (img[i][j].red + img[i][j].blue)/2
				img[i][j].red = purple
				img[i][j].blue = purple

			end
		end		
	end
end

img.write("./bumblebee_grid.jpg")
