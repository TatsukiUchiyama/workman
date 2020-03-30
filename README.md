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


# chat-space DB設計

## usersテーブル
|Column     |Type  |Options                 |
|-----------|------|------------------------|
|name       |strign|null: false             |
|email      |string|null: false,unique: true|
|password   |string|null: false             |
|text       |text  |                        |
|tell_number|string|                        |
### Association
- has_many :corporations, through: :corporation_user_roles
- has_many :corporation_user_roles

## corporationsテーブル
|Column|Type|Options|
|-------|------|-------|
|name   |string|       |

### Association
- has_many :users, through: :corporation_user_roles
- has_many :corporation_user_roles
- has_many :projects

## projectsテーブル
|Column     |Type      |Options          |
|-----------|----------|-----------------|
|name       |string    |null: false      |
|member     |integer   |                 |
|time       |string    |                 |
|address    |string    |                 |
|text       |text      |                 |
|corporation|references|foreign_key: true|
### Association
- belongs_to :corporation
- has_many   :users, through: :project_users
- has_many   :project_users
- has_many   :project_messages

## project_messagesテーブル
|Column |Type      |Options          |
|-------|----------|-----------------|
|message|string    |null: false      |
|user   |references|foreign_key: true|
|project|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :project

## project_usersテーブル
|Column |Type      |Options          |
|-------|----------|-----------------|
|project|refarences|foreign_key: true|
|user   |refarences|foreign_key: true|

### association
- belongs_to :project
- belongs_to :user

## corporaiton_usersテーブル
|Column     |Type      |Options          |
|-----------|----------|-----------------|
|corporation|refarences|foreign_key: true|
|user       |refarences|foreign_key: true|

### association
- belongs_to :corporation
- belongs_to :user

