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

