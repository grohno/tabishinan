require 'rails_helper'

describe 'ガイドモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    context 'ガイドのタイトルが空の場合' do
      it 'バリデーションにひっかる' do
        user = FactoryBot.create(:user)
        guide = Guide.new(title: '', content: '失敗テスト', user_id: user.id)
        expect(guide).not_to be_valid
      end
    end
    context 'ガイドのタイトルと本文に内容が記載されている場合' do
      it 'バリデーションが通る' do
        user = FactoryBot.create(:user)
        guide = Guide.new(title: '成功テスト', content: '成功テスト', user_id: user.id)
        expect(guide).to be_valid
      end
    end
    context 'ガイドのタイトルと本文に内容が記載され、画像が登録された場合' do
      it 'バリデーションが通る' do
        guide = FactoryBot.create(:guide)
        expect(guide).to be_valid
      end
    end
    context 'ガイドのタイトルと本文に内容が記載され、画像が複数枚登録された場合' do
      it 'バリデーションが通る' do
        user = FactoryBot.create(:user)
        guide = FactoryBot.create(:guide_pictures, user_id: user.id)
        expect(guide).to be_valid
      end
    end
  end
end
