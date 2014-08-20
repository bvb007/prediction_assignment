class League < ActiveRecord::Base
	has_many :matches, dependent: :destroy
	has_and_belongs_to_many :clubs
end
