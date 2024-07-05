scores = [70, 90, 80]

p scores.empty? # false
p scores.include?(90) # true
p scores.index(80) #2
p scores.index(40) #nil

sorted_scores = scores.sort
p sorted_scores
p scores

scores.sort!
p scores

scores.reverse!
p scores

scores.shuffle!
p scores

