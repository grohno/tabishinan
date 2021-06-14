require 'rails_helper'
RSpec.describe '管理者権限機能', type: :system do
  describe '管理者ログインテスト' do
    context '管理者ユーザーがログインした場合' do
      it '管理画面：ユーザー一覧ページに遷移する' do
        @user = FactoryBot.create(:user)
        @admin_user = FactoryBot.create(:admin_user)
        guide = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "admin_user@example.com"
        fill_in "パスワード", with: "passwordadmin"
        within '.actions' do
          click_on 'ログイン'
        end
        expect(page).to have_content '管理画面：ユーザー一覧'
      end
    end
    context '一般ユーザーが管理者ページに遷移した場合' do
      it '旅ガイド一覧ページへリダイレクトされる' do
        @user = FactoryBot.create(:user)
        @admin_user = FactoryBot.create(:admin_user)
        guide = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "user1@example.com"
        fill_in "パスワード", with: "password1"
        within '.actions' do
          click_on 'ログイン'
        end
        visit admin_users_path
        expect(page).to have_content '旅ガイドページ一覧'
      end
    end
  end
  describe '新規登録テスト' do
    context '管理者ユーザーがログインした場合' do
      it '新規ユーザーを登録できる' do
        @user = FactoryBot.create(:user)
        @admin_user = FactoryBot.create(:admin_user)
        guide = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "admin_user@example.com"
        fill_in "パスワード", with: "passwordadmin"
        within '.actions' do
          click_on 'ログイン'
        end
        click_on '新規登録'
        fill_in "名前", with: "new_create_user"
        fill_in "メールアドレス", with: "new_create_user@example.com"
        fill_in "パスワード", with: "password_new"
        fill_in "確認用パスワード", with: "password_new"
        page.accept_confirm do
          click_on '登録する'
        end
        expect(page).to have_content 'new_create_userさん'
      end
    end
  end
  describe 'ユーザー情報編集テスト' do
    context '管理者ユーザーがログインした場合' do
      it '他ユーザーの情報を編集できる' do
        @user = FactoryBot.create(:user)
        @admin_user = FactoryBot.create(:admin_user)
        guide = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "admin_user@example.com"
        fill_in "パスワード", with: "passwordadmin"
        within '.actions' do
          click_on 'ログイン'
        end
        within '.user_list ul li:first-child' do
          page.accept_confirm do
            click_on 'ユーザー情報編集'
          end
        end
        fill_in "名前", with: "edit_user1"
        fill_in "パスワード", with: "password1"
        fill_in "確認用パスワード", with: "password1"
        page.accept_confirm do
          click_on '更新する'
        end
        expect(page).to have_content 'edit_user1さん'
      end
    end
  end
  describe 'ユーザー情報削除テスト' do
    context '管理者ユーザーがログインした場合' do
      it '他ユーザーの情報を削除できる' do
        @user = FactoryBot.create(:user)
        @admin_user = FactoryBot.create(:admin_user)
        guide = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "admin_user@example.com"
        fill_in "パスワード", with: "passwordadmin"
        within '.actions' do
          click_on 'ログイン'
        end
        within '.user_list ul li:first-child' do
          page.accept_confirm do
            click_on 'ユーザー情報削除'
          end
        end
        expect(page).not_to have_content 'user1さん'
      end
    end
  end
  describe '旅ガイドページの編集テスト' do
    context '管理者ユーザーがログインした場合' do
      it '他者の作成した旅ガイドページの編集ができる' do
        @user = FactoryBot.create(:user)
        @admin_user = FactoryBot.create(:admin_user)
        guide = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "admin_user@example.com"
        fill_in "パスワード", with: "passwordadmin"
        within '.actions' do
          click_on 'ログイン'
        end
        visit guide_path(guide.id)
        page.accept_confirm do
          click_on '編集'
        end
        fill_in "タイトル", with: "guide_update_title"
        fill_in "本文", with: "guide_update_content"
        page.accept_confirm do
          click_on '更新する'
        end
        sleep(0.5)
        expect(page).to have_content 'guide_update_title'
      end
    end
  end
  describe '旅ガイドページの編集テスト' do
    context '管理者ユーザーがログインした場合' do
      it '他者の作成した旅ガイドページの削除ができる' do
        @user = FactoryBot.create(:user)
        @admin_user = FactoryBot.create(:admin_user)
        guide = FactoryBot.create(:guide_search1, user_id: @user.id)
        visit new_user_session_path
        fill_in "メールアドレス", with: "admin_user@example.com"
        fill_in "パスワード", with: "passwordadmin"
        within '.actions' do
          click_on 'ログイン'
        end
        visit guide_path(guide.id)
        page.accept_confirm do
          click_on '削除'
        end
        sleep(0.5)
        expect(page).not_to have_content 'guide_search_title1_and_3'
      end
    end
  end
end
