# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  subject     :string
#  teacher     :string
#  score       :decimal(, )
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Post < ApplicationRecord
  validates :subject, :teacher, :score, presence: true
  validates :score, numericality: { less_than_or_equal_to: 5 }
  mount_uploaders :files, FileUploader
  serialize :files, JSON # If you use SQLite, add this line.
end
