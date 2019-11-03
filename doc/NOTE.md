
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

**Ruby运算符**

Ruby支持一套丰富的运算符。大多数运算符实际上方法调用。例如，`a + b`被解释为`a .+(b)`,其中指向变量`a`的`+`方法被调用，`b`作为方法调用的参数。

对于每个运算符(`+ - * / % ** & | ^ << >> && ||`),都有一个相对应的缩写赋值运算符(`+= -=`)等等

**Ruby算术运算符**

假设变量 `a` 的值为 `10`，变量 `b` 的值为 `20`，那么：

运算符|描述|实例
-|-|-
`+`	|加法 - 把运算符两边的操作数相加|	`a + b` 将得到 `30`
`-`	|减法 - 把左操作数减去右操作数|	`a - b` 将得到 `-10`
`*`	|乘法 - 把运算符两边的操作数相乘|	`a * b` 将得到 `200`
`/`	|除法 - 把左操作数除以右操作数|	`b / a` 将得到 `2`
`%`	|求模 - 把左操作数除以右操作数，返回余数|	`b % a` 将得到 `0`
`**`	|指数 - 执行指数计算|	`a**b` 将得到 `10` 的 `20` 次方

**Ruby比较运算符**

假设变量 `a` 的值为 `10`，变量 `b` 的值为 `20`，那么：

运算符|描述|实例
-|-|-
`==`	|检查两个操作数的值是否相等，如果相等则条件为真。|	`(a == b)` 不为真。
`!=`	|检查两个操作数的值是否相等，如果不相等则条件为真。|	`(a != b)` 为真。
`>`	|检查左操作数的值是否大于右操作数的值，如果是则条件为真。|	`(a > b)` 不为真。
`<`	|检查左操作数的值是否小于右操作数的值，如果是则条件为真。|	`(a < b)` 为真。
`>=`	|检查左操作数的值是否大于或等于右操作数的值，如果是则条件为真。|	`(a >= b)` 不为真。
`<=`	|检查左操作数的值是否小于或等于右操作数的值，如果是则条件为真。|	`(a <= b)` 为真。
`<=>`	|联合比较运算符。如果第一个操作数等于第二个操作数则返回 0，如果第一个操作数大于第二个操作数则返回 1，如果第一个操作数小于第二个操作数则返回 -1。|	`(a <=> b)` 返回 -1。
`===`	|用于测试 `case` 语句的 `when` 子句内的相等。	`(1...10) === 5` 返回 `true`。
`.eql?`	|如果接收器和参数具有相同的类型和相等的值，则返回 `true`。|	`1 == 1.0` 返回 `true`，但是 `1.eql?(1.0)` 返回 `false`。
`equal?`	|如果接收器和参数具有相同的对象 `id`，则返回 `true`。	如果 `aObj` 是 `bObj` 的副本，那么 `aObj == bObj` 返回 `true`，`a.equal?bObj` 返回 `false`，但是 `a.equal?aObj` 返回 true。

**Ruby赋值运算符**

假设变量 `a` 的值为 `10`，变量 `b` 的值为 `20`，那么：

运算符|描述|实例
-|-|-
`=`	|简单的赋值运算符，把右操作数的值赋给左操作数|	`c = a + b` 将把 `a + b` 的值赋给 `c`
`+=`	|加且赋值运算符，把右操作数加上左操作数的结果赋值给左操作数|	`c += a` 相当于 `c = c + a`
`-=`	|减且赋值运算符，把左操作数减去右操作数的结果赋值给左操作数|	`c -= a` 相当于 `c = c - a`
`*=`	|乘且赋值运算符，把右操作数乘以左操作数的结果赋值给左操作数|	`c *= a` 相当于 `c = c * a`
`/=`	|除且赋值运算符，把左操作数除以右操作数的结果赋值给左操作数|	`c /= a` 相当于 `c = c / a`
`%=`	|求模且赋值运算符，求两个操作数的模赋值给左操作数|	`c %= a` 相当于 `c = c % a`
`**=`	|指数且赋值运算符，执行指数计算，并赋值给左操作数|	`c **= a` 相当于 `c = c ** a`

**Ruby的并行赋值**

Ruby 也支持变量的并行赋值。这使得多个变量可以通过一行的 Ruby 代码进行初始化。

```ruby
a, b, c = 10, 20, 30
a, b = b, a
```

**Ruby位运算符**

位运算符作用于位，并逐位执行操作

假设如果 `a = 60`，且 `b = 13`，现在以二进制格式：

`a = 0011 1100`

`b = 0000 1101`

-----------------

`a&b = 0000 1100`

`a|b = 0011 1101`

`a^b = 0011 0001`

`~a  = 1100 0011`

运算符|描述|实例
-|-|-
`&`	|如果同时存在于两个操作数中，二进制 AND 运算符复制一位到结果中。|	`(a & b)` 将得到 `12`，即为 `0000 1100`
`|`	|如果存在于任一操作数中，二进制 OR 运算符复制一位到结果中。|	`(a | b)` 将得到 `61`，即为 `0011 1101`
`^`	|如果存在于其中一个操作数中但不同时存在于两个操作数中，二进制异或运算符复制一位到结果中。|	`(a ^ b)` 将得到 `49`，即为 `0011 0001`
`~`	|二进制补码运算符是一元运算符，具有"翻转"位效果，即0变成1，1变成0。	`(~a)` 将得到 `-61`，即为 `1100 0011`，一个有符号二进制数的补码形式。|
`<<`	|二进制左移运算符。左操作数的值向左移动右操作数指定的位数。|	`a << 2` 将得到 `240`，即为 `1111 0000`
`>>`	|二进制右移运算符。左操作数的值向右移动右操作数指定的位数。|	`a >> 2` 将得到 `15`，即为 `0000 1111`

