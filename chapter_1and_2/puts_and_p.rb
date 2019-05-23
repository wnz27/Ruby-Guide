print("Hello Ruby.\n")   #需要自己写换行
puts "lalalala."         #puts 自带换行，结尾默认一定会输出换行
puts "27,", "hello!"     #当参数为两个字符串时候，各字符串末尾都会加上换行符

puts 100
puts "100"
p 100
p "100"                  #使用p可以判断输出的结果为哪个对象，而print和puts无论是100还是“100”输出的都是单纯的100

puts "hello, \n\truby!"
p "hello, \n\truby!"     #p也不会给换行和制表之类的符转义

#总结：需要输出程序结果，信息，用print或者puts即可；如果想确认程序执行情况，选择p方法，p方法是提供编程开发使用的~



