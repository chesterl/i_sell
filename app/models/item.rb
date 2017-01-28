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

end
