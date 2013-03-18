# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, :null => false, :default => ""
      t.text :content, :null => false, :default => ""
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Page.create_translation_table! :title => {:type => :string, :null => false, :default => ''}, :content  => {:type => :text, :null => false, :default => ''}

    add_index :pages, :slug, :unique => true
  end
end
