def compress_ranges(nums)
  return '' if nums.empty?
  return nums[0].to_s if nums.size == 1

  # normalize
  normalized = nums.sort.uniq

  # ranges
  ranges = []
  i = 0
  while i < normalized.size
    start = i
    j = i
    while j + 1 < normalized.size && normalized[j] + 1 == normalized[j + 1]
      j += 1
    end
    ranges << [i, j]
    i = j + 1
  end

  result = []
  ranges.each do |range|
    if normalized[range.last] == normalized[range.first]
      result << normalized[range.first]
    elsif normalized[range.last] == normalized[range.first] + 1
      result << normalized[range.first].to_s + ',' + normalized[range.last].to_s
    else
      result << normalized[range.first].to_s + '-' + normalized[range.last].to_s
    end
  end

  # format
  # normalized.join(  ',')
  result.join(',')
end