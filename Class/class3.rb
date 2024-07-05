module Loggable
  def show_log
    puts "Instance created: #{self.class}"
  end
end

class Score
  include Loggable # -> Instance Method
  #extend Loggable -> Class Method

  def initialize(subject, score)
    @subject = subject
    @score = score
    show_log
  end

  def get_info
    "#{@subject} score: #{@score} --> #{get_result}"
  end

  private

  def get_result
    @score >= 80 ? "Pass" : "Fail"
  end
end

class MathScore < Score
  def initialize(score)
    super("Math", score)
  end

  def get_result
    @score >= 70 ? "Pass" : "Fail"
  end
end

class EnglishScore < Score
  def initialize(score)
    super("English", score)
  end

  def get_result
    @score >= 90 ? "Pass" : "Fail"
  end
end

class User
  include Loggable
  attr_reader :name, :score

  def initialize(name_from_new, score_from_new)
    @name = name_from_new
    @score = score_from_new
    show_log
  end

  def get_info
    "Name: #{@name}Score: #{@score.get_info}"
  end
end

user1 = User.new("Jamse",MathScore.new(75))
user2 = User.new("Jone",EnglishScore.new(88))

p user1.get_info
p user2.get_info
