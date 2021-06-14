require 'rails_helper'
RSpec.describe 'ユーザー機能', type: :system do
  describe 'ログイン機能 - 編集機能テスト' do
    context '未ログインのユーザーが任意の詳細ページを訪問した場合' do
      it '編集のリンクが表示されない' do
        @user = FactoryBot.create(:user)
        guide_search1 = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit root_path
        click_on 'みんなのガイドブックを見る！'
        click_on '詳細を見る'
        expect(page).to have_content 'guide_search_title1_and_3'
        expect(page).not_to have_content '編集'
      end
    end
    context '未ログインのユーザーが任意の編集ページを訪問した場合' do
      it 'ログイン画面へリダイレクトされる' do
        @user = FactoryBot.create(:user)
        guide = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit root_path
        visit edit_guide_path(guide.id)
        sleep(0.5)
        expect(page).to have_content 'ログイン'
      end
    end
    context 'ログインユーザーが、他者の作成したページの詳細画面を訪問した場合' do
      it '編集のリンクが表示されない' do
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
        expect(page).to have_content 'guide_search_title1_and_3'
        expect(page).not_to have_content '編集'
      end
    end
    context 'ログインユーザーが、他者の作成したページの編集画面を訪問した場合' do
      it ' 旅ガイド一覧ページへリダイレクトされる' do
        @user = FactoryBot.create(:user)
        @user2 = FactoryBot.create(:user2)
        guide = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "user2@example.com"
        fill_in "パスワード", with: "password2"
        within '.actions' do
          click_on 'ログイン'
        end
        visit edit_guide_path(guide.id)
        sleep(0.5)
        expect(page).to have_content '旅ガイドページ一覧'
      end
    end
  end
  describe 'ログイン機能 - 削除機能テスト' do
    context '未ログインのユーザーが任意の詳細ページを訪問した場合' do
      it '削除のリンクが表示されない' do
        @user = FactoryBot.create(:user)
        guide_search1 = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit root_path
        click_on 'みんなのガイドブックを見る！'
        click_on '詳細を見る'
        expect(page).to have_content 'guide_search_title1_and_3'
        expect(page).not_to have_content '削除'
      end
    end
    context 'ログインユーザーが、他者の作成したページの詳細画面を訪問した場合' do
      it '削除のリンクが表示されない' do
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
        expect(page).to have_content 'guide_search_title1_and_3'
        expect(page).not_to have_content '削除'
      end
    end
  end
end
