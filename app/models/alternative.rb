# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Alternative < ActiveRecord::Base
  belongs_to :poll

  has_many :alternative_votes
  has_many :votes, :through => :alternative_votes
  
  # Validations
  validates :title, :presence => true
  
  # Translate
  translates :title

  attr_accessible :count_votes, :title
end
