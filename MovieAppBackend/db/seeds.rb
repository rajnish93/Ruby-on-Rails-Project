Genre.destroy_all
Cinema.destroy_all
Genre.create!([
  {id: 1, name: "Action"},
  {id: 2, name: "Comedy"},
  {id: 3, name: "Thriller"},
])
p "Created #{Genre.count} genres"
Cinema.create!([
  {title: "Terminator", genre_id: 1, numberInStock: 6, dailyRentalRate: 2.5},
  {title: "BatMan", genre_id: 2, numberInStock: 16, dailyRentalRate: 5},
  {title: "Spiderman", genre_id: 3, numberInStock: 26, dailyRentalRate: 5},
])
p "Created #{Cinema.count} Movies"
