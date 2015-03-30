json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :fatname, :motname, :sex, :dob, :email, :phone, :image
  json.url employee_url(employee, format: :json)
end
