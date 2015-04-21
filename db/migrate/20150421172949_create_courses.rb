class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :couseID
      t.string :courseName
      t.text :content
      t.text :courseNews
      t.string :Location
      t.text :Description
      t.integer :courseType
      t.integer :departmentID

      t.timestamps null: false
    end
  end
end
