class Comment < ActiveRecord::Base
  belongs_to :post
  validates :author, presence: true, length: {maximum: 20 }
  validates :body, presence: true, format: { without: URI.regexp, message: "URLs not allowed" }
end
