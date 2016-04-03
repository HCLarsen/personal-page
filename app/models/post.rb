class Post < ActiveRecord::Base
  def next
    test = self.class.unscoped.where("created_at >= ? AND id != ?", self.created_at, self.id).order("created_at ASC").first
  end

  def previous
    test = self.class.unscoped.where("created_at <= ? AND id != ?", self.created_at, self.id).order("created_at DESC").first
  end
end
