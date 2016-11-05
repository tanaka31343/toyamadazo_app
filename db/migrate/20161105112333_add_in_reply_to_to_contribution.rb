class AddInReplyToToContribution < ActiveRecord::Migration
  def change
    add_column :contributions, :in_reply_to, :string, default: ""
  end
end
