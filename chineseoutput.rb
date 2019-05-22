print "你好啊，\n"
print "2333333！！！\n"

# 魔法注释 magic comment，编码方式：“# encoding: 编码方式”

# 常用的编码方式：
#       平台             编码方式
#       Windows         GBK（或者GB2312）
#       Mac OS X        UTF-8
#       Unix            UTF-8

# 在没指定魔法注释的时候ruby默认使用UTF-8
# 使用上述 p 方法输出中文时，有时也会出现乱码的情况。这时，可使用“-E 编码方式”这个选项来指定输出结果的编码方式。
# 例如，希望以 UTF-8 编码方式在控制台输 出结果时，可像下面这样执行命令。
# > ruby -E UTF-8 脚本文件名 ← 脚本执行 
# > irb -E UTF-8 ← irb启动

# irb 命令后的选项 --simple-prompt 会简化 irb 的输出结果。