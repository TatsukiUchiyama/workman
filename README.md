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
WORKER

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
