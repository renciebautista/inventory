json.array!(@journal_types) do |journal_type|
  json.extract! journal_type, :id, :name, :effect
  json.url journal_type_url(journal_type, format: :json)
end
