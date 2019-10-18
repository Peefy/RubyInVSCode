
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
