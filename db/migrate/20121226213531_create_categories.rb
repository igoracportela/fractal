# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title, :null => false, :default => ""
      t.integer :categorizable, :null => false#, :default => Categoria::PRODUTO
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Category.create_translation_table! :title => {:type => :string, :null => false, :default => ''}

    add_index :categories, :slug, :unique => true
    add_index :categories, :categorizable
  end
end
