json.array!(@sows) do |sow|
  json.extract! sow, :id, :begin_date, :end_date, :sow_hours, :bill_rate, :client_id, :project_id
  json.url sow_url(sow, format: :json)
end
