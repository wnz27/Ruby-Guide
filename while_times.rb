# while方法 do可以省略
i = 1 
while i <= 10 do
    print i, "\n"
    i = i + 1
end

# times 方法 如果循环次数已经确定使用times方法更简单
# 循环次数 .times do
#     希望循环处理
# end
10 .times do
    print "我真帅！\n"
end

=begin
times 方法被称为迭代器(iterator)。迭代器是 Ruby 的一个特色功能。从迭代器的英语拼 写也可以知道，迭代器表示的是循环(iterate)的容器(-or)。
类似地，运算符(operator)也就是 运算(operate)的容器(-or)，等等。总之，迭代器就是指用于执行循环处理的方法。
=end

