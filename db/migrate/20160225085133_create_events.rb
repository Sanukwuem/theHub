class CreateNotes < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :content


      t.string :event


      t.integer :schedule_id


      #used for seeding
      #t.string :name
      #t.string :image
      #t.string :description

      t.references :schedule

      t.timestamps
    end
  end
end
