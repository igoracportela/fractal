# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateCategoriesPolls < ActiveRecord::Migration
  def up
  	create_table :categories_polls, :id => false do |t|
      t.references :category
      t.references :poll
    end
    
    add_index :categories_polls, [:category_id, :poll_id], :unique => true
  end

  def down
  	drop_table :categories_polls
  end
end
