class Item < ApplicationRecord
  # Adding State machines
  include AASM

  aasm :column => 'state' do
    state :active, :initial => true
    state :sold

    event :sell do
      transitions :from => :active, :to => :sold
    end
  end

  belongs_to :user
  has_one :order

  mount_uploader :picture, ProfilePictureUploader

  # Class method for searching items by name or description
  def self.search(params)
    where("name LIKE ? OR description LIKE ?", "%#{params}%", "%#{params}%")
  end

end
