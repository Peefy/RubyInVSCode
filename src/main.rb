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
    这是第一种方式创建here document 。
    多行字符串。
EOF
 
print <<"EOF";                # 与上面相同
    这是第二种方式创建here document 。
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

