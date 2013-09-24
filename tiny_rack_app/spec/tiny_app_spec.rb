ENV['RACK_ENV'] = 'test'

require './app.rb'
require 'spec_helper'
require 'rspec'
require 'rack/test'

describe 'TinyApp' do
  include Rack::Test::Methods

  def app
    TinyApp.new
  end

  it "welcomes the user to the root url" do
    get "/"

    expect(last_response).to be_ok
    expect(last_response.body).to eq("Welcome to the root url")
  end

  it "thanks you for visiting pages that are not the root url" do
    get "/moo"

    expect(last_response).to be_ok
    expect(last_response.body).to eq("Hello, Thank you for visiting /moo")
  end

  it "has a rack lobster page" do
    get "/lobster"

    expect(last_response).to be_ok
    expect(last_response.body.include?("Lobstericious!")).to eq(true)
  end
end

describe "TinyMiddleware" do
  include Rack::Test::Methods

  def app
    TinyMiddleware.new(TinyApp.new)
  end

  it "suggests checking out the /lobster path" do
    get "/"

    expect(last_response.body).to eq("Welcome to the root url\n\nThis app is terrible. Why not check out /lobster?")
  end

  it "does not suggest checking out the lobster path if you are on the lobster path" do
    get "/lobster"

    expect(last_response.body.include?("This app is terrible. Why not check out /lobster?")).to eq(false)
  end
end
