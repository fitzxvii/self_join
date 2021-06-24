class User < ApplicationRecord
	has_many :friendships
	has_many :friends, through: :friendships

	has_many :friended_by, class_name: "Friendship", foreign_key: "friend_id"
    has_many :admirers, through: :friended_by, source: :user
end
