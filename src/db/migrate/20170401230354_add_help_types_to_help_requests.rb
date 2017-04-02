class AddHelpTypesToHelpRequests < ActiveRecord::Migration[5.0]
  def change
    add_reference :help_requests, :help_type, foreign_key: true
  end
end
