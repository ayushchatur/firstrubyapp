class CreateBooks < ActiveRecord::Migration[5.2]
  def self.up
    create_table :books, force: true do |t|
      t.column title, :string, :limit => 32, :null => false #Ex:- :null => false #By default SQL String limit 255 character 
      t.column price, :floar
      t.column subject_id, :integer
      t.column description, :text
      t.column created_at, :timestamp
    end
  end
  
  def self.down
    drop_table :books
    
  end
  
  def change
    create_table :books do |t|

      t.timestamps
    end
  end
end
