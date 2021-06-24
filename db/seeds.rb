Faker::Config.locale = :ja

name = "Guest"
email = "guest@example.com"
password = SecureRandom.urlsafe_base64
uid = SecureRandom.uuid
self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
User.create!(name: name,
             email: email,
             password: password,
             password_confirmation: password,
             self_introduction: self_introduction,
             image: open("#{Rails.root}/db/user_images/user_image_16.jpg"),
             admin: false,
             uid: uid
             )

name = "yukiyukiyuki"
email = "yuki@ohno.com"
password = "yukiyuki"
uid = SecureRandom.uuid
self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
User.create!(name: name,
             email: email,
             password: password,
             password_confirmation: password,
             self_introduction: self_introduction,
             image: open("#{Rails.root}/db/user_images/user_image_1.jpg"),
             admin: true,
             uid: uid
             )

name = "kazukazukazu"
email = "kazu@ohno.com"
password = "kazukazu"
uid = SecureRandom.uuid
self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
User.create!(name: name,
            email: email,
            password: password,
            password_confirmation: password,
            self_introduction: self_introduction,
            image: open("#{Rails.root}/db/user_images/user_image_2.jpg"),
            admin: false,
            uid: uid
            )

name = "hisahisahisa"
email = "hisa@ohno.com"
password = "hisahisa"
uid = SecureRandom.uuid
self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
User.create!(name: name,
            email: email,
            password: password,
            password_confirmation: password,
            self_introduction: self_introduction,
            image: open("#{Rails.root}/db/user_images/user_image_3.jpg"),
            admin: false,
            uid: uid
            )

name = "masamasamasa"
email = "masa@ohno.com"
password = "masamasa"
uid = SecureRandom.uuid
self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
User.create!(name: name,
            email: email,
            password: password,
            password_confirmation: password,
            self_introduction: self_introduction,
            image: open("#{Rails.root}/db/user_images/user_image_4.jpg"),
            admin: false,
            uid: uid
            )

16.times do |n|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  password = "password"
  uid = SecureRandom.uuid
  self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
  image_num = n + 5
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               self_introduction: self_introduction,
               image: open("#{Rails.root}/db/user_images/user_image_#{image_num}.jpg"),
               admin: false,
               uid: uid
               )
end

6.times do |n|
  title = "身近な西行法師の足跡を追って、歴史の過客になろう！"
  content = "# 西行法師の歌枕を、ほんのちょっとめぐる旅\r\n\r\n\r\n### 西行法師ってどんなひと？\r\n\r\n西行法師ときいて、あなたはどんなイメージをもっているでしょうか。昔の有名な歌人？ 高貴なひと？ 諸国を旅した人？ 変わった伝説を色々もってる人？ 法師だからお坊様？\r\n\r\n西行法師は現在の研究をもってしてもなお謎多き人で、かつ後世に多大な影響を与えた貴人であり、歌人であり、僧侶であり、そして何より日本を代表する有名な旅人です。\r\n\r\n### どんな影響をのこしたのか\r\n\r\nミステリアスな人生とロマンあふれる作品に魅せられて、例えばあの俳聖・松尾芭蕉をはじめ、多くの文化人・著名人が、西行法師の歌枕をめぐり、その存在に様々な方法でシンクロし、豊かな作品も数多く世に送り出されました。\r\n\r\n諸国遍歴が容易ではなかった時代は特に、西行法師が旅の中で残したさまざまな歌は、人々の見知らぬ土地への憧れも否応なしにふくらませ、いわゆる「旅をすみか」とするお手本のような存在にもなりました。\r\n\r\n### 旅に生きる\r\n\r\n```\r\n願わくは花の下にて春死なんその如月の望月の頃\r\n```\r\n\r\n> 西行 晩年の歌\r\n> https://ja.wikipedia.org/wiki/%E8%A5%BF%E8%A1%8C#%E6%99%A9%E5%B9%B4%E3%81%AE%E6%AD%8C\r\n\r\n\r\n晩年に、お釈迦様が亡くなった2月15日に生涯を終えたい、と詠んだ西行は73歳に亡くなります。出家をしてから実に約50年！ 西行法師は、まさに日本を代表する旅に生きた人物といえるでしょう。\r\n\r\n\r\n- 西行法師終焉の地として知られる大阪府・弘川寺\r\n\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3289.1171326425606!2d135.650134451016!3d34.47455270270794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60012ba389285091%3A0x54663752f6600343!2z5byY5bed5a-6!5e0!3m2!1sja!2sjp!4v1623745479919!5m2!1sja!2sjp\" width=\"760\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>\r\n\r\n\r\n---\r\n\r\n諸国を行脚した西行法師の足跡や伝説は、それこそ数えきれないほど多く、有名な歌枕は名所旧跡として様々に解説されていますが、今回は◯◯県◯◯市を中心に、あまり目立たない西行さん歌行脚の足跡をめぐってきました！\r\n往時の面影を残す場所、すっかり様変わりしてしまった場所などいろいろですが、身近な西行さんスポットを紹介したいと思います！ 写真とあわせて読んでいただけると嬉しいです！\r\n　\r\n## 歌枕めぐり モデルコース\r\n<iframe src=\"https://www.google.com/maps/d/u/3/embed?mid=1XCee-gPzQAyYmsZkv54Ia3Gekft5_zZA\" width=\"760\" height=\"300\"></iframe>\r\n 　\r\n～略～"
  prefecture = n + 1
  address = "◯◯市◯◯◯町◯◯丁目◯◯番◯◯号"
  note = "### 訪問のポイント\r\n\r\n- 県境をまたいで観光しているので、じっくり旅をするなら上記住所近辺を起点にして宿をとり、電車やバス移動をおすすめします！"
  user_id = 2
  Guide.create!(title: title,
               content: content,
               prefecture: prefecture,
               address: address,
               note: note,
               user_id: user_id,
               )
