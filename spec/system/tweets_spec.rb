require 'rails_helper'

#ツイート投稿、編集、削除の結合テストコードは省略しています
#ツイート削除の結合テストコードに続いて記述しましょう

RSpec.describe 'ツイート詳細', type: :system do
  before do
    @tweet = FactoryBot.create(:tweet)
  end
  it 'ログインしたユーザーはツイート詳細ページに遷移してコメント投稿欄が表示される' do
    # ログインする
    visit new_user_session_path
    fill_in 'Email', with: @tweet.user.email
    fill_in 'Password', with: @tweet.user.password
    find('input[name="commit"]').click
    expect(current_path).to eq root_path
    # ツイートに「詳細」ボタンがあることを確認する
    
    # 詳細ページに遷移する
    # 詳細ページにツイートの内容が含まれている
    # コメント用のフォームが存在する
  end
  it 'ログインしていない状態でツイート詳細ページに遷移できるもののコメント投稿欄が表示されない' do
    # トップページに移動する
    # ツイートに「詳細」ボタンがあることを確認する
    # 詳細ページに遷移する
    # 詳細ページにツイートの内容が含まれている
    # フォームが存在しないことを確認する
    # 「コメントの投稿には新規登録/ログインが必要です」が表示されていることを確認する
  end
end