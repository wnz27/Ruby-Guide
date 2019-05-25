array = [ "a", 1, nil ]
array.each do |item|
    case item
    when String
        puts "item is a String."
    when Numeric
        puts "item is a Numeric."
    else
        puts "item is something."
    end
end

# 执行结果为
# > ruby case_class.rb 
# item is a String. 
# item is a Numeric. 
# item is something.

# 在本例中，程序判断传过来的对象类型是字符串(String 类)还是数值(Numeric 类)，或者以上两者均不是，然后再输出相应的结果。
# 在这里，我们同样是使用 case 语句，不过判断的主体与之前的例子有点区别。
# 本例中的 when 实际上并不是直接判断传过来的字符串，而是先查找该对象属于哪个类，然后再根据这个类的信息来进行条件判断。