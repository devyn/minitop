class MainController < ApplicationController
    layout 'main'
    def index
        @links = Links.find(:all)
    end
end
