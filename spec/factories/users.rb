FactoryBot.define do
  factory :user do
    name { "user1" }
    email { "user1@example.com" }
    password { "password1" }
    admin { "一般" }
  end
  factory :admin_user, class: "User" do
    name { "admin_user" }
    name { "test_user2" }
    email { "user2@example.com" }
    password { "password2" }
    admin { "管理者" }
  end
end
