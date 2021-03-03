アプリケーション名 ：    worker_app 
 アプリケーション概要 ： 自動車修理者の納車予定アプリケーション                      
 URL ：             https://carworkerapp.herokuapp.com/          
 利用方法 ：         ユーザーと車の情報、納車日時を紐付けて車の管理をするアプリケーション        
目指した課題解決 ：    納車の予定を把握し、一週間先までの予定を洗い出し、その後の行動すべきことを瞬時に把握できる様にと思い設計しました 
洗い出した要件 ：     車の情報をユーザーと紐付けてこの車は誰が、どこの部分を担当したのか解るように                          
実装予定の機能 :     ユーザーの担当作業の予定をユーザーページで表示 
ローカルでの動作方法 ：Rubyバージョン６　データベース：　mysql2 


# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| --------   | ------ | ----------- |
| name       | string | null: false |
| password   | string | null: false |

### Association
- has_many :cars


## cars テーブル

| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
| car    | string     | null: false       |
| name   | string     | null: false       |
| number | string     | null: false       |
| front  | references | foreign_key: true |
| body   | references | foreign_key: true |
| paint  | references | foreign_key: true |
| price  | integer    |                   |
| date    | date      |                   |

### Association
- belongs_to :user

