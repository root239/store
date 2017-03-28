class Search < ApplicationRecord#

    def search_stores
        # added conditions if keywords/category etc are present
        # compare the input with the search model and return indexed results from stores
        stores = Store.all
        
        stores = stores.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?
        stores = stores.where(["category LIKE ?", category]) if category.present?
        stores = stores.where(["price_average >=  ?", min_price]) if min_price.present?
        stores = stores.where(["price_average <= ?", max_price]) if max_price.present?
        stores = stores.where(["source LIKE ?", source]) if source.present?
        stores = stores.where(["summary LIKE ?", summary]) if summary.present?
        
        return stores
    end
    

end
