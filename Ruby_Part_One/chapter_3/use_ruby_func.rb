# 有时我们希望在其他程序中也能重复使用程序的某部分。例如，在某个程序中写好某个方法后，希望在其他程序中也可以调用。
# 大部分编程语言都提供了把多个不同程序组合为一个程序的功能。像这样，被其他程序引用的程序，我们称为库(library)。

# Ruby 使用 require 方法或者 require_relative 方法来引用库。
# require 希望使用的库名
# 或者
# require_relative 希望使用的库名
# 库名可以省略后缀 .rb。

# 调用 require 方法后，Ruby 会搜索参数指定的库，并读取库的所有内容。库内容读取完毕后，程序才会执行 require 方法后面的处理。
# require 方法用于引用已存在的库。只需要指定库名，程序就会在预先定义好的路径下查找并读取与 Ruby 一起安装的库。
# 而 require_relative 方法在查找库时，则是根据执行中的 程序目录(文件夹)来进行的，这有利于程序读取写在[不同文件]的代码。

# 我们来实际操作一下，将刚才已经完成的 simple_grep.rb 作为库提供给其他程序引用。
# 作为库的文件不用做特别的修改，只需把定义了 simple_grep 方法的文件和引用该文件的程序文件放在同一个文件夹即可。

=begin
require_relative "selfLib"         # 读取selfLib.rb(省略“.rb”）

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]
simple_grep(pattern, filename)     # 调用simple_grep方法
=end

# Ruby 提供了很多便利的标准库，在我们的程序需要用到时，都可以使用 require 方法加以引用。
# 例如，通过引用 date 库，程序就可以使用返回当前日期的 Date.today 的方法，或者返回指定日期对象的 Date.new 方法。
# 下面是一个求从 Ruby 的生日——1993 年 2 月 24 日到今天为止的天数的小程序。

require "date"

days = Date.today - Date.new(1993, 2, 24)
puts(days.to_i)       #=>  9585

