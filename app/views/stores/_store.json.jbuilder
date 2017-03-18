json.extract! store, :id, :name, :category, :price_average, :source, :summary, :created_at, :updated_at
json.url store_url(store, format: :json)