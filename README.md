# README

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
  <img src="https://user-images.githubusercontent.com/72502308/102232186-26fd9600-3f32-11eb-880a-4cfbaaa4ca32.gif" width=50%>
</p>

<p align="center">
	  <img src="https://user-images.githubusercontent.com/72502308/102236467-e6544b80-3f36-11eb-8f30-48f94e8e6053.gif" width=50%>
</p>

<h3 align="center">- comments -</h3>

<p align="center">
  <img src="https://user-images.githubusercontent.com/72502308/102237289-ddb04500-3f37-11eb-8699-b985a8e57007.gif" width=50%>
</p>

<h3 align="center">- User Authentication -</h3>

<p align="center">
  <img src="https://user-images.githubusercontent.com/72502308/102237014-84481600-3f37-11eb-8e24-33eefef1107a.gif" width=50%>
</p>

<h3 align="center">- User details -</h3>

<p align="center">
  <img src="https://user-images.githubusercontent.com/72502308/102237200-bbb6c280-3f37-11eb-977a-c309883fbedd.gif" width=50%>
</p>

<h3 align="center">- Style Choice -</h3>

<p align="center">
  <img src="https://user-images.githubusercontent.com/72502308/102237414-fe789a80-3f37-11eb-90b4-aba3f6688919.gif" width=50%>
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