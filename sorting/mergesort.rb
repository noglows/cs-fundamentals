def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	# split the list in half
	# merge sort each half
	# combine the sorted halves
	if a.length == 0 || a.length == 1
		return a
	end
	left, right = split_array(a)
	left = mergesort(left)
	right = mergesort(right)
	combine(left,right)
end

def split_array(a)
	# find the middle
  	# take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
	mid = a.length/2
	left = a[0...mid]
	right = a[mid..-1]
	return left, right

end

# precondition: a and b are sorted
def combine(a, b)
	# create a results array
	results = []
	# counters pointing to the index of the smallest elements in each array
	l = 0
	r = 0
	# check that we have elements to compare
		# push the smaller element onto the result array
	until results.length == a.length + b.length
		if !a[l].nil? && !b[r].nil?
			if a[l] <= b[r]
				results.push(a[l])
				l += 1
			else
				results.push(b[r])
				r += 1
			end
	# if there are elements left over in a, move them to result
	# if there are elements left over in b, move them to result
		elsif !a[l].nil?
			results.push(a[l])
			l += 1
		else
			results.push(b[r])
			r += 1
		end
	end
	return results
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
