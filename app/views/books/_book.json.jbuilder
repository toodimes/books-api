json.id book.id
json.title book.title
json.author book.author
json.publisher book.publisher
if book.genre == "Humor"
  json.tagline "Funny Book!"
  json.genre book.genre
elsif book.genre == "Horror"
  json.tagline "Scary Book!"
  json.genre book.genre
elsif book.genre == "Mystery"
  json.tagline "The butler was the murderer all along!"
  json.genre book.genre
elsif book.genre == "Reference Book"
  json.tagline "Probably long and boring"
  json.genre book.genre
else
  json.genre book.genre
end
  