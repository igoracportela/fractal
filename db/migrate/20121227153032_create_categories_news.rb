# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateCategoriesNews < ActiveRecord::Migration
  def up
  	create_table :categories_news, :id => false do |t|
      t.references :category
      t.references :new
    end
    
    add_index :categories_news, [:category_id, :new_id], :unique => true
  end

  def down
  	drop_table :categories_news
  end
end
