class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :document
      t.string :full_name
      t.string :email
      t.string :mobile_phone

      t.timestamps
    end
  end
end
