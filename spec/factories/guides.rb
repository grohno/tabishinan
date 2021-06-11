FactoryBot.define do
  factory :guide do
    title { 'guide_title' }
    content { 'guide_content' }
    user { FactoryBot.create(:user)}
    after(:build) do |guide|
      guide.pictures << FactoryBot.build(:picture, guide: guide)
    end
  end

  factory :picture do
    image   { Rack::Test::UploadedFile.new(File.join(Rails.root, "spec/fixtures/test_image_1.jpg"), 'image/jpg') }
  end
end
