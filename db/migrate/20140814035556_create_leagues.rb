class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.text :description
      t.string :location
      t.date :sdate
      t.date :edate
      t.string :logo

      t.timestamps
    end
  end
end
