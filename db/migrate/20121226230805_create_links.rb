# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title, :null => false, :default => ""
      t.text :description
      t.string :url, :null => false, :default => ""
      t.string :image
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Link.create_translation_table! :title => {:type => :string, :null => false, :default => ''}, :description => :text, :url => {:type => :string, :null => false, :default => ''}
    
    add_index :links, :slug, :unique => true
  end
end
