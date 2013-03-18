# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateCategoriesProjects < ActiveRecord::Migration
  def up
  	create_table :categories_projects, :id => false do |t|
      t.references :category
      t.references :project
    end
    
    #add_index :categories_projects, [:category_id, :project_id], :unique => true
  end

  def down
  	drop_table :categories_projects
  end
end