**Ruby逻辑运算符**

假设变量 `a` 的值为 `10`，变量 `b` 的值为 `20`，那么：

运算符|描述|实例
-|-|-
`and`	|称为逻辑与运算符。如果两个操作数都为真，则条件为真。|	`(a and b)` 为真。
`or`	|称为逻辑或运算符。如果两个操作数中有任意一个非零，则条件为真。|	`(a or b)` 为真。
`&&`	|称为逻辑与运算符。如果两个操作数都非零，则条件为真。|	`(a && b)` 为真。
`||`	|称为逻辑或运算符。如果两个操作数中有任意一个非零，则条件为真。|	`(a || b)` 为真。
`!`	|称为逻辑非运算符。用来逆转操作数的逻辑状态。如果条件为真则逻辑非运算符将使其为假。|	`!(a && b)` 为假。
`not`	|称为逻辑非运算符。用来逆转操作数的逻辑状态。如果条件为真则逻辑非运算符将使其为假。|	`not(a && b)` 为假。

**Ruby三元运算符**

有一个以上的操作称为三元运算符。第一个计算表达式的真假值，然后根据这个结果决定执行后边两个语句中的一个。条件运算符的语法如下：

运算符|描述|实例
-|-|-
`?X:Y`	|条件表达式	|如果条件为真 `?` 则值为 `X` `:` 否则值为 `Y`

**Ruby 范围运算符**

在 Ruby 中，序列范围用于创建一系列连续的值 - 包含起始值、结束值（视情况而定）和它们之间的值。

在 Ruby 中，这些序列是使用 ".." 和 "..." 范围运算符来创建的。两点形式创建的范围包含起始值和结束值，三点形式创建的范围只包含起始值不包含结束值。

运算符|描述|实例
-|-|-
`..`	|创建一个从开始点到结束点的范围（包含结束点）|	`1..10` 创建从 `1` 到 `10` 的范围
`...`	|创建一个从开始点到结束点的范围（不包含结束点）|	`1...10` 创建从 `1` 到 `9` 的范围

**Ruby defined? 运算符**

defined? 是一个特殊的运算符，以方法调用的形式来判断传递的表达式是否已定义。它返回表达式的描述字符串，如果表达式未定义则返回 nil。

下面是 defined? 运算符的各种用法：

```ruby
foo = 42
defined? foo    # => "local-variable"
defined? $_     # => "global-variable"
defined? bar    # => nil（未定义）

defined? puts        # => "method"
defined? puts(bar)   # => nil（在这里 bar 未定义）
defined? unpack      # => nil（在这里未定义）

defined? super     # => "super"（如果可被调用）
defined? super     # => nil（如果不可被调用）

defined? yield    # 如果已传递代码块，则为 True

defined? yield    # => "yield"（如果已传递块）
defined? yield    # => nil（如果未传递块）
```

**Ruby 点运算符 "." 和双冒号运算符 "::"**

可以通过在方法名称前加上类或模块名称和`.`来调用类或模块中的方法，可以使用类或模块名称和两个冒号`::`来应用类或者模块中的常量

`::`是一元运算符，允许在类或模块内定义常量、实例方法和类方法，可以从类或模块外的任何地方进行访问。

*注意：在Ruby中，类和方法也可以被当做常量*

只需要在表达式的常量名前加上`::`前缀，即可返回适当的类或模块对象。

如果`::`前的表达式为类或模块名称，则返回该类或模块内对应的常量值，如果`::`前未没有前缀表达式，则返回主Object类中对应的常量值

```ruby
MR_COUNT = 0
module Foo
    MR_COUNT = 0
    ::MR_COUNT = 1
    MR_COUNT = 2
end
puts MR_COUNT
puts Foo::MR_COUNT
```

```ruby
CONST = ' out here'
class Inside_one
    CONST = proc {' in here'}
    def where_is_my_CONST
        ::CONST + ' inside one'
    end
end
class Inside_two
    CONST = ' inside two'
    def where_is_my_CONST
        CONST
    end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST
```

**Ruby运算符的优先级**

方法|运算符|描述
-|-|-
是|	`::`	|常量解析运算符
是|	`[ ] [ ]=`	|元素引用、元素集合
是|	`**`	|指数
是|	`! ~ + -`	|非、补、一元加、一元减（最后两个的方法名为 `+@` 和 `-@`）
是|	`* / %`	|乘法、除法、求模
是|	`+ -`	|加法和减法
是|	`>> <<`	|位右移、位左移
是|	`&`	|位与
是|	`^ |`	|位异或、位或
是|	`<= < > >=`	|比较运算符
是|	`<=> == === != =~ !~`	|相等和模式匹配运算符（`!=` 和 `!~` 不能被定义为方法）
-| `&&`	|逻辑与
-| `||`	|逻辑或
-| `..` `...`	|范围（包含、不包含）
-| `? :`	|三元 `if-then-else`
-| `= %= { /= -= += |= &= >>= <<= *= &&= ||= **=`	|赋值
-| `defined?`	|检查指定符号是否已定义
-| `not`	|逻辑否定
-| `or and`	|逻辑组成

