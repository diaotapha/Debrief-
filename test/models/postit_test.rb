# == Schema Information
#
# Table name: postits
#
#  id           :bigint           not null, primary key
#  name         :string
#  color        :string
#  game_id      :bigint           not null
#  game_step_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class PostitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
