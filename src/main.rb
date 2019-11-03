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

x = 1
if x > 2
   puts "x 大于 2"
elsif x <= 2 and x!=0
   puts "x 是 1"
else
   puts "无法得知 x 的值"
end

$var =  1
print "1 -- 这一行输出\n" if $var
print "2 -- 这一行不输出\n" unless $var
 
$var = false
print "3 -- 这一行输出\n" unless $var

$age =  5
case $age
when 0 .. 2
    puts "婴儿"
when 3 .. 6
    puts "小孩"
when 7 .. 12
    puts "child"
when 13 .. 18
    puts "少年"
else
    puts "其他年龄段的"
end

foo = false
bar = true
quu = false
 
case
when foo then puts 'foo is true'
when bar then puts 'bar is true'
when quu then puts 'quu is true'
end
# 显示 "bar is true"

$i = 0
$num = 5
 
while $i < $num  do
   puts("在循环语句中 i = #$i" )
   $i +=1
end

def test
    yield 5
    puts "在test方法内"
    yield 100
end
test {|i| puts "在块#{i}内"}

module A
    def a1
    end
    def a2
    end
 end
 module B
    def b1
    end
    def b2
    end
 end
  
 class Sample
 include A
 include B
    def s1
    end
 end
  
 samp=Sample.new
 samp.a1
 samp.a2
 samp.b1
 samp.b2
 samp.s1
