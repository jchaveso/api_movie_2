class CreateShowtimes < ActiveRecord::Migration[6.0]
  def change
    create_table :showtimes do |t|
      t.date :display
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
