class CreateArborists < ActiveRecord::Migration[7.1]
  def change
    create_table :arborists do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :isa_certified
      t.boolean :etv_certified
      t.integer :zipcode
      t.jsonb :skills

      t.timestamps
    end
  end
end
