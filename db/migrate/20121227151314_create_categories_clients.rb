# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateCategoriesClients < ActiveRecord::Migration
  def up
  	create_table :categories_clients, :id => false do |t|
      t.references :category
      t.references :client
    end
    
    add_index :categories_clients, [:category_id, :client_id], :unique => true
  end

  def down
  	drop_table :categories_clients
  end
end
