json.array!(@chapitres) do |chapitre|
  json.extract! chapitre, :id, :numero, :titre
  json.url chapitre_url(chapitre, format: :json)
end
