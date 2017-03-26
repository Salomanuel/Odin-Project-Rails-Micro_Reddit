class Post < ApplicationRecord

	validates :user,  presence:true
	validates :title, presence: true,
										length: { maximum: 20 }
	validates :body,	presence: true
end
