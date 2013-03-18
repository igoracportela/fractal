# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, :null => false, :default => ""
      t.text :description
      t.string :image
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    Client.create_translation_table! :name => {:type => :string, :null => false, :default => ''}, :description  => :text
  end
end
