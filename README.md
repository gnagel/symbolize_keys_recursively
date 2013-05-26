symbolize_keys_recursively
==========================

Recursively symbolize keys in Hashes and Arrays

```ruby
car = {"make" => "Subaru", "model" => "Forester"}
car.symbolize_keys_recursively!

puts car.inspect # {:make => "Subaru", :model => "Forester"}

cars = [
	{"make" => "Subaru", "model" => "Forester"},
	{"make" => "Audi", "model" => "Q7"}
]
cars.symbolize_keys_recursively!
puts cars.inspect # [{:make => "Subaru", :model => "Forester"}, {:make => "Audi", :model => "Q7"}]

```
