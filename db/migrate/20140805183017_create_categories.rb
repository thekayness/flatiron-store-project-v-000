class CreateCategories < ActiveRecord::Migration
  def change
  	create_table :Categories do |t|
  		t.string :title
  	end

  end
end
