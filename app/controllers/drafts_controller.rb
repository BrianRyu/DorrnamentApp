class DraftsController < ApplicationController
    def index
        @drafts = Draft.all
    end
    
    def show
        @draft = Draft.find(params[:id])
    end 

    def new
    end 

    def create
    end
end
