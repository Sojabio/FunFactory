class Comment < ApplicationRecord
  belongs_to :fact
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"
end
