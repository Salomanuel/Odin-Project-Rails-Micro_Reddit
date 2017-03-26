class User < ApplicationRecord

	validates :name, 	presence: true,
										length: { maximum:16 }
end
