class User < ApplicationRecord
	validates :name, 			presence: true,
												length: {maximum: 20}
	validates :password, 	presence: true,
												length: {maximum: 12}
	has_many :posts
end
