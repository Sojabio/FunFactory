class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :facts
  has_many :received_comments, foreign_key: 'receiver_id', class_name: "Comment"
  has_many :sent_comments, foreign_key: 'sender_id', class_name: "Comment"
end
