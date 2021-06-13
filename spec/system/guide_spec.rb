require 'rails_helper'
RSpec.describe '旅ガイドCRUD機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
    visit new_user_session_path
    fill_in "メールアドレス", with: "user1@example.com"
    fill_in "パスワード", with: "password1"
    within '.actions' do
      click_on 'ログイン'
    end
  end
  describe '新規作成機能' do
     context '旅ガイドを新規作成した場合' do
       it '作成した旅ガイドが表示される' do
         visit new_guide_path
         fill_in "タイトル", with: "guide_new_title"
         fill_in "本文", with: "guide_new_content"
         page.accept_confirm do
           click_on '登録する'
         end
         expect(page).to have_content 'guide_new_title'
       end
     end
  end
  describe '詳細表示機能' do
     context '任意の旅ガイド詳細画面に遷移した場合' do
       it '該当ページの内容が表示される' do
         visit new_guide_path
         fill_in "タイトル", with: "guide_show_title"
         fill_in "本文", with: "guide_show_content"
         page.accept_confirm do
           click_on '登録する'
         end
         click_on '詳細を見る'
         sleep(0.5)
         expect(page).to have_content 'guide_show_title'
       end
     end
  end
  describe '編集機能' do
     context '任意の旅ガイド編集画面に遷移し、編集ボタンを押した場合' do
       it '該当ページの内容を変更できる' do
         visit new_guide_path
         fill_in "タイトル", with: "guide_edit_title"
         fill_in "本文", with: "guide_edit_content"
         page.accept_confirm do
           click_on '登録する'
         end
         click_on '詳細を見る'
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
  describe '削除機能' do
     context '任意の旅ガイド詳細画面に遷移し、削除ボタンを押した場合' do
       it '該当ページを削除できる' do
         visit new_guide_path
         fill_in "タイトル", with: "guide_delete_title"
         fill_in "本文", with: "guide_delete_content"
         page.accept_confirm do
           click_on '登録する'
         end
         click_on '詳細を見る'
         page.accept_confirm do
           click_on '削除'
         end
         sleep(0.5)
         expect(page).to have_content '旅ガイドを削除しました'
         expect(page).not_to have_content 'guide_delete_title'
       end
     end
  end
end
