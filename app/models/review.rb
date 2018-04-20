# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  description :text
#  value       :decimal(, )
#  user_id     :integer
#  post_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :description, :value, presence: true
  validates :value, numericality: { less_than_or_equal_to: 5 }

end
