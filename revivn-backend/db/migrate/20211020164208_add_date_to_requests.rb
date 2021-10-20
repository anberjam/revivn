class AddDateToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :date, :string
  end
end
