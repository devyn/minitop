class MainController < ApplicationController
    layout 'main'
    def index
        @links = Link.find(:all)
        @parts = Part.find(:all)
    end
    def add
        Link.create(:name => params[:name], :url => params[:url])
        redirect_to :action => 'index'
    end
    def remove
        Link.destroy(params[:id])
        redirect_to :action => 'index'
    end
    def part
        p = Part.find(params[:id])
        render :inline => p.template, :layout => true
    end
end
