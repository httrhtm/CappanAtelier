# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

areas = Area.create([
  {name: '千代田区'},
  {name: '中央区'},
  {name: '港区'},
  {name: '新宿区'},
  {name: '文京区'},
  {name: '台東区'},
  {name: '墨田区'},
  {name: '江東区'},
  {name: '品川区'},
  {name: '目黒区'},
  {name: '大田区'},
  {name: '世田谷区'},
  {name: '渋谷区'},
  {name: '中野区'},
  {name: '杉並区'},
  {name: '豊島区'},
  {name: '北区'},
  {name: '荒川区'},
  {name: '板橋区'},
  {name: '練馬区'},
  {name: '足立区'},
  {name: '葛飾区'},
  {name: '江戸川区'},
])

products = Product.create([
  {name: '名刺'},
  {name: 'ショップカード'},
  {name: 'ポストカード'},
  {name: '招待状'},
  {name: 'タグ'},
  {name: 'ポスター'},
  {name: 'チラシ'},
  {name: '封筒'},
  {name: 'コースター'},
  {name: '下げ札'},
  {name: 'カタログ・パンフレット'},
  {name: '写真集'},
  {name: '台紙'},
  {name: 'オリジナル文具'},
  {name: '紙袋'},
  {name: '包装紙'},
  {name: 'パッケージ'},
  {name: 'カレンダー'},
  {name: '年賀状'},
])