**Ruby注释**

注释是在运行时会被忽略的Ruby代码内的注释，单行注释以#字符开始，直到该行结束

```ruby
#! /usr/bin/ruby

# 这是一个单行注释

puts "Hello, Ruby"
```

**Ruby多行注释**

可以使用`=begin`和`=end`语法注释多行

```ruby
=begin
这是一个多行注释
但 =begin和 =end只能出现在第一行和最后一行
=end
```

请确保尾部的注释离代码有足够的距离，以便容易区分注释和代码。如果尾部超过一条注释，请将它们对齐。例如：

```ruby
@counter      # 跟踪页面被点击的次数
@siteCounter  # 跟踪所有页面被点击的次数
```

**Ruby判断**

Ruby 提供了几种很常见的条件结构。在这里，我们将解释所有的条件语句和 Ruby 中可用的修饰符。

```ruby
if conditional [then]
    code...
[elsif conditional] [then]
    code...]...
[else
    code...]
end
```

if 表达式用于条件执行。值 false 和 nil 为假，其他值都为真。请注意，Ruby 使用 elsif，不是使用 else if 和 elif。

如果 conditional 为真，则执行 code。如果 conditional 不为真，则执行 else 子句中指定的 code。

通常我们省略保留字 then 。若想在一行内写出完整的 if 式，则必须以 then 隔开条件式和程式区块。如下所示:

```ruby
x = 1
if x > 2
   puts "x 大于 2"
elsif x <= 2 and x!=0
   puts "x 是 1"
else
   puts "无法得知 x 的值"
end
```

**Ruby if 修饰符**

```ruby
$debug = 1
print "debug\n" if $debug
```

**Ruby unless语句**

unless式和 if式作用相反，即如果 conditional 为假，则执行 code。如果 conditional 为真，则执行 else 子句中指定的 code。

```ruby
x=1
unless x>2
    puts "x 小于 2"
else
    puts "x 大于 2"
end
```

**Ruby unless修饰符**

```ruby
$var =  1
print "1 -- 这一行输出\n" if $var
print "2 -- 这一行不输出\n" unless $var
 
$var = false
print "3 -- 这一行输出\n" unless $var
```

**Ruby case 语句**

```ruby
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
```

```ruby
foo = false
bar = true
quu = false
 
case
when foo then puts 'foo is true'
when bar then puts 'bar is true'
when quu then puts 'quu is true'
end
# 显示 "bar is true"
```

**Ruby循环**

**Ruby while语句**

```ruby
while conditional [do]
   code
end
```

```ruby
$i = 0
$num = 5
 
while $i < $num  do
   puts("在循环语句中 i = #$i" )
   $i +=1
end
```

当 conditional 为真时，执行 code。

如果 while 修饰符跟在一个没有 rescue 或 ensure 子句的 begin 语句后面，code 会在 conditional 判断之前执行一次。

```ruby
#!/usr/bin/ruby
# -*- coding: UTF-8 -*-
 
$i = 0
$num = 5
begin
   puts("在循环语句中 i = #$i" )
   $i +=1
end while $i < $num
```

当 conditional 为假时，执行 code。

语法中 do 可以省略不写。但若要在一行内写出 until 式，则必须以 do 隔开条件式或程式区块。

```ruby
$i = 0
$num = 5
 
until $i > $num  do
   puts("在循环语句中 i = #$i" )
   $i +=1;
end
```

**Ruby until语句**

当 conditional 为 false 时，执行 code。

如果 until 修饰符跟在一个没有 rescue 或 ensure 子句的 begin 语句后面，code 会在 conditional 判断之前执行一次。

```ruby
$i = 0
$num = 5
begin
   puts("在循环语句中 i = #$i" )
   $i +=1;
end until $i > $num
```

**Ruby for语句**

先计算表达式得到一个对象，然后针对 expression 中的每个元素分别执行一次 code。

```ruby
for i in 0..5
   puts "局部变量的值为 #{i}"
end
```

for...in 循环几乎是完全等价于：

> (expression).each do |variable[, variable...]| code end

但是，for 循环不会为局部变量创建一个新的作用域。

语法中 do 可以省略不写。但若要在一行内写出 for 式，则必须以 do 隔开条件式或程式区块。

```ruby
(0..5).each do |i|
   puts "局部变量的值为 #{i}"
end
```

**Ruby break语句**

```ruby
for i in 0..5
   if i > 2 then
      break
   end
   puts "局部变量的值为 #{i}"
end
```

**Ruby next语句**

```ruby
for i in 0..5
   if i < 2 then
      next
   end
   puts "局部变量的值为 #{i}"
end
```

**Ruby redo语句**

```ruby
for i in 0..5
   if i < 2 then
      puts "局部变量的值为 #{i}"
      redo
   end
end
```

**Ruby retry语句**

```ruby
for i in 1..5
   retry if  i > 2
   puts "局部变量的值为 #{i}"
end
```

**Ruby方法**

Ruby方法与其他编程语言中的函数类似。Ruby方法用于捆绑一个或多个重复的语句到一个单元中。

方法名以小写字母开头。如果以大写字母作为方法名的开头，Ruby可能会把它当做常量，从而导致不正确的解析调用

