scores = %w{ 70 90 80 65 85 77 }

filterd_scroes = scores.filter { |score| score.to_i >= 80 }
p filterd_scroes

scores.filter! { |score| score.to_i >= 80 }
p scores