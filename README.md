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

## userテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|passward|string|null: false, unique: true|

## Association
has_many :prefecture

## prefectureテーブル
|Column|Type|Options|
|------|----|-------|
|hokkaido|string||
|aomori|string||
|akita|string||
|yamagata|string||
|iwate|string||
|miyagi|string||
|fukushima|string||
|ibaraki|string||
|tochigi|string||
|gunma|string||
|saitama|string||
|chiba|string||
|tokyo|string||
|kanagawa|string||
|niigata|string||
|toyama|string||
|ishikawa|string||
|fukui|string||
|yamanashi|string||
|nagano|string||
|gifu|string||
|shizuoka|string||
|aichi|string||
|shiga|string||
|kyoto|string||
|osaka|string||
|hyogo|string||
|mie|string||
|nara|string||
|wakayama|string||
|tottori|string||
|shimane|string||
|okayama|string||
|hiroshima|string||
|yamaguchi|string||
|kagawa|string||
|ehime|string||
|tokushima|string||
|kochi|string||
|fukuoka|string||
|saga|string||
|nagasaki|string||
|oita|string||
|kumamoto|string||
|miyazaki|string||
|kagoshima|string||
|okinawa|string||

## Association
belongs_to :user