module Arrays
	
	def middles(arr1, arr2)
		[arr1[1], arr2[1]]
	end

	def max(arr)
		arr.each do |n|


		end
	end

	def lucky13?(arr)
		arr.each do |n|
		 return n != 1 && n != 3
		end
	end

	def repeat_separator(a,b,c)
		arr = [a, b, c]
		count = arr[2]
		string = arr[0..1].join('')
		return (string * (count - 1)) + arr[0]
	end

	
	
end