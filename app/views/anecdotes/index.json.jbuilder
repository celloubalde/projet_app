json.array!(@anecdotes) do |anecdote|
  json.extract! anecdote, :id, :sujet, :theme, :texte, :chapitre_id
  json.url anecdote_url(anecdote, format: :json)
end