*方法应该在调用之前定义*，否则Ruby会产生未定义的方法调用异常

Ruby方法定义的语法

```ruby
def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
    expr...
end
```

当要调用方法时，只需要使用方法名即可,但是当调用带参数的方法时，在写方法名时还要带上参数

```ruby
def testfunc(a1="Ruby", a2="Perl")
    puts "编程语言为 #{a1}"
    puts "编程语言为 #{a2}"
end
testfunc "C", "C++"
testfunc
```

**从方法返回值**

Ruby中的每个方法默认都会返回一个值。这个返回值的是最后一个语句的值.例如:

```ruby
def test
    i = 100
    j = 10
    k = 0
end
```

**Ruby return语句**

Ruby中的return语句用于从Ruby方法中返回一个或多个值

如果给出超过两个的表达式，包含这些值的数组将是返回值。如果未给出表达式，nil将是返回值

```ruby
def test
    i = 100
    j = 200
    k = 300
    return i, j, k
end
var = test
puts var
```

可变数量的参数

假设您声明了一个带有两个参数的方法，当您调用该方法时，您同时还需要传递两个参数。

但是，Ruby允许声明参数数量可变的方法

```ruby
def sample (*test)
    puts "参数个数为 #{test.length}"
    for i in 0...test.length
        puts "参数值为 #{test[i]}"
    end
end

sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"
```

**Ruby类方法**

和其他编程语言的静态方法类似，当方法定义在类的外部，方法默认标记为`private`。 另一方面，如果方法定义在类中的，则默认标记为`public`，方法默认的可见性和`private`标记可通过模块(Module)的`public`或`private`改变。

当想要访问类的方法时，首先需要实例化类。使用对象，可以访问类的的任何成员。
Ruby提供了一种不用实例化即可访问方法的方式。

```ruby
class Accounts
    def reading_charge
    end
    def Accounts.return_data
    end
end
```

**Ruby alias语句**

这个语句英语为方法或全局变量起别名。别名不能在方法主体内定义。即使方法被重写，方法的别名也保持方法的当前定义。为编号的全局变量($1, $2...)起别名是被禁止的。重写内置的全局变量可能会导致严重的问题。

```ruby
alias foo bar
alias $MATCH $&
```

**Ruby undef语句**

这个语句用于取消方法定义。undef不能出现在方法主体内。通过使用undef和alias，类的接口可以从父类独立修改.

*注意：在自身内部方法调用时，它可能会破坏程序*

```ruby
undef bar
```

**Ruby块**

* 块由大量的代码组成
* 需要给块取一个名称
* 块中的代码总是包含在大括号`{}`内
* 块中试与从其具有相同名称的函数调用。
* 可以使用yield语句来调用块

**yield语句**

```ruby
def test
    puts "在test方法内"
    yield
    puts "你又回到了test方法内"
    yield
end

test {puts "在块内"}

```

```ruby
def test
    yield 5
    puts "在test方法内"
    yield 100
end
test {|i| puts "在块#{i}内"}
```

*注意：yield语句后可跟多个参数*

**块和方法**

```ruby
def test
    yield
end
test {puts "Hello word"}
```

**BEGIN和END块**

```ruby
BEGIN {
    # BEGIN 代码块
    puts "BEGIN 代码块"
}

END {
    puts "END 代码块"
}

puts "MAIN 代码块"
```

**Ruby模块(Module)**

模块`(Module)`是一种把方法、类和常量组合在一起的方式。模块`(Module)`的好处:

* 模块提供了一个`命名空间`和避免名字冲突
* 模块实现了mixin装置

模块`(Module)`定义了一个命名空间，相当于一个沙盒，在里面的方法和常量不会与其他地方的方法常量冲突。模块类似于类，但有些许不同

* 模块不能实例化
* 模块没有子类
* 模块只能被另一个模块定义

模块常量命名与类常量命名类似，以大写字母开头。方法定义看起来也相似：模块方法定义与类方法定义类似。通过类方法，可以在类方法名称前面放置模块名称和一个点号来调用模块，可以使用模块名称和两个冒号来引用一个常量

```ruby
module Trig
    PI = 3.141592654
    def Trig.sin(x)
    # ...
    end
    def Trig.cos(x)
    #...
    end
end
```

**Ruby require语句**

require 语句类似于 C 和 C++ 中的 include 语句以及 Java 中的 import 语句。如果一个第三方的程序想要使用任何已定义的模块，则可以简单地使用 Ruby require 语句来加载模块文件：

```ruby
require 'trig.rb'
require 'moral'

y = Trig.sin(Trig::PI/4)

```

**Ruby include语句**

```ruby
module Week
   FIRST_DAY = "Sunday"
   def Week.weeks_in_month
      puts "You have four weeks in a month"
   end
   def Week.weeks_in_year
      puts "You have 52 weeks in a year"
   end
end

$LOAD_PATH << '.'
require "support"
 
class Decade
include Week
   no_of_yrs=10
   def no_of_months
      puts Week::FIRST_DAY
      number=10*12
      puts number
   end
end
d1=Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months
```

**Ruby 中的 Mixins**

Ruby 不直接支持多重继承，但是 Ruby 的模块（Module）有另一个神奇的功能。它几乎消除了多重继承的需要，提供了一种名为 mixin 的装置。

Ruby 没有真正实现多重继承机制，而是采用成为mixin技术作为替代品。将模块include到类定义中，模块中的方法就mix进了类中。

