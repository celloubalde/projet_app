class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.date :periode
      t.string :lieu
      t.text :recit
      t.integer :personne_id
      t.integer :chapitre_id
      t.integer :numero

      t.timestamps
    end
  end
end
