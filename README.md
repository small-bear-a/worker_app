
# worker_app 

 ### _【アプリケーション概要】_  
 ・自動車修理者の納車予定アプリケーション  
 
 ### 【URL】  
 https://carworkerapp.herokuapp.com/  
 
### 【アプリケーションの作成背景】  
・前職で納期のトラブルがあり、その改善策として作成！  
・誰が担当したかを明記することで作業の受け渡しが効率的に行えるようなアプリケーションを作れたらいいのではないかと思い作成！  

### 【利用方法】  
__車両登録__  
&nbsp;ヘッダー部分から「車両情報を記入」をクリック  
&nbsp;必須部分を記述を行えば登録完了！（納車の日程を指定しなければ納車予定ページへ反映されない）  
<br>
__予定納車ページに反映させるには__  
&nbsp;・登録時に日付を指定する  
<br>
&nbsp; ・1.ヘッダー部分の車両情報をクリック  
&nbsp; &nbsp; &nbsp; 2.一覧情報から自動車名をクリックして、詳細ページへ遷移  
&nbsp; &nbsp; &nbsp; 3.データ編集ページをクリックし情報を編集  
__画像イメージ__  
<img width="300px" alt="一覧ページ" src="https://user-images.githubusercontent.com/77313049/110241748-ba74bf00-7f95-11eb-9cc8-9c88d1b90d52.png">
<img width="300px" alt="登録ページ" src="https://user-images.githubusercontent.com/77313049/110241754-c791ae00-7f95-11eb-95fb-a78409556d92.png">
<img width="300px" alt="一覧表示ページ" src="https://user-images.githubusercontent.com/77313049/110241771-e6904000-7f95-11eb-999d-6883ffa09cc8.png">


### 【実装予定の機能】    
・ユーザーの担当作業の予定をユーザーページで表示  
・検索機能の追加  

### 【使用技術】  
・Rails ６.0.0  
・mysql2  
・HTML/CSS  
・VS Code
<br>
#### アカウント情報
・ユーザー名： テスト  
・email: test@test  
・password: 123456  
  
#### アカウント情報２ 

・ユーザー名： サンプル  
・email: sample@sample  
・password: 123456
# テーブル設計

## users テーブル

| Column   | Type    | Options     |
| ---------| ------- | ----------- |
| name     | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |

### Association
- has_many :car


## cars テーブル

| Column | Type       | Options                        |
| -------| ---------- | ------------------------------ |
| car    | string     | null: false                    |
| number | text       | null: false                    |
| name   | integer    | null: false                    |
| front  | references | foreign_key: {to_table: :users |
| body   | references | foreign_key: {to_table: :users |
| paint  | references | foreign_key: {to_teble: :users |
| price  | integer    |                                |
| date   | date       |                    |


### Association
- belongs_to :front, class_name: 'User', optional: true
- belings_to :body, class_name: 'User', optional: true
- belings_to :paint, class_name: 'User', optional: true
