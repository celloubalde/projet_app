json.array!(@scenes) do |scene|
  json.extract! scene, :id, :periode, :lieu, :recit, :personne_id, :chapitre_id, :numero
  json.url scene_url(scene, format: :json)
end
