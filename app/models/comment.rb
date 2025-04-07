class Comment < ApplicationRecord
  validates :content, presence: true

  belongs_to :user
  belongs_to :post
  has_many :likes

  scope :latest_comments, -> { order(created_at: :desc) }

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

  def has_liked?(user_id)
    likes.find_by(user_id: user_id)
  end
end
