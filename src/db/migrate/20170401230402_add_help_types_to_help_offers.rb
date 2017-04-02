class AddHelpTypesToHelpOffers < ActiveRecord::Migration[5.0]
  def change
    add_reference :help_offers, :help_type, foreign_key: true
  end
end
