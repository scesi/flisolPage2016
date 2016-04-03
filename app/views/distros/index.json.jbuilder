json.array!(@distros) do |distro|
  json.extract! distro, :id, :nombre, :url
  json.url distro_url(distro, format: :json)
end
