scores = [70, 90, 80]

updated_scores = []
scores.each { |score| updated_scores << score  }
p updated_scores

updated_scores = scores.map! { |score| score + 5 }
p updated_scores
p scores

