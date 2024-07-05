# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  num_to_index = {}
  nums.each_with_index do |num, i|
    complement = target - num
    if num_to_index.key?(complement)
      return [num_to_index[complement], i]
    end
    num_to_index[num] = i
  end
  [-1, -1]
end

two_sum([2,7,11,15], 9)