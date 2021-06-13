FactoryBot.define do
  factory :guide do
    title { 'guide_title' }
    content { 'guide_content' }
    user { FactoryBot.create(:user)}
    after(:build) do |guide|
      guide.pictures << FactoryBot.build(:picture, order_number: 0, guide: guide)
    end
  end

  factory :picture do
    image   { Rack::Test::UploadedFile.new(File.join(Rails.root, "spec/fixtures/test_image_1.jpg"), 'image/jpg') }
  end

  factory :guide_search1, class: "Guide" do
    title { 'guide_search_title1_and_3' }
    content { 'guide_search_content1' }
    prefecture { 1 }
  end

  factory :guide_search2, class: "Guide" do
    title { 'guide_search_title2' }
    content { 'guide_search_content2' }
    prefecture { 2 }
  end

  factory :guide_search3, class: "Guide" do
    title { 'guide_search_title3' }
    content { 'guide_search_content3' }
    prefecture { 3 }
  end
end
