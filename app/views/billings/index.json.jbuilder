json.array!(@billings) do |billing|
  json.extract! billing, :id, :bill_date, :hours, :consultant_id, :project_id, :sow_id
  json.url billing_url(billing, format: :json)
end
