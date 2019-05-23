# 定义方法的语法如下:
=begin
def 方法名 
    希望执行的处理
end
=end

def hello
    puts "Hello, Ruby."
end

# 执行这 3 行代码，实际上并不会输出任何结果。这是由于在调用 hello 方法前程序就已经结束了。
# 因此方法定义好后，还要通过“调用”告诉 Ruby，我们要执行这个方法。

hello()

