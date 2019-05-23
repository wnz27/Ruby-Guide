# Ruby 除了提供 p 方法外，还提供了一个有类似作用的方法——pp。pp 是英语 pretty print 的缩写。要使用 pp 方法，我们需要使用 require 方法引用 pp 库。

require "pp"

books = [
{ title: "猫街", author: "萩原朔太郎" },
{ title: "猫的事务所", author: "宫泽贤治" },
{ title: "猫语教科书", author: "Paul Gallico" },
]
p books
pp books

# 输出为：
=begin
[{:title=>"猫街", :author=>"萩原朔太郎"}, {:title=>"猫的事务所", :author=>"宫泽贤治"}, {:title=>"猫语教科书", :author=>"Paul Gallico"}]
[{:title=>"猫街", :author=>"萩原朔太郎"},
 {:title=>"猫的事务所", :author=>"宫泽贤治"},
 {:title=>"猫语教科书", :author=>"Paul Gallico"}]
=end

# 与 p 方法有点不同，pp 方法在输出对象的结果时，为了更容易看懂，会适当地换行以调整输出结果。
# 建议像本例的散列那样，在[需要确认嵌套的内容时]使用 pp 方法。