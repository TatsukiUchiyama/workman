
# アプリ名
WORKERS

# 概要
会社とそこで働く人がコミュニケーションを取るためのツール

# 本番環境
http://52.192.127.230/

ログイン情報（テスト用）
- Eメール：test.test@gmail.com
- パスワード：11111111

# 制作背景(意図)
私が前職で仕事をしていた時、社員が６名で残りの作業員は下請けの日雇い労働者でした。
工程管理の方はその方々ひとりひとりにメールを送って仕事の連絡をしていました。
その仕事を少しでも簡略化する方法を考えながら本アプリケーションを開発しました。

# DEMO
##  ログイン
![ログイン画面](https://user-images.githubusercontent.com/60599265/77934556-37f67080-72eb-11ea-8ff3-46e750922159.JPG)
- 登録したメールメールアドレスとパスワードを入力する事でログインできます。
- 新規ユーザー登録画面へ遷移する事が出来ます。

## 新規ユーザー登録
![ユーザー登録画面](https://user-images.githubusercontent.com/60599265/77934636-4f355e00-72eb-11ea-8e21-b92e2da82c72.JPG)
- 名前、メールアドレス、パスワードを入力する事で登録する事が出来ます。
- 登録に必須ではありませんが、同時に電話番号と自己紹介文を作成する事が出来ます。他のメンバーに自分をアピールできます。

## 会社一覧
![会社一覧画面](https://user-images.githubusercontent.com/60599265/77934664-5ceae380-72eb-11ea-9739-624cffbed5f9.JPG)
- 自分の参加する会社の一覧を見る事が出来ます。またクリックすると会社の案件一覧画面に遷移できます。
- 右上の矢印アイコンをクリックするとログアウトする事が出来ます。
- 右上の歯車アイコンをクリックするとユーザー情報編集画面に遷移する事が出来ます。
- 右上の登録ボタンをクリックすると自分が経営する会社を登録し、メンバーを追加するページに遷移する事が出来ます。

## 自分の会社を登録

![会社登録画面](https://user-images.githubusercontent.com/60599265/77934702-6e33f000-72eb-11ea-95c1-dbc17fbf20b6.JPG)
- 自分の会社名を入力する事で、会社を登録する事が出来ます。
- メンバーを追加する事で、そのメンバーは自分の会社一覧画面に今登録した会社が表示されます。
- 左上の矢印アイコンをクリックする事で、一つ前の画面に戻る事が出来ます。

## ユーザー情報編集
![ユーザー編集画面](https://user-images.githubusercontent.com/60599265/77934746-7e4bcf80-72eb-11ea-8ca8-0371c13fc448.JPG)
- ユーザーの情報を編集する事が出来ます。
- 左上の矢印アイコンをクリックする事で、一つ前の画面に戻る事が出来ます。


## 案件一覧
![案件一覧画面](https://user-images.githubusercontent.com/60599265/77934834-9c193480-72eb-11ea-8838-0d37ad8def03.JPG)
- 自分の参加する案件の一覧を見る事が出来ます。またクリックすると案件の詳細画面に遷移する事が出来ます。
- メンバー追加のタブをクリックすると会社のメンバーを追加する事ができる画面に遷移する事が出来ます。
- 新規登録ボタンをクリックすると、新規案件登録画面に遷移します。
- 左上の矢印アイコンをクリックする事で、会社一覧画面に戻る事が出来ます。

## 新規案件登録
![案件登録画面](https://user-images.githubusercontent.com/60599265/77934953-c23ed480-72eb-11ea-8f9b-60337e4e089e.JPG)
![案件ユーザー追加画面](https://user-images.githubusercontent.com/60599265/77934937-bbb05d00-72eb-11ea-93eb-6fa4cbd24d5a.JPG)
- 新規案件を登録する事が出来ます。案件の名前や住所、人数、時間、詳細な内容を入力する事が出来ます。
- メンバー追加のタブをクリックする事で、会社に所属するメンバーの中から案件に参加するメンバーを選ぶ事が出来ます。
- メンバーを追加する際は、テキストボックスにユーザー名を入力してください。文字を入力する毎に、該当するメンバー名が表示され、追加するボタンを押す事で追加する事が出来ます。
- 左上の矢印アイコンをクリックする事で、案件一覧画面に戻る事が出来ます。


## 案件詳細
![案件詳細画面](https://user-images.githubusercontent.com/60599265/77935023-daaeef00-72eb-11ea-8bcb-e41cb33cea1b.JPG)
- 案件を編集するボタンをクリックする事で案件編集画面に遷移する事が出来ます。
- メンバーを表示タブをクリックする事で、参加メンバー一覧画面に遷移する事が出来ます。
- メッセージタブをクリックする事で、案件内のメンバーでメッセージを送り合う画面に遷移する事が出来ます。
- 左上の矢印アイコンをクリックする事で、案件一覧画面に戻る事が出来ます。


## メンバー一覧
![案件メンバー画面](https://user-images.githubusercontent.com/60599265/77935059-e7cbde00-72eb-11ea-9007-b613df446a56.JPG)
- メンバーの一覧を見る事が出来ます。またメンバー名をクリックする事で、メンバーの詳細情報画面に遷移する事が出来ます。
- 左上の矢印アイコンをクリックする事で、案件一覧画面に戻る事が出来ます。


## メッセージ

![メッセージ画面](https://user-images.githubusercontent.com/60599265/77935089-f2867300-72eb-11ea-9f30-4e140d5390ab.JPG)
- 案件に参加するメンバーでメッセージを送り合う事が出来ます。
- 左上の矢印アイコンをクリックする事で、案件一覧画面に戻る事が出来ます。



# 工夫したポイント
- 想定する利用者を考えた上でスマートフォンを前提としたレイアウトで作成しました。
- グループの中に小グループを作成させる事で、不要な情報を与えすぎないようにしました。
- JSを利用したユーザー検索機能を実装する事でストレス無くユーザーを選択できるようにしました。
- ユーザー登録時の情報に不備があった場合は、送信読み込みをさせないようにし、登録情報が消える事がないようにしました。

# 使用技術（開発環境）
## バックエンド
Ruby, Ruby on Rails

## フロントエンド
Haml, sass, JavaScript, JQuery, Ajax

## データベース
MySQL, SequelPro

## インフラ
AWS(EC2), Capistrano

## Webサーバ（本番環境）
nginx

## アプリケーションサーバ（本番環境）
unicorn

## ソース管理
GitHub, GitHubDesktop

## エディタ
Visual Studio Code

# 今後実装したい機能（課題）
- ユーザーと会社の紐付けに役職を付与し、案件内容の編集などの権限を与える機能
- メッセージ機能において相手からの送信が自動的に更新される機能
- ユーザーが一対一でメッセージを送る事ができる機能
- 会社や案件を削除する機能
- 会社や案件の追加、メッセージが送られてきた際に、端末に通知が送られる機能



# WORKRES DB設計


## usersテーブル
|Column     |Type  |Options    |
|-----------|------|-----------|
|name       |string|null: false|
|email      |string|null: false,unique: true|
|password   |string|null: false|
|tell_number|string|           |
|text       |text  |           |
### Association
- has_many :corporations, through: :corporation_user_roles
- has_many :corporation_user_roles


## corporationsテーブル
|Column|Type|Options|
|------|----|-------|
|name|integer|null: false, foreign_key: true|
### Association
- has_many :users, through: :corporation_user_roles
- has_many :corporation_user_roles, dependent: :delete_all
- has_many :projects, dependent: :destroy


## projectsテーブル
|Column     |Type      |Options    |
|-----------|----------|-----------|
|name       |string    |null: false|
|member     |integer   |           |
|time       |string    |           |
|address    |string    |           |
|text       |text      |           |
|corporation|references|null: false, foreign_key: true|
### Association
- belongs_to :corporation
- has_many :users, through: :project_users
- has_many :project_messages, dependent: :delete_all
- has_many :project_users, dependent: :delete_all


## project_messagesテーブル
|Column |Type      |Options    |
|-------|----------|-----------|
|name   |string    |null: false|
|user   |references|null: false, foreign_key: true|
|project|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :project


## corporation_usersテーブル
|Column     |Type      |Options|
|-----------|----------|-------|
|corporation|references|null: false,foreign_key: true|
|user       |references|null: false,foreign_key: true|
### Association
- belongs_to :corporation
- belongs_to :user


## project_usersテーブル
|Column |Type      |Options|
|-------|----------|-------|
|project|references|null: false,foreign_key: true|
|user   |references|null: false,foreign_key: true|
### Association
- belongs_to :project
- belongs_to :user

