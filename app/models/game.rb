# == Schema Information
#
# Table name: games
#
#  id          :bigint           not null, primary key
#  title       :string
#  slug        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Game < ApplicationRecord


    after_create :slugify

    has_many :postits
    has_many :game_steps

    private

    def slugify
        slug = self.title.parameterize
        self.update slug: slug
    end
end