```ruby
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
```

**Ruby 字符串(String)**

Ruby中的String对象用于存储或操作一个或多个字节的序列。

Ruby字符串分为单引号字符串`(')`和双引号`(")`字符串，区别在于双引号自付出能够支持更多的转义字符

*单引号字符串*

最简单的字符串是单引号的字符串，即在单引号内存放字符串：

```ruby
'这是一个Ruby程序的字符串'
```

如果需要在单引号字符串内使用单引号字符，需要在单引号字符串使用反斜杠(\\),这样Ruby解释器就不会认为这个单引号字符是字符串的终止符号：

*双引号字符串*

在双引号字符串可以使用`${}`井号和大括号来计算表达式的值

```ruby
name1 = "Joe"
name2 = "Mary"
puts "#{name1} and #{name2} is where"
```

```ruby
x, y, z = 12, 36, 72
puts "x 的值为 #{ x }"
puts "x + y的值为 #{ x + y }"
puts "x + y + z的平均值为 #{ (x + y + z) / 3 }"
```

Ruby中还支持一种采用%q和%Q来引导的字符串变量，%q使用的是单引号引用规则，而%Q是双引号引用规则，后面再接一个`(![{等待的开始界定符合与}])`等等末尾界定符

跟在q或Q后面的字符是分界符。分解符可以是任意一个非字母数字的单字节字符，如`[,{,(,<,|`等，字符串会一直读取到发现相匹配的结束符为止。

```ruby
desc1 = "%Q{Ruby 的字符串可以使用 '' 和 ""}"
desc2 = "%q|Ruby 的字符串可以使用 '' 和 ""|"

puts desc1
puts desc2
```

**Ruby转义字符**

*注意：在一个双括号括起的字符串内，转义字符会被解析。在一个单括号引括起的字符串内，转义字符不会被解析，原样输出*

反斜杠符号|十六进制字符|描述
-|-|-
\a |	0x07 |	报警符
\b |	0x08 |	退格键
\cx | |	  	Control-x
\C-x | |	 	Control-x
\e	|0x1b|	转义符
\f	|0x0c|	换页符
\M-\C-x |	 |Meta-Control-x
\n	| 0x0a|	换行符
\nnn | |	 	八进制表示法，其中 n 的范围为 0.7
\r	| 0x0d|	回车符
\s	| 0x20|	空格符
\t	| 0x09|	制表符
\v	| 0x0b|	垂直制表符
\x	| 	|字符 x
\xnn |	 |	十六进制表示法，其中 n 的范围为 0.9、 a.f 或 A.F

**字符编码**

Ruby默认的字符集是ASCII,字符可用单个字节表示，如果使用UTF-8或其他现代的字符集，字符可能是用到一个到四个字节表示。

可以在程序开头使用$KCODE改变字符集，如下所示：

```ruby
$KCODE = 'u'
```

编码|描述
a |	ASCII （与 none 相同）。这是默认的。
e |	EUC。
n |	None （与 ASCII 相同）。
u |	UTF-8。

**字符串内建方法**

需要有一个String对象的实例来调用String方法。

```ruby
new [String.new(str="")]
```

```ruby
#!/usr/bin/ruby
 
myStr = String.new("THIS IS TEST")
foo = myStr.downcase
 
puts "#{foo}"
```

公共的字符串方法列表(假设str是一个String对象):

