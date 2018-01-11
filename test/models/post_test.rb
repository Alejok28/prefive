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
#  files       :string
#  user_id     :integer
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
