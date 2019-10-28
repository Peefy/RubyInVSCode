
# Ruby 笔记

## Ruby 简介

Ruby是一种纯粹的面向对象编程语言。它由日本的松本行弘（まつもとゆきひろ/Yukihiro Matsumoto）创建于1993年。

## Ruby 特征

* Ruby 是开源的，在 Web 上免费提供，但需要一个许可证。
* Ruby 是一种通用的、解释的编程语言。
* Ruby 是一种真正的面向对象编程语言。
* Ruby 是一种类似于 Python 和 Perl 的服务器端脚本语言。
* Ruby 可以用来编写通用网关接口（CGI）脚本。
* Ruby 可以被嵌入到超文本标记语言（HTML）。
* Ruby 语法简单，这使得新的开发人员能够快速轻松地学习 Ruby。
* Ruby 与 C++ 和 Perl 等许多编程语言有着类似的语法。
* Ruby 可扩展性强，用 Ruby 编写的大程序易于维护。
* Ruby 可用于开发的 Internet 和 Intranet 应用程序。
* Ruby 可以安装在 Windows 和 POSIX 环境中。
* Ruby 支持许多 GUI 工具，比如 Tcl/Tk、GTK 和 OpenGL。
* Ruby 可以很容易地连接到 DB2、MySQL、Oracle 和 Sybase。
* Ruby 有丰富的内置函数，可以直接在 Ruby 脚本中使用。

## Ruby语法

Ruby 文件扩展名都是 **.rb** 或者 **.ru**

*Ruby 程序中的空白*-在 Ruby 代码中的空白字符，如空格和制表符一般会被忽略，除非当它们出现在字符串中时才不会被忽略。然而，有时候它们用于解释模棱两可的语句。当启用 -w 选项时，这种解释会产生警告。

*Ruby 程序中的行尾*-Ruby 把分号和换行符解释为语句的结尾。但是，如果 Ruby 在行尾遇到运算符，比如 +、- 或反斜杠，它们表示一个语句的延续。

*Ruby 标识符*-标识符是变量、常量和方法的名称。Ruby 标识符是大小写敏感的。这意味着 Ram 和 RAM 在 Ruby 中是两个不同的标识符。Ruby 标识符的名称可以包含字母、数字和下划线字符（ _ ）。

## Ruby保留字

下表列出了 Ruby 中的保留字。这些保留字不能作为常量或变量的名称。但是，它们可以作为方法名。

保留字|保留字|保留字|保留字
-|-|-|-
BEGIN|	do|	next|	then
END|	else|	nil|	true
alias|	elsif|	not|	undef
and|	end|	or|	unless
begin|	ensure|	redo|	until
break|	false|	rescue|	when
case|	for|	retry|	while
class|	if|	return|	while
def|	in|	self|	\_\_FILE\_\_
defined?|	module|	super|	\_\_LINE\_\_

**Ruby 中的 Here Document**

"Here Document" 是指建立多行字符串。在 << 之后，您可以指定一个字符串或标识符来终止字符串，且当前行之后直到终止符为止的所有行是字符串的值。
如果终止符用引号括起，引号的类型决定了面向行的字符串类型。请注意<< 和终止符之间必须没有空格。
下面是不同的实例：

```ruby
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
```

**Ruby的BEGIN 语句**

```ruby
puts "这是主 Ruby 程序"
 
BEGIN {
   puts "初始化 Ruby 程序"
}
```

**Ruby的BEGIN 语句**

```ruby
#!/usr/bin/ruby
 
puts "这是主 Ruby 程序"
 
END {
   puts "停止 Ruby 程序"
}
BEGIN {
   puts "初始化 Ruby 程序"
}
```

**Ruby 注释**

注释会对 Ruby 解释器隐藏一行，或者一行的一部分，或者若干行。可以在行首使用字符（ # ）：

```ruby
name = "Madisetti" # 这也是注释
```

下面是另一种形式。这种块注释会对解释器隐藏 =begin/=end 之间的行：

```ruby
=begin
注释行1
注释行2
=end
```

**Ruby数据类型**

Ruby支持的类型包括基本的**Number**、**String**、**Ranges**、**Symbols**，以及**true**、**false**和**nil**这几个特殊值，同时还有两种重要的数据结构**Array**和**Hash**

**整型(Integer)**

整型分两种，如果在31位以内（四字节），那为`Fixnum`实例。如果超过，即为`Bignum`实例。

整数范围从 -2^30 到 2^30-1，在这个范围内的整数是类 `Fixnum` 的对象， 当整数值大于或等于2的30次方时（ -2^62 到 2^62-1），会自动转化为 `Bignum` 类型。

可以在整数前使用一个可选的前导符号，一个可选的基础指标（`0` 对应 `octal`，`0x` 对应 `hex`，`0b` 对应 `binary`），后跟一串数字。下划线字符在数字字符串中被忽略。

