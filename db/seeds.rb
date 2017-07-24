# This file should contain all the record creation needed to seed the database with its default values.
 # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
 #
 # Examples:
 #
 #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
 #   Character.create(name: 'Luke', movie: movies.first)

 # 新增 admin 帳號  User #
   if User.find_by(email: 'admin@rails.com').nil?
     u = User.new
     u.name = '測試管理員'
     u.email = 'admin@rails.com'
     u.nickname = '測試管理員'
     u.password = '111111'
     u.password_confirmation = '111111'
     u.is_admin = true
     u.save
     puts '創建管理員*1'
   else
     puts '已創建過此帳號，不重複新增。'
   end

   # 新增 user 帳號  User #
   if User.find_by(email: 'user@rails.com').nil?
     u = User.new
     u.name = '測試管理員'
     u.email = 'user@rails.com'
     u.nickname = '測試管理員'
     u.password = '111111'
     u.password_confirmation = '111111'
     u.is_admin = true
     u.save
     puts '創建一般用戶*1'
   else
     puts '已創建過此帳號，不重複新增。'
   end

 # 新增幣別  Currency #
   Currency.create!(
     name: '人民币',
     symbol: '¥',
     rate: 0.23
   )

   Currency.create!(
     name: '新台幣',
     symbol: 'NT$',
     rate: 1
   )

   Currency.create!(
     name: 'Euro',
     symbol: '€',
     rate: 0.03
   )

   Currency.create!(
     name: 'US Dollar',
     symbol: '$',
     rate: 0.03
   )

   Currency.create!(
     name: '日円',
     symbol: '¥',
     rate: 3.69
   )

   puts '創建初始幣別*5：人民幣、新台幣、歐元、美金、日圓'
   # 新增廣告  Intro #

   # 新增廣告  Intro #

      # 1
      Intro.create!(
        title: 'Craft Billboard',
        content: '追求卓越的品质，是我們選物的精神',
        link: '#'
      )

      # 2
      Intro.create!(
        title: '酒之灵魂',
        content: '用酒花重新定义你的啤酒',
        link: '#'
      )

      # 3
      Intro.create!(
        title: '生活質感',
        content: '讓啤酒成為日常的一部分',
        link: '#'
      )

      # 4
      Intro.create!(
        title: '桌上风景',
        content: '细微之处，展露你的獨到品味',
        link: '#'
      )

      puts '創建廣告*4'

    # 新增類型  Category #
      CategoryGroup.create!(
        name: '酒花'
      )

      CategoryGroup.create!(
        name: '麦芽'
      )

      CategoryGroup.create!(
        name: '酵母'
      )

      puts '創建類型*3：酒花、麦芽、酵母'

    # 新增分類  Category #
      # 酒花
      # 1
      Category.create!(
        category_group_id: 1,
        name: '香型酒花'
      )

      # 2
      Category.create!(
        category_group_id: 1,
        name: '苦型酒花'
      )

      # 3
      Category.create!(
        category_group_id: 1,
        name: '双效型酒花'
      )

      puts '創建「酒花」分類*3：香花、苦花、双效型酒花'

      # 麦芽
      # 6
      Category.create!(
        category_group_id: 2,
        name: '基础麦芽'
      )

      #7
      Category.create!(
        category_group_id: 2,
        name: '焦香麦芽'
      )

      #8
      Category.create!(
        category_group_id: 2,
        name: '特种麦芽'
      )


      puts '創建「麦芽」分類*4 ：基础麦芽、焦香麦芽、特种麦芽'

      # 酵母
      # 9
      Category.create!(
        category_group_id: 3,
        name: '艾尔酵母'
      )

   	#10
      Category.create!(
        category_group_id: 2,
        name: '拉格酵母'
      )

      puts '創建「酵母」分類*2：艾尔酵母、拉格酵母'

    # 新增品牌  Brand #
      # 1 Barth Haas / 巴特哈斯
      Brand.create!(
      name: 'Barth Haas / 巴特哈斯',

      )

      # 2 Weyermann
      Brand.create!(
      name: 'Weyermann',
      )

      # 3 Fermentis
      Brand.create!(
      name: 'Fermentis',

      )

      puts '創建品牌*3'


   # 新增商品  Product #

     Product.create!(
       name: '卡斯卡特',
       description: '
       GENETIC ORIGIN
   Open pollinated of a Fuggle seedling, itself derived from crosses between Fuggle and the Russian hop Serebrianka.

   AROMA SPECIFICATION
   fruity, citrusy, herbal
       ',
       price: 1,
       quantity: 3,
       category_id: 1,
       brand_id: 1,
       is_hidden: false
     )

     Product.create!(
       name: '世纪',
       description: '
       GENETIC ORIGIN
   Selected from a cross between a Brewers Gold and Fuggle seedling and a selected USDA male with largely Brewers Gold parentage.

   AROMA SPECIFICATION
   lemon, resinous, vanilla
       ',
       price: 1,
       quantity: 5,
       category_id: 2,
       brand_id: 1,
       is_hidden: false
     )

     Product.create!(
       name: '巧克力焦香麦芽',
       description: '
       The chocolate flavor of Briess Chocolate Malt is very complementary when used in higher percentages in Porters, Stouts, Brown Ales, Dunkels and other dark beers. This malt can be used in all styles for color. Sold per pound; fractions accepted.

   Flavor: Rich roasted, coffee, cocoa
   Lovibond: 350
   Color: Brown hues

   Applications:
   1-10% Porters, Stouts, Brown Ales, Dunkel and other dark beers
       ',
       price: 1,
       quantity: 10,
       category_id: 7,
       brand_id: 1,
       is_hidden: false
     )

     Product.create!(
       name: 'BE-134活性干酵母',
       description: '
       YEAST FERMENTIS SAFALE BE-134
   This typical yeast strain is recommended for Belgian Saison-style beers and is characterized by a particularly high attenuation. It gives fruity aromas with a spicy character such as clove notes. This strain will produce highly refreshing and drinkable beers.


   FERMENTATION : High;
   TEMPERATURE : 18-28 бу C;
   TOLERANCE IN ALCOHOL: 8%
   ATTENTION : 90%
   USE : 50/80 g / hl
       ',
       price: 1,
       quantity: 10,
       category_id: 9,
       brand_id: 1,
       is_hidden: false
     )
