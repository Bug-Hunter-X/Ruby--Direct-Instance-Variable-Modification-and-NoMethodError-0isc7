```ruby
class MyClass
  attr_reader :value

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

#Attempting to access a non-existent method using respond_to?
method_name = :non_existent_method

if my_object.respond_to?(method_name)
  puts my_object.send(method_name)
else
  puts "Method '#{method_name}' not found."
end
```