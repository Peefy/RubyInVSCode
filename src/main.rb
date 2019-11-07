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
  
samp = Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1

"abc \0\0abc \0\0".unpack('A6Z6')   #=> ["abc", "abc "]
"abc \0\0".unpack('a3a3')           #=> ["abc", " \000\000"]
"abc \0abc \0".unpack('Z*Z*')       #=> ["abc ", "abc "]
"aa".unpack('b8B8')                 #=> ["10000110", "01100001"]
"aaa".unpack('h2H2c')               #=> ["16", "61", 97]
"\xfe\xff\xfe\xff".unpack('sS')     #=> [-2, 65534]
"now=20is".unpack('M*')             #=> ["now is"]
"whole".unpack('xax2aX2aX1aX2a')    #=> ["h", "e", "l", "l", "o"]

names = Array.new(20)
puts names.size
puts names.length

macnames = Array.new(4, "mac")
puts "#{macnames}"

nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

nums = Array.[](1, 2, 3, 4, 5)
nums = Array([1, 2, 3, 4, 5])
digits = Array(0..9)
puts "#{digits}"

digits = Array(0..9)
num = digits.at(6)
puts "#{num}"

a = [ "a", "b", "c" ]
n = [ 65, 66, 67 ]
puts a.pack("A3A3A3")   #=> "a  b  c  "
puts a.pack("a3a3a3")   #=> "a\000\000b\000\000c\000\000"
puts n.pack("ccc")      #=> "ABC"

ary = [1, 2, 3, 4, 5]
ary.each do |i|
   puts i
end

a = [1,2,3,4,5]
b = Array.new
b = a.collect{ |x|x }
puts b

class Box
    # 构造函数
    def initialize(w,h)
       @width, @height = w, h
    end
  
    # 访问器方法
    def getWidth
       @width
    end
  
    def getHeight
       @height
    end

   # 设置器方法
    def setWidth=(value)
        @width = value
    end
    def setHeight=(value)
        @height = value
    end
    # 定义 to_s 方法
    def to_s
        "(w:#@width,h:#@height)"  # 对象的字符串格式
    end

end
  
# 创建对象，初始化盒子的高度与宽度
box = Box.new(10, 20)
  
# 使用访问器方法
x = box.getWidth()
y = box.getHeight()
  
puts "盒子宽度 : #{x}"
puts "盒子高度 : #{y}"

line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";
 
if ( line1 =~ /Cats(.*)/ )
  puts "Line1 contains Cats"
end
if ( line2 =~ /Cats(.*)/ )
  puts "Line2 contains  Dogs"
end

phone = "138-3453-1111 #这是一个电话号码"
 
# 删除 Ruby 的注释
phone = phone.sub!(/#.*$/, "")   
puts "电话号码 : #{phone}"
 
# 移除数字以外的其他字符
phone = phone.gsub!(/\D/, "")    
puts "电话号码 : #{phone}"

