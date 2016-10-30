# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
User.create!(email: '1@mail.ru',full_name:"teacher1", password: '123456', role: "teacher",vk_avatar: "https://pp.vk.me/c631427/v631427894/4e12a/HpUnQ7hmlRg.jpg")
User.create!(email: '2@mail.ru',full_name:"teacher2", password: '123456', role: "teacher",vk_avatar: "https://pp.vk.me/c604826/v604826894/4f20/oWQjThqFu3o.jpg")
User.create!(email: '3@mail.ru',full_name:"teacher3", password: '123456', role: "teacher",vk_avatar: "https://pp.vk.me/c604826/v604826894/4f05/3fn4HuB79b8.jpg")
User.create!(email: '4@mail.ru',full_name:"teacher4", password: '123456', role: "teacher",vk_avatar: "https://pp.vk.me/c604826/v604826894/4f29/7QBdb6XKFJA.jpg")
User.create!(email: '5@mail.ru',full_name:"teacher5", password: '123456', role: "teacher",vk_avatar: "https://pp.vk.me/c604826/v604826894/4f32/rKQyLXSDvSg.jpg")
User.create!(email: '6@mail.ru',full_name:"teacher6", password: '123456', role: "teacher",vk_avatar: "https://pp.vk.me/c604826/v604826894/4f4d/XsJsw8RVk-A.jpg")
User.create!(email: '7@mail.ru',full_name:"teacher7", password: '123456', role: "teacher",vk_avatar: "https://pp.vk.me/c631524/v631524894/43557/WHkV0qqJvOc.jpg")
User.create!(email: '8@mail.ru',full_name:"teacher8", password: '123456', role: "teacher",vk_avatar: "https://pp.vk.me/c631524/v631524894/43540/GGxp7EHnUVM.jpg")
5.times{ |i|
	Post.create!(commenter: "#{i}commenter",body: "вы ываоывшыав ыва ываалд ьы ваывзхйцу зйх ок улц х ць ц цулкды ывахвыаххыавлцу"*i) 
}