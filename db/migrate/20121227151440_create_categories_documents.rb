# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class CreateCategoriesDocuments < ActiveRecord::Migration
  def up
  	create_table :categories_documents, :id => false do |t|
      t.references :category
      t.references :document
    end
    
    add_index :categories_documents, [:category_id, :document_id], :unique => true
  end

  def down
  	drop_table :categories_documents
  end
end
