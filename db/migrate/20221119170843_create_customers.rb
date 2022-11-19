class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :code
      t.string :name, limit: 100
      t.integer :terms
      t.boolean :status

      t.timestamps
    end
    add_index :customers, :code, unique: true
  end
end
