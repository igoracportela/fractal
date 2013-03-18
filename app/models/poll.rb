# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Poll < ActiveRecord::Base
  
  # friendly_id
  extend FriendlyId
  friendly_id :question, :use => :slugged
  
  # Relationships
  has_many :alternatives
  has_and_belongs_to_many :categories
  
  # Validations
  validates :question, :presence => true
  
  # Nested Form
  accepts_nested_attributes_for :alternatives, :allow_destroy => true
  attr_accessible :alternativas_attributes, :multiple_choice, :question, :slug, :validity
  
  # Translate
  translates :question
end
