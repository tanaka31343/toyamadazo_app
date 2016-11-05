class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.references :user, index: true, foreign_key: true
      t.string :shop_name
      t.string :address
      t.text :content
      t.datetime :business_hour
      t.datetime :regular_holiday
      t.text :url
      t.text :summary
      t.string :tel

      t.timestamps null: false
    end
  end
end
