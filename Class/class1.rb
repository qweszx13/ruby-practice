class User
  def get_info
    "user name and score here"
  end
end

user1 = User.new
user2 = User.new
puts user1.get_info
puts user2.get_info
