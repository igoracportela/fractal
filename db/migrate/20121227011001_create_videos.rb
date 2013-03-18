# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title, :null => false, :default => ""
      t.text :description
      t.string :url, :null => false, :default => ""
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Video.create_translation_table! :title => {:type => :string, :null => false, :default => ''}, :description  => {:type => :string, :null => false, :default => ''}

    add_index :videos, :slug, :unique => true
  end
end
