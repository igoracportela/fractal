# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateCategoriesEvents < ActiveRecord::Migration
  def up
  	create_table :categories_events, :id => false do |t|
      t.references :category
      t.references :event
    end
    
    add_index :categories_events, [:category_id, :event_id], :unique => true
  end

  def down
  	drop_table :categories_events
  end
end
