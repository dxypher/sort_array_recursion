original = ['hello', 'goodbye', 'alpha', 'beta', 'delta', 'omega']

def sort_array(argument)
	recursive_sort_array(argument, [])
end

def recursive_sort_array(unsorted_list, sorted_list)
	if unsorted_list.length <= 0
		return sorted_list
	end
	still_unsorted = []
	smallest = unsorted_list.pop

	unsorted_list.each do |test_object|
		if smallest < test_object
			still_unsorted << test_object
		else
			still_unsorted << smallest
			smallest = test_object
		end
	end
	sorted_list << smallest
	recursive_sort_array(still_unsorted, sorted_list)
end

puts sort_array(original)