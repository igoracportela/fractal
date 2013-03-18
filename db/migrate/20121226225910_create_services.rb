# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title, :null => false, :default => ""
      t.text :descritpion
      t.text :detailed_description
      t.string :image
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Service.create_translation_table! :title => {:type => :string, :null => false, :default => ''}, :description => :text, :detailed_description => :string
    
    add_index :services, :slug, :unique => true
  end
end
