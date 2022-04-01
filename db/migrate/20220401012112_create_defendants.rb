class CreateDefendants < ActiveRecord::Migration[6.1]
  def change
    create_table :defendants do |t|
      t.string :name
      t.string :sex
      t.string :race
      t.date :date_of_birth
      t.integer :observation_id
      t.string :notes

      t.timestamps
    end
  end
end
