require 'rails_helper'
RSpec.describe 'フォロー機能', type: :system do
  describe 'フォロー機能のテスト' do
    context 'ログインユーザーが自分のユーザー情報詳細ページを訪問した場合' do
      it '「フォローする」のリンクが表示されない' do
        @user = FactoryBot.create(:user)
        guide_search1 = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "user1@example.com"
        fill_in "パスワード", with: "password1"
        within '.actions' do
          click_on 'ログイン'
        end
        click_on 'マイページ'
        expect(page).to have_content "#{@user.name}さんのページ"
        expect(page).not_to have_button 'フォローする'
      end
    end
    context 'ログインユーザーが他者のユーザー情報詳細ページを訪問した場合' do
      it 'そのユーザーをフォローできる' do
        @user = FactoryBot.create(:user)
        @user2 = FactoryBot.create(:user2)
        guide = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "user2@example.com"
        fill_in "パスワード", with: "password2"
        within '.actions' do
          click_on 'ログイン'
        end
        click_on '詳細を見る'
        click_on '詳細を見る'
        click_on 'フォローする'
        sleep(0.5)
        expect(page).to have_button "フォロー解除"
      end
    end
    context 'ログインユーザーが任意のユーザーをフォローした場合' do
      it 'フォロー一覧ページでその情報を閲覧することができる' do
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
        click_on '詳細を見る'
        click_on 'フォローする'
        click_on 'マイページ'
        click_on 'フォロー一覧を見る'
        expect(page).to have_content 'フォローしたユーザー一覧'
        expect(page).to have_content "#{@user.name}さん"
      end
    end
  end
end
