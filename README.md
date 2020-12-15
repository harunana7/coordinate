# README

This README would normally document whatever steps are necessary to get the
application up and running.

![6E553F09-5FC4-4EC6-9CD2-5AFFD780DC2F](https://user-images.githubusercontent.com/72502308/102224869-d41fe080-3f29-11eb-8a50-4571af4fb325.gif)

<h2 align = "center">Today's coordinate</h2>

## 🌐 App URL
https://coordinate-31044.herokuapp.com/

## 💬 Usage
Poster Email adress：nana@nanana
PosterPASS：aaaaaa1
GitURL：https://github.com/harunana7/coordinate

## 📦 Features

<h3 align="center">- POST -</h3>

<p align="center">
  <img src="https://user-images.githubusercontent.com/72502308/102232186-26fd9600-3f32-11eb-880a-4cfbaaa4ca32.gif" width=40%>
</p>

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