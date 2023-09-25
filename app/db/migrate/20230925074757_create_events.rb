class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_title
      t.datetime :event_start
      t.datetime :event_end

      t.timestamps
    end
  end
end
