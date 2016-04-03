json.array!(@charlas) do |charla|
  json.extract! charla, :id, :expositor, :resumen, :hora, :tema
  json.url charla_url(charla, format: :json)
end