序号|方法 & 描述
-|-
1|	`str % arg` 使用格式规范格式化字符串。如果 arg 包含一个以上的替代，那么 arg 必须是一个数组。如需了解更多格式规范的信息，请查看"内核模块"下的 sprintf。
2|	`str * integer` 返回一个包含 integer 个 str 的新的字符串。换句话说，str 被重复了 integer 次。
3|	`str + other_str` 连接 other_str 到 str。
4|	`str << obj` 连接一个对象到字符串。如果对象是范围为 0.255 之间的固定数字 Fixnum，则它会被转换为一个字符。把它与 concat 进行比较。
5|	`str <=> other_str` 把 str 与 other_str 进行比较，返回 -1（小于）、0（等于）或 1（大于）。比较是区分大小写的。
6|	`str == obj` 检查 str 和 obj 的相等性。如果 obj 不是字符串，则返回 false，如果 str <=> obj，则返回 true，返回 0。
7|	`str =~ obj` 根据正则表达式模式 obj 匹配 str。返回匹配开始的位置，否则返回 false。
8|	`str[position]` # 注意返回的是ASCII码而不是字符 `str[start, length]` `str[start..end]` `str[start...end]` 使用索引截取子串
9|	`str.capitalize` 把字符串转换为大写字母显示。
10|	`str.capitalize!` 与 capitalize 相同，但是 str 会发生变化并返回。
11|	`str.casecmp` 不区分大小写的字符串比较。
12|	`str.center` 居中字符串。
13|	`str.chomp` 从字符串末尾移除记录分隔符（$/），通常是 \n。如果没有记录分隔符，则不进行任何操作。
14|	`str.chomp!` 与 chomp 相同，但是 str 会发生变化并返回。
15|	`str.chop` 移除 str 中的最后一个字符。
16|	`str.chop!` 与 chop 相同，但是 str 会发生变化并返回。
17|	`str.concat(other_str)` 连接 other_str 到 str。
18|	`str.count(str, ...)` 给一个或多个字符集计数。如果有多个字符集，则给这些集合的交集计数。
19|	`str.crypt(other_str)` 对 str 应用单向加密哈希。参数是两个字符长的字符串，每个字符的范围为 a.z、 A.Z、 0.9、 . 或 /。
20|	`str.delete(other_str, ...)` 返回 str 的副本，参数交集中的所有字符会被删除。
21|	`str.delete!(other_str, ...)` 与 delete 相同，但是 str 会发生变化并返回。
22|	`str.downcase` 返回 str 的副本，所有的大写字母会被替换为小写字母。
23|	`str.downcase!` 与 downcase 相同，但是 str 会发生变化并返回。
24|	`str.dump` 返回 str 的版本，所有的非打印字符被替换为 \nnn 符号，所有的特殊字符被转义。
25|	`str.each(separator=$/) { |substr| block }`  使用参数作为记录分隔符（默认是 $/）分隔 str，传递每个子字符串给被提供的块。
26|	`str.each_byte { |fixnum| block }` 传递 str 的每个字节给 block，以字节的十进制表示法返回每个字节。
27|	`str.each_line(separator=$/) { |substr| block }`  使用参数作为记录分隔符（默认是 $/）分隔 str，传递每个子字符串给被提供的 block。
28|	`str.empty?`  如果 str 为空（即长度为 0），则返回 true。
29|	`str.eql?(other)` 如果两个字符串有相同的长度和内容，则这两个字符串相等。
30|	`str.gsub(pattern, replacement) [or] str.gsub(pattern) { |match| block }`  返回 str 的副本，pattern 的所有出现都替换为 replacement 或 block 的值。pattern 通常是一个正则表达式 Regexp；如果是一个字符串 String，则没有正则表达式元字符被解释（即，/\d/ 将匹配一个数字，但 '\d' 将匹配一个反斜杠后跟一个 'd'）。
31|	`str[fixnum] [or] str[fixnum,fixnum] [or] str[range] [or] str[regexp] [or] str[regexp, fixnum] [or] str[other_str]` 使用下列的参数引用 str：参数为一个 Fixnum，则返回 fixnum 的字符编码；参数为两个 Fixnum，则返回一个从偏移（第一个 fixnum）开始截至到长度（第二个 fixnum）为止的子字符串；参数为 range，则返回该范围内的一个子字符串；参数为 regexp，则返回匹配字符串的部分；参数为带有 fixnum 的 regexp，则返回 fixnum 位置的匹配数据；参数为 other_str，则返回匹配 other_str 的子字符串。一个负数的 Fixnum 从字符串的末尾 -1 开始。
32|	`str[fixnum] = fixnum [or] str[fixnum] = new_str [or] str[fixnum, fixnum] = new_str [or] str[range] = aString [or] str[regexp] =new_str [or] str[regexp, fixnum] =new_str [or] str[other_str] = new_str ]` 替换整个字符串或部分字符串。与 slice! 同义。
33|	`str.gsub!(pattern, replacement) [or] str.gsub!(pattern) { |match| block }` 执行 `String#gsub` 的替换，返回 str，如果没有替换被执行则返回 `nil`。
34|	`str.hash` 返回一个基于字符串长度和内容的哈希。
35|	`str.hex` 把 str 的前导字符当作十六进制数字的字符串（一个可选的符号和一个可选的 0x），并返回相对应的数字。如果错误则返回零。
36|	`str.include? other_str [or] str.include? fixnum` 如果 str 包含给定的字符串或字符，则返回 `true`。
37|	`str.index(substring [, offset]) [or] str.index(fixnum [, offset]) [or] str.index(regexp [, offset])` 返回给定子字符串、字符（fixnum）或模式（regexp）在 str 中第一次出现的索引。如果未找到则返回 nil。如果提供了第二个参数，则指定在字符串中开始搜索的位置。
38|	`str.insert(index, other_str)`  在给定索引的字符前插入 other_str，修改 str。负值索引从字符串的末尾开始计数，并在给定字符后插入。其意图是在给定的索引处开始插入一个字符串。
39|	`str.inspect` 返回 str 的可打印版本，带有转义的特殊字符。
40|	`str.intern [or] str.to_sym`  返回与 str 相对应的符号，如果之前不存在，则创建符号。
41|	`str.length` 返回 str 的长度。把它与 size 进行比较。
42|	`str.ljust(integer, padstr=' ')`  如果 integer 大于 str 的长度，则返回长度为 integer 的新字符串，新字符串以 str 左对齐，并以 padstr 作为填充。否则，返回 str。
43|	`str.lstrip` 返回 str 的副本，移除了前导的空格。
44|	`str.lstrip!` 从 str 中移除前导的空格，如果没有变化则返回 nil。
45|	`str.match(pattern)` 如果 pattern 不是正则表达式，则把 pattern 转换为正则表达式 Regexp，然后在 str 上调用它的匹配方法。
46|	`str.oct` 把 str 的前导字符当作十进制数字的字符串（一个可选的符号），并返回相对应的数字。如果转换失败，则返回 0。
47|	`str.replace(other_str)` 把 str 中的内容替换为 other_str 中的相对应的值。
48|	`str.reverse` 返回一个新字符串，新字符串是 str 的倒序。
49|	`str.reverse!` 逆转 str，str 会发生变化并返回。
50|	`str.rindex(substring [, fixnum]) [or] str.rindex(fixnum [, fixnum]) [or] str.rindex(regexp [, fixnum])` 返回给定子字符串、字符（fixnum）或模式（regexp）在 str 中最后一次出现的索引。如果未找到则返回 nil。如果提供了第二个参数，则指定在字符串中结束搜索的位置。超出该点的字符将不被考虑。
51|	`str.rjust(integer, padstr=' ')`  如果 integer 大于 str 的长度，则返回长度为 integer 的新字符串，新字符串以 str 右对齐，并以 padstr 作为填充。否则，返回 str。
52|	`str.rstrip` 返回 str 的副本，移除了尾随的空格。
53|	`str.rstrip!`  从 str 中移除尾随的空格，如果没有变化则返回 nil。
54|	`str.scan(pattern) [or] str.scan(pattern) { |match, ...| block }` 两种形式匹配 pattern（可以是一个正则表达式 Regexp 或一个字符串 String）遍历 str。针对每个匹配，会生成一个结果，结果会添加到结果数组中或传递给 block。如果 pattern 不包含分组，则每个独立的结果由匹配的字符串、$& 组成。如果 pattern 包含分组，每个独立的结果是一个包含每个分组入口的数组。
55|	`str.slice(fixnum) [or] str.slice(fixnum, fixnum) [or] str.slice(range) [or] str.slice(regexp) [or] str.slice(regexp, fixnum) [or] str.slice(other_str) See str[fixnum], etc. str.slice!(fixnum) [or] str.slice!(fixnum, fixnum) [or] str.slice!(range) [or] str.slice!(regexp) [or] str.slice!(other_str)` 从 str 中删除指定的部分，并返回删除的部分。如果值超出范围，参数带有 Fixnum 的形式，将生成一个 IndexError。参数为 range 的形式，将生成一个 RangeError，参数为 Regexp 和 String 的形式，将忽略执行动作。
56|	`str.split(pattern=$;, [limit])` 基于分隔符，把 str 分成子字符串，并返回这些子字符串的数组。如果 pattern 是一个字符串 String，那么在分割 str 时，它将作为分隔符使用。如果 pattern 是一个单一的空格，那么 str 是基于空格进行分割，会忽略前导空格和连续空格字符。如果 pattern 是一个正则表达式 Regexp，则 str 在 pattern 匹配的地方被分割。当 pattern 匹配一个零长度的字符串时，str 被分割成单个字符。如果省略了 pattern 参数，则使用 $; 的值。如果 $; 为 nil（默认的），str 基于空格进行分割，就像是指定了 ` ` 作为分隔符一样。如果省略了 limit 参数，会抑制尾随的 null 字段。如果 limit 是一个正数，则最多返回该数量的字段（如果 limit 为 1，则返回整个字符串作为数组中的唯一入口）。如果 limit 是一个负数，则返回的字段数量不限制，且不抑制尾随的 null 字段。
57|	`str.squeeze([other_str]*)` 使用为 String#count 描述的程序从 other_str 参数建立一系列字符。返回一个新的字符串，其中集合中出现的相同的字符会被替换为单个字符。如果没有给出参数，则所有相同的字符都被替换为单个字符。
58|	`str.squeeze!([other_str]*)` 与 squeeze 相同，但是 str 会发生变化并返回，如果没有变化则返回 nil。
59|	`str.strip` 返回 str 的副本，移除了前导的空格和尾随的空格。
60|	`str.strip!` 从 str 中移除前导的空格和尾随的空格，如果没有变化则返回 nil。
61|	`str.sub(pattern, replacement) [or] str.sub(pattern) { |match| block }` 返回 str 的副本，pattern 的第一次出现会被替换为 replacement 或 block 的值。pattern 通常是一个正则表达式 Regexp；如果是一个字符串 String，则没有正则表达式元字符被解释。
62|	`str.sub!(pattern, replacement) [or] str.sub!(pattern) { |match| block }` 执行 String#sub 替换，并返回 str，如果没有替换执行，则返回 nil。
63|	`str.succ [or] str.next` 返回 str 的继承。
64|	`str.succ! [or] str.next!` 相当于 String#succ，但是 str 会发生变化并返回。
65|	`str.sum(n=16)` 返回 str 中字符的 n-bit 校验和，其中 n 是可选的 Fixnum 参数，默认为 16。结果是简单地把 str 中每个字符的二进制值的总和，以 2n - 1 为模。这不是一个特别好的校验和。
66|	`str.swapcase` 返回 str 的副本，所有的大写字母转换为小写字母，所有的小写字母转换为大写字母。
67|	`str.swapcase!` 相当于 String#swapcase，但是 str 会发生变化并返回，如果没有变化则返回 nil。
68|	`str.to_f` 返回把 str 中的前导字符解释为浮点数的结果。超出有效数字的末尾的多余字符会被忽略。如果在 str 的开头没有有效数字，则返回 0.0。该方法不会生成异常。
69|	`str.to_i(base=10)` 返回把 str 中的前导字符解释为整数基数（基数为 2、 8、 10 或 16）的结果。超出有效数字的末尾的多余字符会被忽略。如果在 str 的开头没有有效数字，则返回 0。该方法不会生成异常。
70|	`str.to_s [or] str.to_str` 返回接收的值。
71|	`str.tr(from_str, to_str)` 返回 str 的副本，把 from_str 中的字符替换为 to_str 中相对应的字符。如果 to_str 比 from_str 短，那么它会以最后一个字符进行填充。两个字符串都可以使用 c1.c2 符号表示字符的范围。如果 from_str 以 ^ 开头，则表示除了所列出的字符以外的所有字符。
72|	`str.tr!(from_str, to_str)` 相当于 String#tr，但是 str 会发生变化并返回，如果没有变化则返回 nil。
73|	`str.tr_s(from_str, to_str)` 把 str 按照 String#tr 描述的规则进行处理，然后移除会影响翻译的重复字符。
74|	`str.tr_s!(from_str, to_str)` 相当于 String#tr_s，但是 str 会发生变化并返回，如果没有变化则返回 nil。
75|	`str.unpack(format)` 根据 format 字符串解码 str（可能包含二进制数据），返回被提取的每个值的数组。format 字符由一系列单字符指令组成。每个指令后可以跟着一个数字，表示重复该指令的次数。星号（*）将使用所有剩余的元素。指令 sSiIlL 每个后可能都跟着一个下划线（_），为指定类型使用底层平台的本地尺寸大小，否则使用独立于平台的一致的尺寸大小。format 字符串中的空格会被忽略。
76|	`str.upcase` 返回 str 的副本，所有的小写字母会被替换为大写字母。操作是环境不敏感的，只有字符 a 到 z 会受影响。
77|	`str.upcase!` 改变 str 的内容为大写，如果没有变化则返回 nil。
78|	`str.upto(other_str) { |s| block }` 遍历连续值，以 str 开始，以 other_str 结束（包含），轮流传递每个值给 block。String#succ 方法用于生成每个值。

