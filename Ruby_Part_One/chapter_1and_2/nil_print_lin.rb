# nil
# nil 是一个特殊的值，表示对象不存在。像在正则表达式中表示无法匹配成功一样，方法不能返回有意义的值时就会返回 nil
# 从数组或者散列中获取对象时，若指定不存在的索引或者键，则得到的返回值也是 nil。


# if 语句和 while 语句在判断条件时，如果碰到[ false 和 nil ]，则会认为是“假”，除 此以外的都认为是“真”。
# 因此，除了可以使用返回 true 或者 false 的方法，也可以使用“返回某个值”或者返回“nil”的方法作为判断条件表达式。 
# 在下面这个例子中，程序只会输出数组中包含字符“林”的字符串:
names = ["小林", "林", "高野", "森冈"] 
names.each do |name|
    if /林/ =~ name 
        puts name
    end
end