# -*- encoding : utf-8 -*-
# Author - Igor Portela - igorportela.com  | Copyright(c) 2012. All rights reserved.
# -*- encoding : utf-8 -*-
class AlternativeVote < ActiveRecord::Base

  # Relationships
  belongs_to :alternative, :counter_cache => :count_votes
  belongs_to :vote, :counter_cache => :count_alternatives
end
