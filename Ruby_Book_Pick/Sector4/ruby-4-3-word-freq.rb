def words_from_string(s)
  s.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
  counts = Hash.new(0)
  word_list.each { |word| counts[word] += 1 }
  counts
end

raw_text = %{The problem breaks down into two parts. First, given some text as a string, return a list of words. That sounds like an array. Then, build a count for each distinct word. That sounds like a use for a hash---we can index it with the word and use the corresponding entry to keep a count.}

word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted_words = counts.sort_by { |key, value| value }
top_five_words = sorted_words.last(5)

puts top_five_words.map { |word, count| "#{word}: #{count}" }
puts top_five_words.map { |word| "#{word[0]}: #{word[1]}" }