您可以获取一个 ASCII 字符或一个用问号标记的转义序列的整数值。

```ruby
123                  # Fixnum 十进制
1_234                # Fixnum 带有下划线的十进制
-500                 # 负的 Fixnum
0377                 # 八进制
0xff                 # 十六进制
0b1011               # 二进制
"a".ord              # "a" 的字符编码
?\n                  # 换行符（0x0a）的编码
12345678901234567890 # 大数
 
#整型 Integer 以下是一些整型字面量 
#字面量（literal）：代码中能见到的值，数值，bool值，字符串等都叫字面量 
#如以下的0,1_000_000,0xa等 
a1=0 
 
#带千分符的整型 
a2=1_000_000 
 
#其它进制的表示 
a3=0xa 
puts a1,a2 
puts a3 
 
#puts print 都是向控制台打印字符，其中puts带回车换行符 
=begin 
这是注释，称作：嵌入式文档注释 
类似C#中的/**/ 
=end
```

**浮点型**

Ruby 支持浮点数。它们是带有小数的数字。浮点数是类 Float 的对象，且可以是下列中任意一个。

```ruby
123.4                # 浮点值
1.0e6                # 科学记数法
4E20                 # 不是必需的
4e+20                # 指数前的符号
 
#浮点型 
f1=0.0 
f2=2.1 
f3=1000000.1 
puts f3
```

**算术操作**

加减乘除操作符：+-*/；指数操作符为**

指数不必是整数，例如

```ruby
#指数算术 
puts 2**(1/4)#1与4的商为0，然后2的0次方为1 
puts 16**(1/4.0)#1与4.0的商为0.25（四分之一），然后开四次方根
```

**字符串类型**

Ruby 字符串简单地说是一个 8 位字节序列，它们是类 String 的对象。

双引号标记的字符串允许替换和使用反斜线符号，单引号标记的字符串不允许替换，且只允许使用 \\\\ 和 \\' 两个反斜线符号。

```ruby
#!/usr/bin/ruby -w
 
puts 'escape using "\\"';
puts 'That\'s right';
```

可以使用序列 #{ expr } 替换任意 Ruby 表达式的值为一个字符串。在这里，expr 可以是任意的 Ruby 表达式。

```ruby
puts "相乘 : #{24*60*60}";
```

**反斜线符号**

符号|表示的字符
-|-
\\n	|换行符 (0x0a)
\\r	|回车符 (0x0d)
\\f	|换页符 (0x0c)
\\b	|退格键 (0x08)
\\a	|报警符 Bell (0x07)
\\e	|转义符 (0x1b)
\\s	|空格符 (0x20)
\\nnn	|八进制表示法 (n 是 0-7)
\\xnn	|十六进制表示法 (n 是 0-9、a-f 或 A-F)
\\cx, \\C-x	|Control-x
\\M-x	|Meta-x (c | 0x80)
\\M-\\C-x	|Meta-Control-x
\\x	|字符 x

**Ruby数组**

数组字面量通过[]中以逗号分隔定义，且支持range定义。

* 数组通过[]索引访问
* 通过赋值操作插入、删除、替换元素
* 通过+，－号进行合并和删除元素，且集合做为新集合出现
* 通过<<号向原数据追加元素
* 通过*号重复数组元素
* 通过｜和&符号做并集和交集操作（注意顺序）

```ruby
ary = [ "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
    puts i
end
```

**Ruby哈希类型**

Ruby 哈希是在大括号内放置一系列键/值对，键和值之间使用逗号和序列 => 分隔。尾部的逗号会被忽略。

```ruby
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
    print key, " is ", value, "\n"
end
```

**Ruby范围类型**

一个范围表示一个区间。

范围是通过设置一个开始值和一个结束值来表示。范围可使用 s..e 和 s...e 来构造，或者通过 Range.new 来构造。
使用 .. 构造的范围从开始值运行到结束值（包含结束值）。使用 ... 构造的范围从开始值运行到结束值（不包含结束值）。当作为一个迭代器使用时，范围会返回序列中的每个值。

范围 (1..5) 意味着它包含值 1, 2, 3, 4, 5，范围 (1...5) 意味着它包含值 1, 2, 3, 4 。

```ruby
(10..15).each do |n|
    print n, ' '
end
```

**Ruby类和对象**

Ruby是一种完美的面向对象的编程语言。面向对象编程语言的特性包括：

* 数据封装
* 数据抽象
* 多态性
* 继承

在Ruby中，类总是以关键字class开始，后面跟类的名称。类名的首字母应该大写。类Customer如下所示：

```ruby
class Customer
end
```

**Ruby类中的变量**

* **局部变量**-局部变量是在方法中定义的变量。局部变量在方法外是不可用的。局部变量以小写字母或\_开始
* **实例变量**-实例变量可以跨任何特性的实例或对象中的方法使用。这意味着，实例变量可以从对象到对象的改变。实例变量在变量名之前放置符号(@)
* **类变量**-类变量可以跨不同的对象使用。类变量属于类，且类是一个属性。类变量在变量名之前放置符号(@@)
* **全局变量**-类变量不能跨类使用，如果想要一个可以跨类使用的变量，需要定义全局变量。全局变量总是以美元符号($)开始

