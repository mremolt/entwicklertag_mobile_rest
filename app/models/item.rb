class Item < ActiveRecord::Base
  validates :user, :content, presence: true
end
