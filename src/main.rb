#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

puts "Ruby 笔记"

puts "Hello World!"
puts "Hello DuGu Ruby!"

puts "这是主 Ruby 程序"
 
BEGIN {
   puts "初始化 Ruby 程序"
}

puts "这是主 Ruby 程序"
 
END {
   puts "停止 Ruby 程序"
}
BEGIN {
   puts "初始化 Ruby 程序"
}

# Ruby多行字符串

print <<EOF
    这是第一种方式创建here document。
    多行字符串。
EOF
 
print <<"EOF";                # 与上面相同
    这是第二种方式创建here document。
    多行字符串。
EOF
 
print <<`EOC`                 # 执行命令
    echo hi there
    echo lo there
EOC
 
print <<"foo", <<"bar"          # 您可以把它们进行堆叠
    I said foo.
foo
    I said bar.
bar

=begin
注释行1
注释行2
=end

# Ruby 单行注释

puts 'escape using "\\"';
puts 'That\'s right';
puts "相乘 : #{24*60*60}";

ary = [ "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
    puts i
end

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
    print key, " is ", value, "\n"
end

class Customer
    @@no_of_customers = 0
    def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
    end
    def display_details()
        puts "Customer id #@cust_id"
        puts "Customer name #@cust_name"
        puts "Customer address #@cust_addr"
    end
    def total_no_of_customers()
        @@no_of_customers += 1
        puts "Total number of customers: #@@no_of_customers"
    end
end

cust1 = Customer. new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer. new("2", "Poul", "New Empire road, Khandala")

cust1.total_no_of_customers

class Sample
    def hello
        puts "Hello Ruby!"
    end
end

obj = Sample. new
obj.hello

a, b, c = 10, 20, 30
puts a, b
