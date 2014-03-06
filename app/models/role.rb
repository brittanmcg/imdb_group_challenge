require_relative '../../db/config'

class Role < ActiveRecord::Base
  belongs_to :movie
  belongs_to :actor
end