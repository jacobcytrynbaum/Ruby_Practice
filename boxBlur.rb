#Given a 3x3 or larger matrix, average each cell with those surrounding it. If the matrix represents a picture, this blurs the image

#Determine if the cell is away from the edge
def center?(arr, row, col)
	return false if row == 0 || col == 0 || col == arr[row].length - 1 || row == arr.length - 1
	true
end

#Find the average of all surrounding cells plus self
def blurAverage(image, row, col)
    mid = (image[row - 1][col - 1] + image[row - 1][col] + image[row - 1][col + 1] + image[row][col - 1] + 
				image[row][col] + image[row][col + 1] + image[row + 1][col - 1] + image[row + 1][col] + 
				image[row + 1][col + 1] ) / 9
return mid
end

#Create and return the new matrix
def boxBlur(image)
if image[1].length < 3
   return image
    end
    blurred = []
	    image.each_with_index do |x, row|
	    	x.each_with_index do |y, col|
		    	if center?(image, row, col)
		    		blurred << blurAverage(image, row, col)
		    	end
		    end
	    end
return blurred.each_slice((image[0].length-2)).to_a
end
