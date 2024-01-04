class HomeController < ApplicationController
    include Devise::Controllers::Helpers
    def index
    @tweets = Tweet.all
    end
  end