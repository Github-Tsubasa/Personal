## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|passward|string|null: false, unique: true|

## Association
has_many :prefectures_users
has_many :prefectures, through: :prefectures_users



## prefectures_usersテーブル
|Column|Type|Options|
|------|----|-------|
|users_id|integer|null: false, foreign_key: true|
|prefectures_id|integer||

## Association
belongs_to :prefecture
belongs_to :user



## prefecturesテーブル
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
has_many :prefectures_users
has_many :users, through: :prefectures_users