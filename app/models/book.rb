class Book < ApplicationRecord
  validates :author, :title, :genre, :publisher, presence: true
end
