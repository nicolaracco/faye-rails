require 'spec_helper'

describe "Faye browser javascript" do

  it "should be served by asset pipeline" do
    get '/assets/faye.js'
    response.status.should be(200)
  end

  it "should match Faye versions" do
    get '/assets/faye.js'
    response.body.should include(%Q(VERSION:"#{Faye::VERSION}"))
  end
end
