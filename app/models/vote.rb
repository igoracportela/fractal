# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class Vote < ActiveRecord::Base
  attr_accessible :count_alternatives

  has_many :alternative_votes
  has_many :alternatives, :through => :alternative_votes
end
