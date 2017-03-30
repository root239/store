class SearchesController < ApplicationController
    # searches unique to categories, needed for the dropdown menu and returning only index in that category
    def new
        @search = Search.new
        @categories = Store.uniq.pluck(:category)
        
        @counter = 1
    end
    # search create with the search parameters input
    def create 
        @search = Search.create(search_params)
        redirect_to @search
    end
    # search using the model logic to find the id of stores dependent on parameters
    def show
        @search = Search.find(params[:id])
    end
    
    private
    # parameters permitted in the search, if need all can be searched but only a couple parameters are searchable on HTML
    def search_params
        params.require(:search).permit(:keywords, :category, :min_price, :max_price, :source, :summary, :image)
    end
    
end
