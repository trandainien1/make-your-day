class Post < ApplicationRecord
  validates :title, :description, presence: true

  belongs_to :user
  has_one_attached :image
  has_many :bookmarks
  has_many :comments
  belongs_to :category

  scope :latest_posts, -> { order(created_at: :desc) }

  def days_ago
    diff_seconds = Time.current - created_at

    if diff_seconds < 60
      "just now"
    elsif diff_seconds < 3600
      minutes = (diff_seconds / 60).to_i
      "#{minutes} minute#{'s' if minutes != 1} ago"
    elsif diff_seconds < 86_400
      hours = (diff_seconds / 3600).to_i
      "#{hours} hour#{'s' if hours != 1} ago"
    else
      days = (diff_seconds / 86_400).to_i
      "#{days} day#{'s' if days != 1} ago"
    end
  end
  
end
