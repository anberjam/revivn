class AddStatusInfoToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :status, :string
    add_column :requests, :date_status_updated, :datetime
  end
end
