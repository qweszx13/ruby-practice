class User
  @@counter = 0

  attr_accessor :name
  attr_reader :score

  def initialize(name_from_new, score_from_new)
    @name = name_from_new
    @score = score_from_new
    @@counter += 1
  end
  # # getter
  # def name
  #   @name
  # end
  # # setter
  # def name=(new_name)
  #   @name = new_name
  # end

  def get_info
    "Name #{@name}, score #{@score} --> #{get_result}"
  end

  def self.get_info
    "Count : #{@@counter}"
  end

  private

  def get_result
    @score >= 80 ? "Pass" : "Fail"
  end
end

user1 = User.new("Jamse",70)
user2 = User.new("Jone",90)

p user1.get_info
puts user2.get_info.inspect
puts user1.name
user1.name = "Taro"
puts user1.name
puts user1.score
# user1.score = 50
puts User.get_info
# puts user1.get_result
