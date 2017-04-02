class CreateHelpTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :help_types do |t|
      t.string :Description

      t.timestamps
    end
  end
end
