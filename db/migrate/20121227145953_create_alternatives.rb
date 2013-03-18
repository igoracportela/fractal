# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateAlternatives < ActiveRecord::Migration
  def change
    create_table :alternatives do |t|
      t.string :title, :null => false, :default => ""
      t.integer :count_votes, :default => 0
      t.references :poll

      t.timestamps
    end

    Alternative.create_translation_table! :title => {:type => :string, :null => false, :default => ''}

    add_index :alternatives, :poll_id
  end
end
