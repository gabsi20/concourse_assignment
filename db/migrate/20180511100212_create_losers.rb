class CreateLosers < ActiveRecord::Migration[5.1]
  def change
    create_table :losers do |t|
      t.string :vorname
      t.string :nachname

      t.timestamps
    end
  end
end
