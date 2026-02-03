def top_k_frequent(arr, k)
  counts = {}
  arr.each do |item|
    counts[item] = 0 unless counts.has_key? item
    counts[item] += 1
  end
  # sorted_array_asc = my_array.sort_by { |hash| hash[:time] }
  sorted = counts.keys.sort_by { |hash| -counts[hash] }
  # sorted = counts.keys.sort
  sorted[0, k]
end