class CreatePostits < ActiveRecord::Migration[7.0]
  def change
    create_table :postits do |t|
      t.string :name
      t.string :color
      t.references :game, null: false, foreign_key: true
      t.integer :game_step_id

      t.timestamps
    end
  end
end
