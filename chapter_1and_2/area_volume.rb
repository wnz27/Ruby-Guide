x = 10
y = 20
z = 30
area = (x*y + y*z +z*x) * 2
volume = x * y * z
print "表面积=", area, "\n"
print "体积=", volume, "\n"

# 传递给 print 方法的字符串参数也可以像下面这样写。
# print "表面积=#{area}\n"
# 在字符串中使用 #{ 变量名 } 这样的写法，可以把通过计算后得到的值嵌入到字 符串中。
# 输出结果中除了可以嵌入变量名，也可以嵌入"表面积=#{(x*y + y*z + z*x) * 2}\n" 这样的计算公式，得到的输出结果是一样的。

# 用puts输出的话我们就不需要加\n了
puts "表面积=#{area}"