class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.datetime :date
      t.string :location
      t.integer :userid

      t.timestamps
    end
  end
end
