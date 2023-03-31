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
class GameStep < ApplicationRecord
  belongs_to :game
  has_many :postits
end
