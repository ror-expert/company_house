json.extract! company, :id, :name, :address_line_1, :address_line_2, :post_code, :city, :created_at, :updated_at
json.url company_url(company, format: :json)
