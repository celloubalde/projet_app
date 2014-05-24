json.array!(@personnes) do |personne|
  json.extract! personne, :id, :nom, :prenom, :numero, :scene_id
  json.url personne_url(personne, format: :json)
end
