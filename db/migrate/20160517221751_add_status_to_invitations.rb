class AddStatusToInvitations < ActiveRecord::Migration[5.0]
  def change
    add_column :invitations, :status, :integer, default: 0
  end
end
