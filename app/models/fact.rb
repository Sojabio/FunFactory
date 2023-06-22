class Fact < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :join_tag_facts
  has_many :tags, through: :join_tag_facts
end
