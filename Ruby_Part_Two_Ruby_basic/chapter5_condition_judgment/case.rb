tags = [ "A", "IMG", "PRE" ]
tags.each do |tagname|
    case tagname
    when "P", "A", "I", "B", "BLOCKQUOTE"
        puts "#{tagname} has child."
    when "IMG", "BR"
        puts "#{tagname} has no child."
    else
        puts "#{tagname} cannot be used."
    end
end

# 从数组 tags 的开头依次取出元素，判断元素值，输出相应的结果。

# 执行结果：
# > ruby case.rb
# A has child.
# IMG has no child.
# PRE cannot be used.