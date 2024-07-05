bo = lambda { |param| puts "You called me with #{param}" }
bo.call 99
bo.call "cat"

def n_times(thing)
  lambda {|n| thing * n }
end

p1 = n_times(23)
p p1.call(3) # => 69
p p1.call(4) # => 92
p2 = n_times("Hello ")
p p2.call(3) # => "Hello Hello Hello "

#function ntimes(thing){
#   function call(num)=>{
#     thing * num
#   }
# }

def power_proc_generator
  value = 1
  lambda { value += value }
end

power_proc = power_proc_generator
puts power_proc.call
puts power_proc.call
puts power_proc.call

proc1 = -> arg { puts "In proc1 with #{arg}" }
proc2 = -> arg,arg2 { puts "In proc2 with #{arg} and #{arg2}" }

proc1.call "ant"
proc2.call "ant", "bee"

def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_if(val < 2,
        -> {puts "#{val} is small"},
        -> {puts "#{val} is big"})
end

def my_while(cond, &body)
  while cond.call
    body.call
  end
end

a = 0

my_while -> { a < 10 } do
  puts a
  a += 2
end

proc1 = lambda do |a,*b,&block|
  puts "a = #{a}"
  puts "b = #{b}"
  block.call
end

proc1.call(1,2,3,4) { puts "in block1"}

proc2 = -> a, *b, &block do
  puts "a = #{a}"
  puts "b = #{b}"
  block.call
end

proc2.call(1,2,3,4) { puts "in block2"}
