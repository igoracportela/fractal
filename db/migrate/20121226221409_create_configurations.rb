# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateConfigurations < ActiveRecord::Migration
  def change
    create_table :configurations do |t|

      t.timestamps
    end
  end
end
