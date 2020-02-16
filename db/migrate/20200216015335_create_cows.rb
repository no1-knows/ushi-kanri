class CreateCows < ActiveRecord::Migration[6.0]
  def change
    create_table :cows do |t|
      t.integer :number
      t.string :name
      t.date :birthday
      t.integer :status
      t.integer :stall

      t.timestamps
    end
  end
end
