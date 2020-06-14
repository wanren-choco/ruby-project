hoge = {:name => "ほげ", :age => 30}
fuga = {name: "ふが", age: 29}

p hoge[:name]
p fuga[:name]

hoge.each do |value|
    puts "#{value}"
end

