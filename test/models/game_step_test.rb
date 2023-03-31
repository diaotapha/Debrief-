# == Schema Information
#
# Table name: game_steps
#
#  id         :bigint           not null, primary key
#  name       :string
#  game_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class GameStepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