**Ruby字符串unpack指令**

下表列出了方法 String#unpack 的解压指令。

指令|返回|描述
-|-|-
A|	String|	移除尾随的 null 和空格。
a|	String|	字符串。
B|	String|	从每个字符中提取位（首先是最高有效位）。
b|	String|	从每个字符中提取位（首先是最低有效位）。
C|	Fixnum|	提取一个字符作为无符号整数。
c|	Fixnum|	提取一个字符作为整数。
D, d|	Float|	把 sizeof(double) 长度的字符当作原生的 double。
E|	Float|	把 sizeof(double) 长度的字符当作 littleendian 字节顺序的 double。
e|	Float|	把 sizeof(float) 长度的字符当作 littleendian 字节顺序的 float。
F, f|	Float|	把 sizeof(float) 长度的字符当作原生的 float。
G|	Float|	把 sizeof(double) 长度的字符当作 network 字节顺序的 double。
g|	Float|	把 sizeof(float) 长度的字符当作 network 字节顺序的 float。
H|	String|	从每个字符中提取十六进制（首先是最高有效位）。
h|	String|	从每个字符中提取十六进制（首先是最低有效位）。
I|	Integer|	把 sizeof(int) 长度（通过 _ 修改）的连续字符当作原生的 integer。
i|	Integer|	把 sizeof(int) 长度（通过 _ 修改）的连续字符当作有符号的原生的 integer。
L|	Integer|	把四个（通过 _ 修改）连续字符当作无符号的原生的 long integer。
l|	Integer|	把四个（通过 _ 修改）连续字符当作有符号的原生的 long integer。
M|	String|	引用可打印的。
m|	String|	Base64 编码。
N|	Integer|	把四个字符当作 network 字节顺序的无符号的 long。
n|	Fixnum|	把两个字符当作 network 字节顺序的无符号的 short。
P|	String|	把 sizeof(char *) 长度的字符当作指针，并从引用的位置返回 \emph{len} 字符。
p|	String|	把 sizeof(char *) 长度的字符当作一个空结束字符的指针。
Q|	Integer|	把八个字符当作无符号的 quad word（64 位）。
q|	Integer|	把八个字符当作有符号的 quad word（64 位）。
S|	Fixnum|	把两个（如果使用 _ 则不同）连续字符当作 native 字节顺序的无符号的 short。
s|	Fixnum|	把两个（如果使用 _ 则不同）连续字符当作 native 字节顺序的有符号的 short。
U|	Integer|	UTF-8 字符，作为无符号整数。
u|	String|	UU 编码。
V|	Fixnum|	把四个字符当作 little-endian 字节顺序的无符号的 long。
v|	Fixnum|	把两个字符当作 little-endian 字节顺序的无符号的 short。
w|	Integer|	BER 压缩的整数。
X|	| 	向后跳过一个字符。
x|	| 	向前跳过一个字符。
Z|	String|	和 * 一起使用，移除尾随的 null 直到第一个 null。
@|  |	 	跳过 length 参数给定的偏移量。

```ruby
"abc \0\0abc \0\0".unpack('A6Z6')   #=> ["abc", "abc "]
"abc \0\0".unpack('a3a3')           #=> ["abc", " \000\000"]
"abc \0abc \0".unpack('Z*Z*')       #=> ["abc ", "abc "]
"aa".unpack('b8B8')                 #=> ["10000110", "01100001"]
"aaa".unpack('h2H2c')               #=> ["16", "61", 97]
"\xfe\xff\xfe\xff".unpack('sS')     #=> [-2, 65534]
"now=20is".unpack('M*')             #=> ["now is"]
"whole".unpack('xax2aX2aX1aX2a')    #=> ["h", "e", "l", "l", "o"]
```

**Ruby数组(Array)**


