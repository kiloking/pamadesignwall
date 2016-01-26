# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "這個種子檔會自動建立一個帳號, 並且創建 30 個 ideas"
create_account = User.create([email: 'wu@gmail.com', password: '12345678', password_confirmation: '12345678', name: '測試用帳號'])

create_groups = for i in 1..20 do
                    Idea.create!([title: "這是用種子建立的第 #{i} 個留言", user_id: "1"])
                 end
               