class CreateAnecdotes < ActiveRecord::Migration
  def change
    create_table :anecdotes do |t|
      t.string :sujet
      t.string :theme
      t.text :texte
      t.integer :chapitre_id

      t.timestamps
    end
  end
end
