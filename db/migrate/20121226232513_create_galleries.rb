# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title, :null => false, :default => ""
      t.text :description
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Gallery.create_translation_table! :title => {:type => :string, :null => false, :default => ''}, :description => :text
    
    add_index :galleries, :slug, :unique => true
  end
end
