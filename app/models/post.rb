class Post < ApplicationRecord
  mount_uploader :image, PostImageUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  validates :title, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 65_535 }

  def self.ransackable_attributes(auth_object = nil)
    ["body", "title"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["bookmarks", "comments", "taggings", "tags", "user"]
  end

  def self.ranking
    group(:title).order('count_all DESC').count
  end
  
end
