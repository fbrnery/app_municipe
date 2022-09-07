class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception, except: :index
    # Insira esta linha
    before_action :authenticate_user!
end