end

6.times do |n|
  title = "気分転換におすすめ！ イチオシ散歩スポット"
  content = "# 私のとっておきのプチ旅スポット\r\n\r\n混雑した観光地にいかなくっても、◯◯市には旅気分を味わえる魅力的な景色がいっぱい！\r\n日常を忘れさせてくれる、気分転換にぴったりなお散歩コースをご紹介します。\r\n\r\n### まずはレンタサイクルを借りるところから\r\n\r\n今回は午前中から精力的にレンタサイクルを利用しました！\r\nもちろんバスや徒歩でも移動可能です。\r\nレンタサイクルの返却時間が少し早いので、スタート時間や気分にあわせて利用しましょう。\r\nちなみに○○駅のレンタサイクル店では、荷物の一時預かりもしてくれます！\r\n\r\n```\r\n営業時間： 8:00～15:30\r\n定休日： 木曜日\r\n```\r\n\r\n- ○○駅 周辺地図\r\n\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.8278534024985!2d139.76493075104054!3d35.68124053748138!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188bfbd89f700b%3A0x277c49ba34ed38!2z5p2x5Lqs6aeF!5e0!3m2!1sja!2sjp!4v1623747667445!5m2!1sja!2sjp\" width=\"760\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>\r\n\r\n### お昼はぜひ屋外で！\r\n\r\nこの近辺は飲食店も多く、ランチ難民になることなく安心してランチタイムを過ごすことができます。\r\nテイクアウトのお店も多いので、お天気がよければぜひ屋外でランチをお過ごしください！\r\n\r\n### メインスポットでゆったりした時間を\r\n\r\nこの記事のアイキャッチ画像にもなっている風景が、今回のメインスポットです！\r\n日常を忘れて心豊かに過ごせること間違いなし。お一人様でも、気心の知れた人との訪問でも楽しめるスポットだと思います。\r\nぜひのんびりした時間を過ごしてくださいね。\r\n　\r\n## 散策ルートマップ\r\n<iframe src=\"https://www.google.com/maps/d/u/3/embed?mid=1XCee-gPzQAyYmsZkv54Ia3Gekft5_zZA\" width=\"760\" height=\"300\"></iframe>\r\n　\r\n～略～"
  prefecture = n + 7
  address = "◯◯市◯◯◯町◯◯丁目◯◯番◯◯号"
  note = "### 交通機関について\r\n- バスの本数が少ないので、健脚であれば徒歩で移動されることをオススメします\r\n- 上記住所近辺の主要駅◯◯でレンタサイクルを利用できますが、営業終了が少し早めなのでご注意を！"
  user_id = 3
  Guide.create!(title: title,
               content: content,
               prefecture: prefecture,
               address: address,
               note: note,
               user_id: user_id,
               )
end

