class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.date :event_date
      t.string :event_time
      t.string :pickup_time
      t.string :comments

      t.timestamps
    end
  end
end
