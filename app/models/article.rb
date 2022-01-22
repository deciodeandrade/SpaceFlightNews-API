class Article < ApplicationRecord

    has_many :launches, dependent: :destroy
    has_many :events, dependent: :destroy

    validates :featured, presence: true
    validates :title, presence: true
    validates :url, presence: true, uniqueness: { case_sensitive: true }
    validates :imageUrl, presence: true, uniqueness: { case_sensitive: true }
    validates :newsSite, presence: true
    validates :summary, presence: true
    validates :publishedAt, presence: true

end