```ruby
class Customer
    @@no_of_customers = 0
end
```

**在Ruby中使用new方法创建对象**

对象是类的实例。在Ruby中可以使用类的方法new创建对象，方法`new`是一种独特的方法，在Ruby库中预定义，`new`方法属于类方法。

```ruby
cust1 = Customer. new
cust2 = Customer. new
```

上述代码中，cust1和cust2是两个对象的名称。对象名称后跟着等号(=),等号后面跟着类名，然后是点运算符和关键字`new`

**自定义方法来创建Ruby**

可以给方法`new`传递参数，这些参数可用于初始化类变量。当想要声明带参数的`new`方法时，需要在创建类的同时声明方法`initialize`。`initialize`方法是一种特殊类型的方法，将在参数调用带参数的类型的`new`方法时执行。

```ruby
class Customer
    @@no_of_customers = 0
    def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
    end
end
```

```ruby
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
```

**Ruby类中的成员函数**

在Ruby中，函数被称为方法。类中的每个方法是以关键字`def`开始，后跟方法名。方法名总是以**小写字母**开头。在Ruby中，可以使用关键字`end`来结束一个方法

```ruby
class Sample
    def hello
        puts "Hello Ruby!"
    end
end

obj = Sample. new
obj.hello
```

```ruby
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
```

上述代码第一个方法`display_details`方法包含了三个`puts`语句，显示了客户ID、客户名字和客户地址。其中，`puts`语句将在一个单行上显示实例变量的文本和值时，需要在`puts`语句的变量名前面放置符号(`#`)。文本和带有符号(`#`)的实例变量应使用双引号标记。

第二个方法,`total_no_of_customers`包含了类变量`@@no_of_customers += 1`在每次调用方法`total_no_of_customers`时，把变量`no_of_customers`加1。通过这种方式，将得到类变量中的客户总数量。

**Ruby变量**

变量是持有可被任何程序使用的任何数据的存储位置。

Ruby支持五种类型的变量。

* 一般小写字母、下划线开头：变量(Variable)
* `$`开头：全局变量(Global variable)
* `@`开头：实例变量(Instance variable)
* `@@`开头：类变量(Class variable)类变量被共享在整个继承链中
* 大写字母开头：常数(Constant)

**Ruby全局变量**

全局变量以`$`开头。未初始化的全局变量的值为`nil`，在使用`-w`选项后，会产生警告。给全局变量赋值会改变全局状态，所以不建议使用全局变量。

```ruby
$global_variable = 10
class Class1
    def print_global
        puts "全局变量在 Class1 中输出为 #$global_variable"
    end
end

class Class2
    def print_global
        puts "全局变量在 Class2 中输出为 #$global_variable"
    end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
```

注意：在Ruby中，您可以通过在变量或常量前面放置`#`字符，来访问任何变量或常量的值

**Ruby实例变量**

实例变量`@`开头。未初始化的实例变量为`nil`,在使用`-w`选项，会产生警告

下面的实例显示了实例变量的用法

**Ruby类变量**

类变量以@@开头，且必须初始化后才能方法定义中使用。引用一个未初始化的类变量会产生错误。类变量在定义它的类或模块的子类或子模块中可共享使用。在使用`-w`选项，重载类变量会产生警告。

**Ruby局部变量**

局部变量以小写字母或下划线_开头。局部变量的作用域`class`,`module`,`def`或`do`到相应的结尾或者从左大括号到右大括号{}。

当调用一个未初始化的局部变量时，它被解释为调用一个不带参数的方法。

对于未初始化的局部变量赋值也可当作是变量声明。变量会一直存在，直到当前域结束为止。局部变量的生命周期在 Ruby 解析程序时确定。

**Ruby常量**

常量以大写字母开头。定义在类或模块内的常量可以从类或模块的内部访问，定义在类或模块外的常量可以被全局访问。

常量不能定义在方法内。引用一个未初始化的常量会产生错误。对已经初始化的常量赋值会产生警告。

```ruby
class Example
   VAR1 = 100
   VAR2 = 200
   def show
       puts "第一个常量的值为 #{VAR1}"
       puts "第二个常量的值为 #{VAR2}"
   end
end
 
# 创建对象
object=Example.new()
object.show
```

**Ruby 伪变量**

它们是特殊的变量，有着局部变量的外观，但行为却像常量。您不能给这些变量赋任何值。

* **self**-当前方法的接收器对象。
* **true**-代表 true 的值。
* **false**-代表 false 的值。
* **nil**-代表 undefined 的值。
* **__FILE__**-当前源文件的名称。
* **__LINE__**-当前行在源文件中的编号。
