# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, :null => false, :default => ""
      t.text :description
      t.string :image
      t.decimal :price
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Product.create_translation_table! :title => {:type => :string, :null => false, :default => ''}, :description => :text

    add_index :products, :slug, :unique => true
  end
end