6.times do |n|
  title = "身近な西行法師の足跡を追って、歴史の過客になろう！"
  content = "# 西行法師の歌枕を、ほんのちょっとめぐる旅\r\n\r\n\r\n### 西行法師ってどんなひと？\r\n\r\n西行法師ときいて、あなたはどんなイメージをもっているでしょうか。昔の有名な歌人？ 高貴なひと？ 諸国を旅した人？ 変わった伝説を色々もってる人？ 法師だからお坊様？\r\n\r\n西行法師は現在の研究をもってしてもなお謎多き人で、かつ後世に多大な影響を与えた貴人であり、歌人であり、僧侶であり、そして何より日本を代表する有名な旅人です。\r\n\r\n### どんな影響をのこしたのか\r\n\r\nミステリアスな人生とロマンあふれる作品に魅せられて、例えばあの俳聖・松尾芭蕉をはじめ、多くの文化人・著名人が、西行法師の歌枕をめぐり、その存在に様々な方法でシンクロし、豊かな作品も数多く世に送り出されました。\r\n\r\n諸国遍歴が容易ではなかった時代は特に、西行法師が旅の中で残したさまざまな歌は、人々の見知らぬ土地への憧れも否応なしにふくらませ、いわゆる「旅をすみか」とするお手本のような存在にもなりました。\r\n\r\n### 旅に生きる\r\n\r\n```\r\n願わくは花の下にて春死なんその如月の望月の頃\r\n```\r\n\r\n> 西行 晩年の歌\r\n> https://ja.wikipedia.org/wiki/%E8%A5%BF%E8%A1%8C#%E6%99%A9%E5%B9%B4%E3%81%AE%E6%AD%8C\r\n\r\n\r\n晩年に、お釈迦様が亡くなった2月15日に生涯を終えたい、と詠んだ西行は73歳に亡くなります。出家をしてから実に約50年！ 西行法師は、まさに日本を代表する旅に生きた人物といえるでしょう。\r\n\r\n\r\n- 西行法師終焉の地として知られる大阪府・弘川寺\r\n\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3289.1171326425606!2d135.650134451016!3d34.47455270270794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60012ba389285091%3A0x54663752f6600343!2z5byY5bed5a-6!5e0!3m2!1sja!2sjp!4v1623745479919!5m2!1sja!2sjp\" width=\"760\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>\r\n\r\n\r\n---\r\n\r\n諸国を行脚した西行法師の足跡や伝説は、それこそ数えきれないほど多く、有名な歌枕は名所旧跡として様々に解説されていますが、今回は◯◯県◯◯市を中心に、あまり目立たない西行さん歌行脚の足跡をめぐってきました！\r\n往時の面影を残す場所、すっかり様変わりしてしまった場所などいろいろですが、身近な西行さんスポットを紹介したいと思います！ 写真とあわせて読んでいただけると嬉しいです！\r\n　\r\n## 歌枕めぐり モデルコース\r\n<iframe src=\"https://www.google.com/maps/d/u/3/embed?mid=1XCee-gPzQAyYmsZkv54Ia3Gekft5_zZA\" width=\"760\" height=\"300\"></iframe>\r\n 　\r\n～略～"
  prefecture = n + 13
  address = "◯◯市◯◯◯町◯◯丁目◯◯番◯◯号"
  note = "### 訪問のポイント\r\n\r\n- 県境をまたいで観光しているので、じっくり旅をするなら上記住所近辺を起点にして宿をとり、電車やバス移動をおすすめします！"
  user_id = n + 4
  Guide.create!(title: title,
               content: content,
               prefecture: prefecture,
               address: address,
               note: note,
               user_id: user_id,
               )
end


