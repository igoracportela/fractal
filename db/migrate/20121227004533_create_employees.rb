# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name, :null => false, :default => ""
      t.string :post
      t.text :description
      t.string :image
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Employee.create_translation_table! :name => {:type => :string, :null => false, :default => ''}, :post  => :string, :description => :text

    add_index :employees, :slug, :unique => true
  end
end
