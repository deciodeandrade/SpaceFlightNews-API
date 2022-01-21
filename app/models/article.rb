class Article < ApplicationRecord
    has_many :launches
    has_many :event
end
