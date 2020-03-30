# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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
https://user-images.githubusercontent.com/60599265/77893927-87b74680-72af-11ea-8bcf-6c83c6ddcf25.PNG
- 登録したメールメールアドレスとパスワードを入力する事でログインできます。
- 新規ユーザー登録画面へ遷移する事が出来ます。

## 新規ユーザー登録
https://user-images.githubusercontent.com/60599265/77894171-e41a6600-72af-11ea-82ac-723417685c14.PNG
- 名前、メールアドレス、パスワードを入力する事で登録する事が出来ます。
- 登録に必須ではありませんが、同時に電話番号と自己紹介文を作成する事が出来ます。他のメンバーに自分をアピールできます。

## 会社一覧
https://user-images.githubusercontent.com/60599265/77894390-2e9be280-72b0-11ea-8b02-786279f722d8.PNG
- 自分の参加する会社の一覧を見る事が出来ます。またクリックすると会社の案件一覧画面に遷移できます。
- 右上の矢印アイコンをクリックするとログアウトする事が出来ます。
- 右上の歯車アイコンをクリックするとユーザー情報編集画面に遷移する事が出来ます。
- 右上の登録ボタンをクリックすると自分が経営する会社を登録し、メンバーを追加するページに遷移する事が出来ます。

## 自分の会社を登録
https://user-images.githubusercontent.com/60599265/77894816-cdc0da00-72b0-11ea-88ec-682b7776fe82.PNG
- 自分の会社名を入力する事で、会社を登録する事が出来ます。
- メンバーを追加する事で、そのメンバーは自分の会社一覧画面に今登録した会社が表示されます。
- 左上の矢印アイコンをクリックする事で、一つ前の画面に戻る事が出来ます。

## ユーザー情報編集
https://user-images.githubusercontent.com/60599265/77895073-31e39e00-72b1-11ea-8aab-82894254d827.PNG
- ユーザーの情報を編集する事が出来ます。
- 左上の矢印アイコンをクリックする事で、一つ前の画面に戻る事が出来ます。


## 案件一覧
https://user-images.githubusercontent.com/60599265/77895170-593a6b00-72b1-11ea-88df-666c244f81dd.PNG
- 自分の参加する案件の一覧を見る事が出来ます。またクリックすると案件の詳細画面に遷移する事が出来ます。
- メンバー追加のタブをクリックすると会社のメンバーを追加する事ができる画面に遷移する事が出来ます。
- 新規登録ボタンをクリックすると、新規案件登録画面に遷移します。
- 左上の矢印アイコンをクリックする事で、会社一覧画面に戻る事が出来ます。

## 新規案件登録
https://user-images.githubusercontent.com/60599265/77895757-32c8ff80-72b2-11ea-8071-00555ea59b70.PNG
https://user-images.githubusercontent.com/60599265/77896022-905d4c00-72b2-11ea-964b-62b168a424bf.PNG
- 新規案件を登録する事が出来ます。案件の名前や住所、人数、時間、詳細な内容を入力する事が出来ます。
- メンバー追加のタブをクリックする事で、会社に所属するメンバーの中から案件に参加するメンバーを選ぶ事が出来ます。
- メンバーを追加する際は、テキストボックスにユーザー名を入力してください。文字を入力する毎に、該当するメンバー名が表示され、追加するボタンを押す事で追加する事が出来ます。
- 左上の矢印アイコンをクリックする事で、案件一覧画面に戻る事が出来ます。


## 案件詳細
https://user-images.githubusercontent.com/60599265/77896202-de724f80-72b2-11ea-918c-7c5e31945a2f.PNG
- 案件の詳細を確認する事が出来ます。
- 案件を編集するボタンをクリックする事で案件編集画面に遷移する事が出来ます。
- メンバーを表示タブをクリックする事で、参加メンバー一覧画面に遷移する事が出来ます。
- メッセージタブをクリックする事で、案件内のメンバーでメッセージを送り合う画面に遷移する事が出来ます。
- 左上の矢印アイコンをクリックする事で、案件一覧画面に戻る事が出来ます。


## メンバー一覧
https://user-images.githubusercontent.com/60599265/77896645-90118080-72b3-11ea-93f5-a6eaba074cb4.PNG
- メンバーの一覧を見る事が出来ます。またメンバー名をクリックする事で、メンバーの詳細情報画面に遷移する事が出来ます。
- 左上の矢印アイコンをクリックする事で、案件一覧画面に戻る事が出来ます。


## メッセージ
https://user-images.githubusercontent.com/60599265/77897022-1332d680-72b4-11ea-8c83-462661d4ec53.PNG
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
## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email   |string|null: false,unique: true|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :messages
- has_many :groups, through: :groups_users
- has_many :groups_users

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|image   |string||
|body    |text||
|user_id |integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :messages
- has_many :users, through: :groups_users
- has_many :groups_users
