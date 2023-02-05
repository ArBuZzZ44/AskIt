class ApplicationController < ActionController::Base
  include Pagy::Backend
  include ErrorHandling
end
