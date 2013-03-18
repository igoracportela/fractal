# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.text :description
      t.string :archive
      t.string :slug

      t.timestamps
    end

    Document.create_translation_table! :title => {:type => :string, :null => false, :default => ''}, :description => :text

    add_index :documents, :slug, :unique => true
  end
end
