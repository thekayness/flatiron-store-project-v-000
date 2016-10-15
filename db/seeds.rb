User.delete_all
Category.delete_all
Item.delete_all
Cart.delete_all


#create some users
user1 = User.create(email: "Max.charles@whatever.com", password: "99problems", password_confirmation: "99problems")
User.create(email: "SkaiJackson@doodle.com", password: "98problems", password_confirmation: "98problems")
User.create(email: "kaleisgreat@doodle.com", password: "207problems", password_confirmation: "207problems")

#create some categories
debugging = Category.create(title: "Debugging Things")
cozy = Category.create(title: "Cozy Things")
need = Category.create(title: "Things You NEED")
mythical = Category.create(title: "Mythical Things")

#make some items for those categories
debugging.items << Item.create(title: "Rubber Ducky", inventory: 9000, price: 2.00)
debugging.items << Item.create(title: "Guide to LISP", inventory: 200, price: 22.00)

cozy.items << Item.create(title: "C++ Pajamas", inventory: 599, price: 34.99)
cozy.items << Item.create(title: "Hand Warmers", inventory: 8, price: 1.75)
cozy.items << Item.create(title: "Bunny Slippers", inventory: 27, price: 13.00)

need.items << Item.create(title:"Actual Ferris Wheel", inventory: 3, price: 0.02)
need.items << Item.create(title: "XXL Coffee Mug", inventory: 9, price: 12.50)

mythical.items << Item.create(title: "Magic Coffee", inventory: 3, price: 300.00)
mythical.items << Item.create(title: "Job Fruits", inventory: 3, price: 999.98)

