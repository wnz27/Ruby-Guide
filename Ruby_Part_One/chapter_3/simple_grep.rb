# Unix 中有一个叫 grep 的命令。grep 命令利用正则表达式搜索文本数据，输出按照指定模式匹配到的行。我们试试用 Ruby 实现 grep 命令

pattern = Regexp.new(ARGV[0])   # 1
filename = ARGV[1]              # 2
                                # 3
file = File.open(filename)      # 4
file.each_line do |line|        # 5
    if pattern =~ line          # 6
        print line              # 7
    end                         # 8
end                             # 9
file.close                      # 10

# 在命令行输入以下命令，以执行代码:
# ruby simple_grep.rb 模式 文件名

# 分析一下：
# Ruby 执行该脚本时，需要有两个命令行参数——ARGV[0] 和 ARGV[1]
# 第 1 行，程序根据第 1 个参数创建了正则表达式对象，并赋值给变量 pattern。Regexp.new(str) 表示把字符串 str 转换为正则表达式对象。
# 第 2 行，把第 2 个参数赋值给作为文件名的变量 filename。
# 第 4 行，打开文件，创建文件对象，并将其赋值给变量 file。
# 第 5 行，读取一行数据，并将其赋值给变量 line。
# 第 6 行，使用 if 语句，判断变量 line 的字符串是否匹配变量 pattern 的正则表达式。
# 如果匹配，则在程序第 7 行输出该字符串
# 这个 if 语句没有 else 部分，因此，若不匹配，程序什么都不会做。只会执行下一次的循环（下一行）
# 第10 行，当全部文本读取完毕后，关闭文件，结束程序。

