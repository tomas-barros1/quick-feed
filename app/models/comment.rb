class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true
  has_rich_text :content
  validates :content, presence: true
end
