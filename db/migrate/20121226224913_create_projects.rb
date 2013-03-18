# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, :null => false, :default => ""
      t.text :description
      t.string :image
      t.string :site
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Project.create_translation_table! :title => {:type => :string, :null => false, :default => ''}, :description => :text, :site => :string

    add_index :projects, :slug, :unique => true
  end
end
