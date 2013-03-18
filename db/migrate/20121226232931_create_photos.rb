# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :description
      t.string :image
      t.string :slug
      t.references :gallery

      t.timestamps
    end
    
    Photo.create_translation_table! :description => {:type => :string, :null => false, :default => ''}

    add_index :photos, :slug, :unique => true
    add_index :photos, :gallery_id
  end
end
