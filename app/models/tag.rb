class Tag < ApplicationRecord
  has_many :join_tag_facts
  has_many :facts, through: :join_tag_facts
end
