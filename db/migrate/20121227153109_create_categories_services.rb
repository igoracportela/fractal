# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateCategoriesServices < ActiveRecord::Migration
  def up
  	create_table :categories_services, :id => false do |t|
      t.references :category
      t.references :service
    end
    
    add_index :categories_services, [:category_id, :service_id], :unique => true
  end

  def down
  	drop_table :categories_services
  end
end
