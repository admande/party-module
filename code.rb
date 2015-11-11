require 'pry'

module PartyGoer
  attr_reader :drinks

  def initialize
    @drinks =  0
  end


  def drink
    if @drinks < 2
       @drinks += 1
      true
    else
      false
    end
  end

  def sing
    "hello. it's me"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end
end

module Invited
  def invited?
    true
  end
end

class PersonalizedHavocError < StandardError; end
