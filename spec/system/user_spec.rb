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
  describe 'ユーザー情報 - 閲覧機能テスト' do
    context '未ログインのユーザーが旅ガイド一覧ページを訪問した場合' do
      it 'マイページのリンクが表示されない' do
        @user = FactoryBot.create(:user)
        guide_search1 = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit root_path
        click_on 'みんなのガイドブックを見る！'
        expect(page).to have_content '新規登録'
        expect(page).to have_content 'ログイン'
        expect(page).not_to have_content 'マイページ'
      end
    end
    context '未ログインのユーザーが旅ガイド詳細ページを訪問した場合' do
      it 'ユーザー詳細ページへのリンクが表示されない' do
        @user = FactoryBot.create(:user)
        guide_search1 = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit root_path
        click_on 'みんなのガイドブックを見る！'
        click_on '詳細を見る'
        expect(page).not_to have_content '詳細を見る'
      end
    end
    context 'ログインユーザーが旅ガイド一覧ページを訪問した場合' do
      it 'マイページへ遷移できる' do
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
      end
    end
    context 'ログインユーザーが旅ガイド詳細ページを訪問した場合' do
      it 'ユーザー詳細ページへ遷移できる' do
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
        expect(page).to have_content "#{@user.name}さんのページ"
      end
    end
  end
  describe 'ユーザー情報 - 編集機能テスト' do
    context 'ログインユーザーが他者のユーザー詳細ページを訪問した場合' do
      it 'ユーザー情報編集のリンクが表示されない' do
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
        expect(page).not_to have_content 'ユーザー情報編集'
      end
    end
    context 'ログインユーザーがマイページを訪問した場合' do
      it 'ユーザー情報を編集できる' do
        @user = FactoryBot.create(:user)
        visit new_user_session_path
        fill_in "メールアドレス", with: "user1@example.com"
        fill_in "パスワード", with: "password1"
        within '.actions' do
          click_on 'ログイン'
        end
        click_on 'マイページ'
        page.accept_confirm do
          click_on 'ユーザー情報編集'
        end
        fill_in "名前", with: "edit_user2"
        fill_in "パスワード", with: "password2"
        fill_in "確認用パスワード", with: "password2"
        page.accept_confirm do
          click_on '更新する'
        end
        expect(page).to have_content 'edit_user2さんのページ'
      end
    end
  end
end
