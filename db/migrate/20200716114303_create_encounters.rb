class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string :title
      t.string :description
      t.string :urgency
      t.string :dept
      t.boolean :status

      t.timestamps null: false
    end
  end
end
