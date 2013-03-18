# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, :null => false, :default => ""
      t.text :description
      t.string :image
      t.datetime :date, :null => false
      t.datetime :schedule, :null => false
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    #Event.create_translation_table! :title => {:type => :string, :null => false, :default => ''}, :description => { :type => :text, :null => false, :default => ''}

    add_index :events, :slug, :unique => true
  end
end
