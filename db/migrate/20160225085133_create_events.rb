class CreateEvents < ActiveRecord::Migration
  #every event has text a schedule id and a priority
  def change
    create_table :events do |t|
      t.text :content


      t.string :event


      t.integer :schedule_id

      t.string :priority

      #used for seeding
      #t.string :name
      #t.string :image
      #t.string :description

      t.references :schedule

      t.timestamps
    end
  end
end
