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
class Postit < ApplicationRecord
  belongs_to :game
  # belongs_to :game_step

  COLOR = {
    "Vert": "#E5FFD6",
    "Rouge": "#FFD1D5",
    "Orange": "#FFE4C9",
    "Bleu": "#B4D9FF",
    "Jaune": "#FFEAA4"
  }

  after_create_commit { broadcast_prepend_to "game_#{ self.game_id }" }

#   after_create_commit  { 
#     broadcast_prepend_to("game_#{ self.game_id  }", partial: "postits/postit", locals: { postit: self })
# }
  
  after_destroy_commit { broadcast_remove_to "game_#{ self.game_id }" }

  validates :name, presence: true

  def game_step
    !self.game_step_id.nil? ? GameStep.find(self.game_step_id) : nil
  end

end
