class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string     :car,      null: false
      t.string     :name,     null: false
      t.string     :number,   null: false
      t.date       :front_date
      t.references :front,    foreign_key: { to_table: :users }
      t.date       :body_date
      t.references :body,     foreign_key: { to_table: :users } 
      t.date       :paint_date
      t.references :paint,    foreign_key: { to_table: :users }
      t.integer    :price
      t.date       :date
      t.timestamps
    end
  end
end
