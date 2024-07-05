scores = { english: 80, math: 70 }

p scores

scores[:english] = 90
p scores[:english]

scores[:physics] = 50

scores.delete(:math)
p scores
