class Parent
end
class Child < Parent
end

p Child.superclass
p Parent.superclass
p Object.superclass
p BasicObject.superclass.inspect

class Person
  def initialize(name)
    @name = name
  end

  def to_s
    "Person named #{@name}"
  end
end

p = Person.new("Michael")
puts p
