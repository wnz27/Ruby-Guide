# 使用数组 ARGV 后，程序需要用到的数据就不必都写在代码中。同时，取出元素并赋值给变量等普通的数组操作对于 ARGV 都是适用的
# name = ARGV[0]
# print "Happy Birthday, ", name, "!\n"

# 从参数得到的数据都是字符串，因此将其用于运算时需要进行类型转换。把字符串转换为整数，可以使用 to_i 方法
num0 = ARGV[0].to_i
num1 = ARGV[1].to_i
puts "#{num0} + #{num1} = #{num0 + num1}"
puts "#{num0} - #{num1} = #{num0 - num1}"
puts "#{num0} * #{num1} = #{num0 * num1}"
puts "#{num0} / #{num1} = #{num0 / num1}"