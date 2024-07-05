scores = [70, 90, 80]
scores << 85
more_scores = [40, 50]
scores = scores + more_scores
scores += more_scores
scores.insert(1, 75)
scores.delete_at(0)

p scores
