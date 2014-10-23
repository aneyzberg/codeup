json.array!(@projects) do |project|
  json.extract! project, :id, :due_date, :payment_amount, :name, :description, :contact_info, :developer_type
  json.url project_url(project, format: :json)
end