6.times do |n|
  title = "気分転換におすすめ！ イチオシ散歩スポット"
  content = "# 私のとっておきのプチ旅スポット\r\n\r\n混雑した観光地にいかなくっても、◯◯市には旅気分を味わえる魅力的な景色がいっぱい！\r\n日常を忘れさせてくれる、気分転換にぴったりなお散歩コースをご紹介します。\r\n\r\n### まずはレンタサイクルを借りるところから\r\n\r\n今回は午前中から精力的にレンタサイクルを利用しました！\r\nもちろんバスや徒歩でも移動可能です。\r\nレンタサイクルの返却時間が少し早いので、スタート時間や気分にあわせて利用しましょう。\r\nちなみに○○駅のレンタサイクル店では、荷物の一時預かりもしてくれます！\r\n\r\n```\r\n営業時間： 8:00～15:30\r\n定休日： 木曜日\r\n```\r\n\r\n- ○○駅 周辺地図\r\n\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3240.8278534024985!2d139.76493075104054!3d35.68124053748138!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60188bfbd89f700b%3A0x277c49ba34ed38!2z5p2x5Lqs6aeF!5e0!3m2!1sja!2sjp!4v1623747667445!5m2!1sja!2sjp\" width=\"760\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>\r\n\r\n### お昼はぜひ屋外で！\r\n\r\nこの近辺は飲食店も多く、ランチ難民になることなく安心してランチタイムを過ごすことができます。\r\nテイクアウトのお店も多いので、お天気がよければぜひ屋外でランチをお過ごしください！\r\n\r\n### メインスポットでゆったりした時間を\r\n\r\nこの記事のアイキャッチ画像にもなっている風景が、今回のメインスポットです！\r\n日常を忘れて心豊かに過ごせること間違いなし。お一人様でも、気心の知れた人との訪問でも楽しめるスポットだと思います。\r\nぜひのんびりした時間を過ごしてくださいね。\r\n　\r\n## 散策ルートマップ\r\n<iframe src=\"https://www.google.com/maps/d/u/3/embed?mid=1XCee-gPzQAyYmsZkv54Ia3Gekft5_zZA\" width=\"760\" height=\"300\"></iframe>\r\n　\r\n～略～"
  prefecture = n + 19
  address = "◯◯市◯◯◯町◯◯丁目◯◯番◯◯号"
  note = "### 交通機関について\r\n- バスの本数が少ないので、健脚であれば徒歩で移動されることをオススメします\r\n- 上記住所近辺の主要駅◯◯でレンタサイクルを利用できますが、営業終了が少し早めなのでご注意を！"
  user_id = n + 10
  Guide.create!(title: title,
               content: content,
               prefecture: prefecture,
               address: address,
               note: note,
               user_id: user_id,
               )
end


2.times do |n|
  title = "身近な西行法師の足跡を追って、歴史の過客になろう！"
  content = "# 西行法師の歌枕を、ほんのちょっとめぐる旅\r\n\r\n\r\n### 西行法師ってどんなひと？\r\n\r\n西行法師ときいて、あなたはどんなイメージをもっているでしょうか。昔の有名な歌人？ 高貴なひと？ 諸国を旅した人？ 変わった伝説を色々もってる人？ 法師だからお坊様？\r\n\r\n西行法師は現在の研究をもってしてもなお謎多き人で、かつ後世に多大な影響を与えた貴人であり、歌人であり、僧侶であり、そして何より日本を代表する有名な旅人です。\r\n\r\n### どんな影響をのこしたのか\r\n\r\nミステリアスな人生とロマンあふれる作品に魅せられて、例えばあの俳聖・松尾芭蕉をはじめ、多くの文化人・著名人が、西行法師の歌枕をめぐり、その存在に様々な方法でシンクロし、豊かな作品も数多く世に送り出されました。\r\n\r\n諸国遍歴が容易ではなかった時代は特に、西行法師が旅の中で残したさまざまな歌は、人々の見知らぬ土地への憧れも否応なしにふくらませ、いわゆる「旅をすみか」とするお手本のような存在にもなりました。\r\n\r\n### 旅に生きる\r\n\r\n```\r\n願わくは花の下にて春死なんその如月の望月の頃\r\n```\r\n\r\n> 西行 晩年の歌\r\n> https://ja.wikipedia.org/wiki/%E8%A5%BF%E8%A1%8C#%E6%99%A9%E5%B9%B4%E3%81%AE%E6%AD%8C\r\n\r\n\r\n晩年に、お釈迦様が亡くなった2月15日に生涯を終えたい、と詠んだ西行は73歳に亡くなります。出家をしてから実に約50年！ 西行法師は、まさに日本を代表する旅に生きた人物といえるでしょう。\r\n\r\n\r\n- 西行法師終焉の地として知られる大阪府・弘川寺\r\n\r\n<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3289.1171326425606!2d135.650134451016!3d34.47455270270794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60012ba389285091%3A0x54663752f6600343!2z5byY5bed5a-6!5e0!3m2!1sja!2sjp!4v1623745479919!5m2!1sja!2sjp\" width=\"760\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>\r\n\r\n\r\n---\r\n\r\n諸国を行脚した西行法師の足跡や伝説は、それこそ数えきれないほど多く、有名な歌枕は名所旧跡として様々に解説されていますが、今回は◯◯県◯◯市を中心に、あまり目立たない西行さん歌行脚の足跡をめぐってきました！\r\n往時の面影を残す場所、すっかり様変わりしてしまった場所などいろいろですが、身近な西行さんスポットを紹介したいと思います！ 写真とあわせて読んでいただけると嬉しいです！\r\n　\r\n## 歌枕めぐり モデルコース\r\n<iframe src=\"https://www.google.com/maps/d/u/3/embed?mid=1XCee-gPzQAyYmsZkv54Ia3Gekft5_zZA\" width=\"760\" height=\"300\"></iframe>\r\n 　\r\n～略～"
  prefecture = 20
  address = "◯◯市◯◯◯町◯◯丁目◯◯番◯◯号"
  note = "### 訪問のポイント\r\n\r\n- 県境をまたいで観光しているので、じっくり旅をするなら上記住所近辺を起点にして宿をとり、電車やバス移動をおすすめします！"
  user_id = n + 2
  Guide.create!(title: title,
               content: content,
               prefecture: prefecture,
               address: address,
               note: note,
               user_id: user_id,
               )
