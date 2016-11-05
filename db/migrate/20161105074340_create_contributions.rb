class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.references :user, index: true, foreign_key: true
      t.string :shop_name
      t.string :address
      t.text :content
      t.string :business_hour
      t.string :regular_holiday
      t.text :url
      t.text :summary
      t.string :tel

      t.timestamps null: false
      t.index [:user_id, :created_at]
    end
  end
end
