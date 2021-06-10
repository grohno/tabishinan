Faker::Config.locale = :ja

name = "yukiyukiyuki"
email = "yuki@ohno.com"
password = "yukiyuki"
self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
User.create!(name: name,
             email: email,
             password: password,
             password_confirmation: password,
             self_introduction: self_introduction,
             image: open("#{Rails.root}/db/user_images/user_image_1.jpg"),
             admin: true,
             )

name = "kazukazukazu"
email = "kazu@ohno.com"
password = "kazukazu"
self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
User.create!(name: name,
            email: email,
            password: password,
            password_confirmation: password,
            self_introduction: self_introduction,
            image: open("#{Rails.root}/db/user_images/user_image_2.jpg"),
            admin: false
            )

name = "hisahisahisa"
email = "hisa@ohno.com"
password = "hisahisa"
self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
User.create!(name: name,
            email: email,
            password: password,
            password_confirmation: password,
            self_introduction: self_introduction,
            image: open("#{Rails.root}/db/user_images/user_image_3.jpg"),
            admin: false
            )

name = "masamasamasa"
email = "masa@ohno.com"
password = "masamasa"
self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
User.create!(name: name,
            email: email,
            password: password,
            password_confirmation: password,
            self_introduction: self_introduction,
            image: open("#{Rails.root}/db/user_images/user_image_4.jpg"),
            admin: false
            )

16.times do |n|
  name = Faker::Games::Pokemon.name
  email = Faker::Internet.email
  password = "password"
  self_introduction = "## ここに自己紹介文が入ります。\r\n- マークダウン形式で記入できます。\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
  image_num = n + 5
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               self_introduction: self_introduction,
               image: open("#{Rails.root}/db/user_images/user_image_#{image_num}.jpg"),
               admin: false
               )
end

6.times do |n|
  title = "旅のタイトルテキストテキストテキスト"
  content = "# ここに本文テキストが入ります。\r\n\r\n## 見出しテスト\r\n\r\n### 見出しテスト\r\n\r\n> 引用テスト\r\n> 引用テスト\r\n> 引用テスト\r\n\r\n- リスト\r\n- リスト\r\n- リスト\r\n\r\n`hogehogefugafuga`\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```\r\n\r\nhttps://www.google.com/"
  prefecture = n + 1
  address = "◯◯市◯◯◯町◯◯丁目◯◯番◯◯号"
  note = "### 所在地備考をマークダウン形式で記入できます\r\n\r\n- リスト\r\n- リスト\r\n- リスト\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
  user_id = 1
  Guide.create!(title: title,
               content: content,
               prefecture: prefecture,
               address: address,
               note: note,
               user_id: user_id,
               )
end

6.times do |n|
  title = "旅のタイトルテキストテキストテキスト"
  content = "# ここに本文テキストが入ります。\r\n\r\n## 見出しテスト\r\n\r\n### 見出しテスト\r\n\r\n> 引用テスト\r\n> 引用テスト\r\n> 引用テスト\r\n\r\n- リスト\r\n- リスト\r\n- リスト\r\n\r\n`hogehogefugafuga`\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```\r\n\r\nhttps://www.google.com/"
  prefecture = n + 7
  address = "◯◯市◯◯◯町◯◯丁目◯◯番◯◯号"
  note = "### 所在地備考をマークダウン形式で記入できます\r\n\r\n- リスト\r\n- リスト\r\n- リスト\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
  user_id = 2
  Guide.create!(title: title,
               content: content,
               prefecture: prefecture,
               address: address,
               note: note,
               user_id: user_id,
               )
end

14.times do |n|
  title = "旅のタイトルテキストテキストテキスト"
  content = "# ここに本文テキストが入ります。\r\n\r\n## 見出しテスト\r\n\r\n### 見出しテスト\r\n\r\n> 引用テスト\r\n> 引用テスト\r\n> 引用テスト\r\n\r\n- リスト\r\n- リスト\r\n- リスト\r\n\r\n`hogehogefugafuga`\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```\r\n\r\nhttps://www.google.com/"
  prefecture = n + 13
  address = "◯◯市◯◯◯町◯◯丁目◯◯番◯◯号"
  note = "### 所在地備考をマークダウン形式で記入できます\r\n\r\n- リスト\r\n- リスト\r\n- リスト\r\n\r\n```\r\nhello world!\r\nhello Ruby on Rails!\r\n```"
  user_id = n + 3
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
