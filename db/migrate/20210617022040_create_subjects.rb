class CreateSubjects < ActiveRecord::Migration[5.2]
  def self.up
    create_table :subjects, force: true do |t|
      t.column :name, :string, :limit => 32, :null => false
      t.column created_at, :timestamp
    end
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
