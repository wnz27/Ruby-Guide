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

# 刚才的程序有如下的问题:
# ●  一下子读取全部文件内容会很耗时
# ●  读取的文件内容会暂时保存在内存中，遇到大文件时，程序有可能因此而崩溃

# 如一个文件有 100 万行数据，我们只希望读取最初的几行。这种情况下，如果程序不管 三七二十一读取文件的全部内容，无论从时间还是从内存角度来讲，都是严重的浪费。
# 因此，我们只能放弃“读取文件全部内容”的做法

# 读取全部数据： file.read
# 逐行读取数据： file.each_line

# 将之前代码改为逐行读取并输出这样，只需要具备当前行数据大小的内存就足够了。
filename = ARGV[0]
file = File.open(filename)
file.each_line do |line|
    print line
end
file.close

# each_line 方法很像第 2 章介绍的 each 方法。each 方法是用于逐个处理数组元素，顾名思义，each_line 方法就是对文件进行逐行处理。
# 因此，程序会逐行读取文件的内容，使用 print 方法输出该行的文件内容 line，直到所有行的内容输出完为止。