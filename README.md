
# worker_app 

 ### _【アプリケーション概要】_  
 ・自動車修理者の納車予定アプリケーション  
 <br>
 
 ### 【アプリケーションの作成背景】  
・前職で納期のトラブルがあり、その改善策として作成しました。  
・誰が担当したかを明記することで作業の受け渡しが効率的に行えるようなアプリケーションを作れたらいいのではないかと思い作成を行いました。  
<br>
 
 
 ### 【URL】  
 https://carworkerapp.herokuapp.com/  
 <br>
 
 ### テスト用アカウント  
 
 #### アカウント情報
・ユーザー名： テスト  
・email: test@test  
・password: 123456  
  
#### アカウント情報２ 

・ユーザー名： サンプル  
・email: sample@sample  
・password: 123456  
<br>

### 【利用方法】  
__車両登録__  
<img width="300" alt="一覧ページ" src="https://user-images.githubusercontent.com/77313049/110241748-ba74bf00-7f95-11eb-9cc8-9c88d1b90d52.png">  
&nbsp;ヘッダー部分から「車両情報を記入」をクリック  
<br>
<img width="300" alt="登録ページ" src="https://user-images.githubusercontent.com/77313049/110241754-c791ae00-7f95-11eb-95fb-a78409556d92.png">  
&nbsp;必須部分を記述を行えば登録完了です。（納車の日程を指定しなければ納車予定ページへ反映されない）  
<br>
<br>
__予定納車ページに反映させるには__  
<img width="300" alt="登録ページ１" src="https://user-images.githubusercontent.com/77313049/110242980-c2cff880-7f9b-11eb-8fab-eecb34c5df59.png">  
&nbsp;・登録時に日付を指定(一週間以内を指定すると表示されるようになります。)  
<br>
__イメージ__  
<img src="https://user-images.githubusercontent.com/77313049/110246438-f403f500-7faa-11eb-8aa0-7745fcf21918.gif" width="500px">  
<img src="https://user-images.githubusercontent.com/77313049/110246775-4d205880-7fac-11eb-8c4f-6f02d9ebbb6a.gif" width="500px">

<br>
<br>  

__もしくは__  
<img width="300" alt="一覧ページ" src="https://user-images.githubusercontent.com/77313049/110241748-ba74bf00-7f95-11eb-9cc8-9c88d1b90d52.png">  
1.ヘッダー部分の車両情報をクリック  
<br>
<img width="300" alt="一覧表示ページ" src="https://user-images.githubusercontent.com/77313049/110241771-e6904000-7f95-11eb-999d-6883ffa09cc8.png">  
2.一覧情報から自動車名をクリックして、詳細ページへ遷移  
<br>
<img width="300" alt="自動車詳細ページ" src="https://user-images.githubusercontent.com/77313049/110243668-b6996a80-7f9e-11eb-9ffe-5dcbb0b0126e.png">  
3.データ編集ページをクリックし情報を編集(一週間以内を指定すると表示されるようになります。)  
<br>

__イメージ__  
<img src="https://user-images.githubusercontent.com/77313049/110247356-38918f80-7faf-11eb-8569-cfa1b16b7f80.gif" width="500px">  
<img src="https://user-images.githubusercontent.com/77313049/110247359-40e9ca80-7faf-11eb-94e6-d11de90837cb.gif" width="500px">  
<img src="https://user-images.githubusercontent.com/77313049/110247365-49420580-7faf-11eb-9799-fbfec6657186.gif" width="500px">

<br>

### 工夫したポイント  
・文字をクリックすればそのページに遷移できるようにlink_toの多様をして使い勝手の良い作りをイメージしながら作成しました。(感覚的にアプリケーションを使用できるようにしたかった為)  
・ページの遷移はどの段階で行えば利用者は解りやすいかなど、実際の利用者の気持ちを考えながら制作しました。

### 【実装予定の機能】    
・ユーザーの担当作業の予定をユーザーページで表示  
・検索機能の追加  

### 【使用技術】  
・Rails ６.0.0  
・mysql2  
・HTML/CSS  
・VS Code
<br>

# テーブル設計

## users テーブル

| Column   | Type    | Options     |
| ---------| ------- | ----------- |
| name     | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |

### Association
- has_many :cars


## cars テーブル

| Column | Type       | Options                         |
| -------| ---------- | ------------------------------- |
| car    | string     | null: false                     |
| number | text       | null: false                     |
| name   | integer    | null: false                     |
| front  | references | foreign_key: {to_table: :users} |
| body   | references | foreign_key: {to_table: :users} |
| paint  | references | foreign_key: {to_teble: :users} |
| price  | integer    |                                 |
| date   | date       |                                 |


### Association
- belongs_to :front, class_name: 'User', optional: true
- belings_to :body, class_name: 'User', optional: true
- belings_to :paint, class_name: 'User', optional: true
