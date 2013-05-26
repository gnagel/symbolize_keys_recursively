symbolize_keys_recursively
==========================

Recursively symbolize keys in Hashes and Arrays

```ruby
car = {"make" => "Subaru", "model" => "Forester"}
car.symbolize_keys_recursively!

puts car.inspect # {:make => "...", :model => "..."}

```
