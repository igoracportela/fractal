# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name, :null => false, :default => ""
      t.text :description, :null => false, :default => ""
      t.string :site
      t.string :image
      t.string :slug, :null => false, :default => ""

      t.timestamps
    end

    #Testimonial.create_translation_table! :name => { :type => :string, :null => false, :default => ''}, :description => { :type => :text, :null => false, :default => ''}, :site => :string

    add_index :testimonials, :slug, :unique => true
  end
end
