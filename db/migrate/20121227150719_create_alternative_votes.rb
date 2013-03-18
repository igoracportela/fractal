# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateAlternativeVotes < ActiveRecord::Migration
  def change
    create_table :alternative_votes do |t|
      t.references :alternative
      t.references :vote

      t.timestamps
    end
    add_index :alternative_votes, :alternative_id
    add_index :alternative_votes, :vote_id
  end
end
