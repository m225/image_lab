require "./image_array.rb"

puts "What is the file path? (the file must be in the same directory, but you can also use the default image 'default.jpg')"
file_path = gets.chomp

img = ImageArray.new(file_path)

if file_path == ''
	file_path = './default.jpg'
end

# open an image array at the given file path

	puts "What Effect? (type blue tint, inverse, mystery, or random noise.) "
	effect = gets.chomp
	if effect == "blue tint"
		img.each do |pixelrow|
			pixelrow.each do |pixel|
				pixel.blue = img.max_intensity
				end
			end
	elsif
		 effect == "inverse"
		img.each do |row|
			row.each do |pixel|
				pixel.blue = img.max_intensity - pixel.blue
				pixel.green = img.max_intensity - pixel.green
				pixel.red = img.max_intensity - pixel.red
				end
			end

	elsif 
		effect == "mystery"
		img.each do |row|
			row.each do |pixel|
				pixel_gray = (pixel.red + pixel.blue + pixel.green)/3
					pixel.red = pixel_gray
					pixel.blue = pixel_gray + (pixel.blue * 1.1)
					pixel.green = pixel_gray + (pixel.green * 1.1)
 
			end
		end
	elsif
		effect == "random noise"
			img.each do |row|
				row.each do |pixel|
					pixel.red = rand(pixel.red)
					pixel.green = rand(pixel.green)
					pixel.blue = rand(pixel.blue)
				end
			end	
   	else
        puts "Not a valid effect!"
        end	

	puts "What do you want the edited photo file to be called?"
	image_name = gets.chomp
	img.write image_name 
			
puts "Now, copy the image file: " + image_name.to_s + "to the public html and then check it for your edited image!"


