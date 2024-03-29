class Comment < ApplicationRecord
  belongs_to :content
  belongs_to :user
  belongs_to :parent, class_name: 'Comment', optional: true, foreign_key: :parent_id
  has_many :replies, class_name: 'Comment', foreign_key: :parent_id
end