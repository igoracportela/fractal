# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :count_alternatives

      t.timestamps
    end
  end
end
