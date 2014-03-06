require_relative '../config/application.rb'

require 'rspec'
require 'spec_helper'

require_relative '../app/models/role.rb'


describe Role do
  # before(:each) do

  # end

  it "should check whether Angelina is valid" do
    # retrive from DB, see if Angelina exists (once)
    Actor.exists?(:name => 'Angelina Jolie')
  end

  it "should check whether Gia the movie is valid" do
    Movie.exists?(:name => 'Gia')
  end

  it "should check whether Angelina has been an actress" do
    Role.exists?(:actors_id => 2, :title => 'actress')
  end

end
