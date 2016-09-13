class Post < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true, length: { maximum: 50 }
  validates :content,  presence: true

  def next
    test = self.class.unscoped.where("created_at >= ? AND id != ?", self.created_at, self.id).order("created_at ASC").first
  end

  def previous
    test = self.class.unscoped.where("created_at <= ? AND id != ?", self.created_at, self.id).order("created_at DESC").first
  end
end
