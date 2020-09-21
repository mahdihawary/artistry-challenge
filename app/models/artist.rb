class Artist < ApplicationRecord
    has_and_belongs_to_many :instruments
    validates :title, uniqueness:true

end
