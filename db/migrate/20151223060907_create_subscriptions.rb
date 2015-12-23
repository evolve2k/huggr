class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions, id: :uuid do |t|

      t.timestamps
    end
  end
end
