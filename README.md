# README

This README would normally document whatever steps are necessary to get the
application up and running.

## アプリ名

「Today's coordinate」
ファッションコーディネートの写真を投稿出来るアプリです。

## 機能
・投稿画像一覧表示機能
・ユーザー管理機能
・写真投稿機能
・画像詳細画面
・投稿編集・削除機能
・ユーザー詳細画面
・コメント機能

## URL
https://coordinate-31044.herokuapp.com/

# DB 設計

## users table
| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false             |
| encrypted_password | string              | null: false             |
| nickname           | string              | null: false             |
| profile            | text                | null: false             |
| birthday           | date                | null: false             |

### Association

* has_many :coordinate
* has_many :comments

## coordinates table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| user                                | references | foreign_key: true |
| name                                | string     | null: false       |
| explanation                         | text       | null: false       |
| category_id                         | integer    | null: false       |
| tops_brand                          | string     |                   |
| outerwear_brand                     | string     |                   |
| bottoms_brand                       | string     |                   |
| shoes_brand                         | string     |                   | 
| accessories_brand                   | string     |                   | 

### Association

* belongs_to :user
* has_many :comments

## comments table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| user                                | references | foreign_key: true |
| item                                | references | foreign_key: true |

### Association

* belongs_to :coordinate  
* belongs_to :user  


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