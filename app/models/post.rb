class Post < ApplicationRecord
  validates :title, :description, presence: true

  belongs_to :user
  has_one_attached :image

  scope :latest_posts, -> { order(created_at: :desc) }

  def days_ago
    days = (Date.today - created_at.to_date).to_i
    if days <= 0
      minutes = ((Date.today.to_time - created_at) / (60*60)).to_i
      minutes *= -1
      minutes.to_s + " minutes ago"
    else
      days.to_s + " days ago"
    end
  end 

end
