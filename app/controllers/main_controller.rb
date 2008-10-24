class MainController < ApplicationController
    layout 'main'
    def index
        @links = Links.find(:all)
    end
    def add
        Links.create(:name => params[:name], :url => params[:url])
        redirect_to :action => 'index'
    end
end
