class MainController < ApplicationController
    layout 'main'
    def index
        @links = Link.find(:all)
    end
    def add
        Link.create(:name => params[:name], :url => params[:url])
        redirect_to :action => 'index'
    end
end
