# 读取文件内容的流程如下
# 1 打开文件。 
# 2 读取文件的文本数据。 
# 3 输出文件的文本数据。 
# 4 关闭文件。

filename = ARGV[0]
file = File.open(filename) # 1
text = file.read           # 2
print text                 # 3
file.close                 # 4

# 第 1 行，将命令行参数 ARGV[0] 赋值给变量 filename。也就是说，filename 表示希望 读取的文件名
# 第 2 行，File.open(filename) 表示打开名为 filename 的文件，并返回读 取该文件所需的对象
# 读取该文件所需的对象”实际在第 3 行使用。在这里，read 方法读取文本数据，并将读取到的数据赋值给 text 变量
# 第 4 行的代码会输出 text 的文本数据
# 程序执行最后一段代码 的 close 方法。这样，就可以关闭之前打开的文件了。

# 如果只是读取文件内容，直接使用 read 方法会使程序更简单
filename = ARGV[0]
text = File.read(filename)
print text

# 如果不使用变量，一行代码就可以搞定
print File.read(ARGV[0])