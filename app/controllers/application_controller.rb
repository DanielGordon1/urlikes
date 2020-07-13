class ApplicationController < ActionController::Base
  before_action :authenticate_nerd!
end
