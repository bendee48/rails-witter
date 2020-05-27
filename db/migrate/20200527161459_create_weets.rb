class CreateWeets < ActiveRecord::Migration[6.0]
  def change
    create_table :weets do |t|
      t.text :weet

      t.timestamps
    end
  end
end
