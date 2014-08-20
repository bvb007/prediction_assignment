class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :location
      t.date :sdate
      t.string :club1_id
      t.string :club2_id
      t.belongs_to :league

      t.timestamps
    end
  end
end
