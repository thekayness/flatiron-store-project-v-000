class CreateItems < ActiveRecord::Migration
  def change
  	create_table :items do |t|
  		t.belongs_to :category, index: true
  		t.decimal :price, precision: 8, scale: 2
  		t.integer :inventory
  		t.string :title
  	end

  end
end
