# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateCategoriesProducts < ActiveRecord::Migration
  def up
  	create_table :categories_products, :id => false do |t|
      t.references :category
      t.references :product
    end
    
    add_index :categories_products, [:category_id, :product_id], :unique => true
  end

  def down
  	drop_table :categories_products
  end
end
