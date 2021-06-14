FactoryBot.define do
  factory :user do
    name { "user1" }
    email { "user1@example.com" }
    password { "password1" }
    admin { false }
  end
  factory :user2, class: "User" do
    name { "user2" }
    email { "user2@example.com" }
    password { "password2" }
    admin { false }
  end
  factory :admin_user, class: "User" do
    name { "admin_user" }
    name { "test_user2" }
    email { "user2@example.com" }
    password { "password2" }
    admin { true }
  end
end
