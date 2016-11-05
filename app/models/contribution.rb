class Contribution < ActiveRecord::Base
  # before_save { in_reply_to = reply_user.to_s }
  belongs_to :user
  validates :user_id, presence: true
  validates :shop_name, presence: true
  validates :summary, presence: true

  # scope :including_replies, ->(user){where("in_reply_to = ? OR in_reply_to = ? OR user_id = ?", "", "@#{user.id}\-#{user.name.sub(/\s/,'-')}", user.id)}
  # def reply_user
  #   if user_unique_name = content.match(/(@[^\s]+)\s.*/)
  #     user_unique_name[1]
  #   end
  # end
end
