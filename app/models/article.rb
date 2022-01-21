class Article < ApplicationRecord
    has_many :launches
    has_many :events
end
