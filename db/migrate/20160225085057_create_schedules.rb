class CreateSchedules < ActiveRecord::Migration

  #every schedule has a name and event in it
  def change
    create_table :schedules do |t|
      t.text :content

      t.string :name
      t.string :event


      #t.string :image
      t.timestamps
    end
  end
end
