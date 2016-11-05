class ChangeDatatypeBusinessHourOfContributions < ActiveRecord::Migration
  def change
    change_column :contributions, :business_hour, :string

    change_column :contributions, :regular_holiday, :string

  end
end
