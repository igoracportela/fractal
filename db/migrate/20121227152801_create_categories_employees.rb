# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateCategoriesEmployees < ActiveRecord::Migration
  def up
  	create_table :categories_employees, :id => false do |t|
      t.references :category
      t.references :employee
    end
    
    add_index :categories_employees, [:category_id, :employee_id], :unique => true
  end

  def down
  	drop_table :categories_employees
  end
end
