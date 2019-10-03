# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.create(email: "owner1@owner1", password: "owner123")

Admin.create(email: "admin@admin", password: "admin123")

Facility.create(name: "ホテルニュー淡路", region: "淡路, 関西, 兵庫")