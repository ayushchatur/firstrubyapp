class CreateSubjects < ActiveRecord::Migration[5.2]
  def self.up
    create_table :subjects do |t|
      t.column :name, :string
      t.timestamps
    end
    Subject.create :name  => "Physics"
    Subject.create :name  => "Math"
    Subject.create :name  => "Chemistry"
    Subject.create :name  => "Geo"
    Subject.create :name  => "Lab1"
    Subject.create :name  => "Lab2"
  end

  def self.down
    drop_table :subjects
  end
  
  def change
    create_table :subjects do |t|

      t.timestamps
    end
  end
end