end

1.upto(26) do |n|
  guide_id = n
  image_num = n
  Picture.create!(guide_id: guide_id,
               image: open("#{Rails.root}/db/main_flags/main_flag_image_#{image_num}.jpg"),
               order_number: 0
              )
end

1.upto(26) do |n|
  guide_id = n
  image_num = n
  Picture.create!(guide_id: guide_id,
               image: open("#{Rails.root}/db/pictures/test_image_#{image_num}.jpg"),
               order_number: 1
              )
end

1.upto(26) do |n|
  guide_id = n
  image_num = n + 25
  Picture.create!(guide_id: guide_id,
               image: open("#{Rails.root}/db/pictures/test_image_#{image_num}.jpg"),
               order_number: 2
              )
end

1.upto(26) do |n|
  guide_id = n
  image_num = n + 7
  Picture.create!(guide_id: guide_id,
               image: open("#{Rails.root}/db/pictures/test_image_#{image_num}.jpg"),
               order_number: 3
              )
end

1.upto(26) do |n|
  guide_id = n
  image_num = n + 17
  Picture.create!(guide_id: guide_id,
               image: open("#{Rails.root}/db/pictures/test_image_#{image_num}.jpg"),
               order_number: 4
              )
end

6.times do |n|
  user_id = 1
  guide_id = n + 2
  Favorite.create!(user_id: user_id,
               guide_id: guide_id,
               )
end

6.times do |n|
  user_id = 2
  guide_id = n + 10
  Favorite.create!(user_id: user_id,
               guide_id: guide_id,
               )
end

13.times do |n|
  follower_id = 1
  followed_id = n + 2
  Relationship.create!(follower_id: follower_id,
               followed_id: followed_id,
               )
end

13.times do |n|
  follower_id = 2
  followed_id = n + 3
  Relationship.create!(follower_id: follower_id,
               followed_id: followed_id,
               )
end

1.times do |n|
  sender_id = 2
  recipient_id = 1
  Conversation.create!(sender_id: sender_id,
               recipient_id: recipient_id,
               )
end


4.times do |n|
  body = "メッセージ送信テスト#{n}"
  conversation_id = 1
  user_id = 2
  Message.create!(body: body,
                conversation_id: conversation_id,
                user_id: user_id,
               )
end

4.times do |n|
  body = "メッセージ返信テスト#{n}"
  conversation_id = 1
  user_id = 1
  Message.create!(body: body,
                conversation_id: conversation_id,
                user_id: user_id,
               )
end

4.times do |n|
  body = "メッセージ送信テスト#{n}"
  conversation_id = 1
  user_id = 2
  Message.create!(body: body,
                conversation_id: conversation_id,
                user_id: user_id,
               )
end


13.times do |n|
  sender_id = 1
  recipient_id = n + 3
  Conversation.create!(sender_id: sender_id,
               recipient_id: recipient_id,
               )
end

13.times do |n|
  body = "メッセージ送信テスト#{n}"
  conversation_id = n + 2
  user_id = 1
  Message.create!(body: body,
                conversation_id: conversation_id,
                user_id: user_id,
               )
end

13.times do |n|
  sender_id = 2
  recipient_id = n + 7
  Conversation.create!(sender_id: sender_id,
               recipient_id: recipient_id,
               )
end

13.times do |n|
  body = "メッセージ送信テスト#{n}"
  conversation_id = n + 15
  user_id = 2
  Message.create!(body: body,
                conversation_id: conversation_id,
                user_id: user_id,
               )
end
