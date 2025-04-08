class Category < ApplicationRecord
  belongs_to :post

  scope :titles, -> { pluck(:title, :id) }
  scope :get_title, -> (c_id) { find(c_id).title }
  def get_id(find_title)
    find_by(title: find_title)
  end
  
end
