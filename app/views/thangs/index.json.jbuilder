json.array!(@thangs) do |thang|
  json.extract! thang, :what, :where, :when, :amount, :novelty_rating, :description, :flyer
  json.url thang_url(thang, format: :json)
end
