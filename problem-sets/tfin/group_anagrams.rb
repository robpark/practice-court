def group_anagrams(words)
  return [] if words.empty?
  return [words] if words.size == 1

  sets = {}

  # char_sets = words.map do |word|
  #   word.chars.sort
  # end
  # char_sets.uniq!

  words.each do |word|
    key = word.downcase.chars.sort
    sets[key] = [] unless sets.has_key?(key)
    sets[key] << word
  end

  sets.values
end