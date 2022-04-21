class Article < ApplicationRecord
    belongs_to :category

    validate_presence_of :title
    validate_presence_of :content

	scope :active, 			 -> { where('active = ?', true) }
    scope :alphabetical, -> { order('name') }
end
