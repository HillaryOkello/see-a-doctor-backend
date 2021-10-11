class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :qualification
      t.string :experience
      t.string :image

      t.timestamps
    end
  end
end
