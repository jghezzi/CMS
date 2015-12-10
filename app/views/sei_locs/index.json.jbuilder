json.array!(@sei_locs) do |sei_loc|
  json.extract! sei_loc, :id
  json.url sei_loc_url(sei_loc, format: :json)
end
