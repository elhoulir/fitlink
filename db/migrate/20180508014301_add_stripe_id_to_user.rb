class AddStripeIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :stripe_id, :string
    add_column :users, :pending_approval_at, :datetime
    add_column :users, :approved_trainer_at, :datetime
    add_column :users, :rejected_trainer_at, :datetime
  end
end
