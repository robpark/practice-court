def compress_ranges(nums)
  return '' if nums.empty?
  return nums[0].to_s if nums.size == 1

  result = []
  range_start = nums[0]
  range_end = range_start
  for num in nums do
    if num == range_start
      # range_end = range_start
      next
    end
    if num == range_end + 1
      range_end = num
    elsif range_start == range_end
      result << range_start
      range_start = num
      range_end = num
    end
  end
  if range_end > range_start
    if range_end == range_start + 1
      result << range_start << range_end
    else
      result << (range_start..range_end)
    end
  else
    result << range_start
  end

  string_result  = result.join ','
  string_result.sub('..', '-')
end