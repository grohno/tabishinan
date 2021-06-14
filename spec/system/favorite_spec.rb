require 'rails_helper'
RSpec.describe 'お気に入り機能', type: :system do
  describe 'お気に入り登録機能のテスト' do
    context '未ログインのユーザーが旅ガイド詳細ページを訪問した場合' do
      it '「お気に入り登録する」のリンクが表示されない' do
        @user = FactoryBot.create(:user)
        guide_search1 = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit root_path
        click_on 'みんなのガイドブックを見る！'
        click_on '詳細を見る'
        expect(page).to have_content 'guide_search_title1_and_3'
        expect(page).not_to have_content 'お気に入り登録する'
      end
    end
    context 'ログインユーザーが自分が作成した旅ガイド詳細ページを訪問した場合' do
      it '「お気に入り登録する」のリンクが表示されない' do
        @user = FactoryBot.create(:user)
        guide_search1 = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "user1@example.com"
        fill_in "パスワード", with: "password1"
        within '.actions' do
          click_on 'ログイン'
        end
        click_on '詳細を見る'
        expect(page).to have_content 'guide_search_title1_and_3'
        expect(page).not_to have_content 'お気に入り登録する'
      end
    end
    context 'ログインユーザーが他者が作成した旅ガイド詳細ページを訪問した場合' do
      it 'お気に入り登録ができる' do
        @user = FactoryBot.create(:user)
        @user2 = FactoryBot.create(:user2)
        guide_search1 = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "user2@example.com"
        fill_in "パスワード", with: "password2"
        within '.actions' do
          click_on 'ログイン'
        end
        click_on '詳細を見る'
        click_on 'お気に入り登録する'
        expect(page).to have_content 'お気に入り削除する'
      end
    end
  end
  describe 'お気に入り登録一覧表示機能のテスト' do
    context 'ログインユーザーが任意の旅ガイドページをお気に入り登録をした場合' do
      it 'お気に入り一覧ページでその情報を閲覧することができる' do
        @user = FactoryBot.create(:user)
        @user2 = FactoryBot.create(:user2)
        guide_search1 = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "user2@example.com"
        fill_in "パスワード", with: "password2"
        within '.actions' do
          click_on 'ログイン'
        end
        click_on '詳細を見る'
        click_on 'お気に入り登録する'
        click_on 'マイページ'
        click_on 'お気に入り一覧を見る'
        expect(page).to have_content 'お気に入りしたページ一覧'
        expect(page).to have_content 'guide_search_title1_and_3'
      end
    end
  end
end
