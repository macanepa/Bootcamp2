# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1=User.create!(rut:"156948231", password:"pass123", balance:0, is_client:true)
u2=User.create!(rut:"159103816", password:"123456789", balance:0, is_client:true)
u3=User.create!(rut:"157757389", password:"fie0_2id", balance:0, is_client:true)
u4=User.create!(rut:"170783000", password:"qleo104Da", balance:0, is_client:true)
u5=User.create!(rut:"175803101", password:"woucle3_32", balance:0, is_client:true)
u6=User.create!(rut:"149365012", password:"woucle3_32", balance:0, is_client:false)

c = 0
while c<10 do

  Transaction.create!(user_id:u1.id, amount:10,action:"Income")
  Transaction.create!(user_id:u2.id, amount:20,action:"Income")
  Transaction.create!(user_id:u1.id, amount:12,action:"Income")
  Transaction.create!(user_id:u3.id, amount:14,action:"Income")
  Transaction.create!(user_id:u4.id, amount:14,action:"Income")
  Transaction.create!(user_id:u3.id, amount:22,action:"Income")
  Transaction.create!(user_id:u1.id, amount:11,action:"Income")
  Transaction.create!(user_id:u5.id, amount:15,action:"Income")
  Transaction.create!(user_id:u1.id, amount:12,action:"Income")
  Transaction.create!(user_id:u5.id, amount:16,action:"Income")
  Transaction.create!(user_id:u3.id, amount:12,action:"Income")
  Transaction.create!(user_id:u2.id, amount:12,action:"Income")
  Transaction.create!(user_id:u1.id, amount:22,action:"Income")
  Transaction.create!(user_id:u2.id, amount:12,action:"Income")
  Transaction.create!(user_id:u3.id, amount:12,action:"Income")
  Transaction.create!(user_id:u4.id, amount:22,action:"Income")
  Transaction.create!(user_id:u4.id, amount:12,action:"Income")
  Transaction.create!(user_id:u1.id, amount:22,action:"Income")
  Transaction.create!(user_id:u2.id, amount:12,action:"Income")
  Transaction.create!(user_id:u4.id, amount:22,action:"Income")
  Transaction.create!(user_id:u3.id, amount:12,action:"Income")
  Transaction.create!(user_id:u4.id, amount:15,action:"Income")
  Transaction.create!(user_id:u3.id, amount:14,action:"Income")
  Transaction.create!(user_id:u3.id, amount:16,action:"Income")
  Transaction.create!(user_id:u5.id, amount:17,action:"Income")
  Transaction.create!(user_id:u4.id, amount:12,action:"Income")
  Transaction.create!(user_id:u5.id, amount:14,action:"Income")
  Transaction.create!(user_id:u5.id, amount:11,action:"Income")
  Transaction.create!(user_id:u1.id, amount:13,action:"Income")

  c+=1
end

Transaction.create!(user_id:u3.id, amount:-400,action:"Spent")
Transaction.create!(user_id:u4.id, amount:-200,action:"Spent")
Transaction.create!(user_id:u4.id, amount:12,action:"Income")
Transaction.create!(user_id:u3.id, amount:14,action:"Income")
Transaction.create!(user_id:u3.id, amount:16,action:"Income")
Transaction.create!(user_id:u5.id, amount:-550,action:"Spent")
Transaction.create!(user_id:u4.id, amount:12,action:"Income")
Transaction.create!(user_id:u5.id, amount:14,action:"Income")
Transaction.create!(user_id:u5.id, amount:11,action:"Income")
Transaction.create!(user_id:u1.id, amount:-430,action:"Spent")