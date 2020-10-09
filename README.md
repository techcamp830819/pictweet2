#　概要

MVCモデルを基本として各種機能を実装した
投稿型アプリケーション

URL：https://tweet2-28979.herokuapp.com/

トップページ画面
https://gyazo.com/272ff82032dfae0d4efcca7c245eef3b

新規登録画面
https://gyazo.com/27ed373d0abdd4ad710cc08fd4b5851a

#　機能
* ユーザー登録・ログイン機能
* ユーザーマイページ
* コメント機能
* 一覧機能
* 投稿機能
* 編集機能
* 削除機能
* 画像投稿機能

#　開発環境
* Ruby 
* Rails 
* MySQL

# テーブル設計

## users テーブル

| Column             | Type   | Options                       |
| ------------------ | ------ | ------------------------------|
| nickname           | string | null: false                   |
| email              | string | null: false, default          |
| password           | string | null: false, default          |

### Association

- has_many :tweets
- has_many :comments

## tweets テーブル

| Column             | Type   | Options                       |
| ------------------ | ------ | ------------------------------|
| user_id            | string | null: false                   |
| text               | string | null: false                   |
| image              | text   | null: false                   |

### Association

- belongs_to :user
- has_many   :comments

## comments テーブル

| Column             | Type   | Options                       |
| ------------------ | ------ | ------------------------------|
| user_id            | integer| null: false                   |
| tweet_id           | integer| null: false                   |
| text               | text   | null: false                   |

### Association

- belongs_to :user
- belongs_to :tweet
