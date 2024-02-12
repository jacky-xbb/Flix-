# Clear existing data
Movie.destroy_all if Rails.env.development?

# Seed movies
movies = Movie.create!([
                         {
                           title: 'Avengers: Endgame',
                           description: 'After the devastating events of Avengers: Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to undo Thanos\' actions and restore order to the universe.',
                           released_on: '2019-04-26',
                           rating: 'PG-13',
                           total_gross: 1_223_641_414,
                           director: 'Anthony Russo',
                           duration: '181 min',
                           slug: 'avengers-end-game'
                         },
                         {
                           title: 'Captain Marvel',
                           description: 'Carol Danvers becomes one of the universe\'s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.',
                           released_on: '2019-03-08',
                           rating: 'PG-13',
                           total_gross: 1_110_662_849,
                           director: 'Anna Boden',
                           duration: '124 min',
                           slug: 'captain-marvel'
                         },
                         {
                           title: 'Black Panther',
                           description: 'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country\'s past.',
                           released_on: '2018-02-16',
                           rating: 'PG-13',
                           total_gross: 1_346_913_161,
                           director: 'Ryan Coogler',
                           duration: '134 min',
                           slug: 'black-panther'
                         },
                         {
                           title: 'Avengers: Infinity War',
                           description: 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.',
                           released_on: '2018-04-27',
                           rating: 'PG-13',
                           total_gross: 2_048_359_754,
                           director: 'Anthony Russo',
                           duration: '149 min',
                           slug: 'avengers-infinity-war'
                         },
                         {
                           title: 'Green Lantern',
                           description: 'Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.',
                           released_on: '2011-06-17',
                           rating: 'PG-13',
                           total_gross: 219_851_172,
                           director: 'Martin Campbell',
                           duration: '114 min',
                           slug: 'green-lantern'
                         },
                         {
                           title: 'Fantastic Four',
                           description: 'Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking ways. The four must learn to harness their new abilities and work together to save Earth from a former friend turned enemy.',
                           released_on: '2015-08-07',
                           rating: 'PG-13',
                           total_gross: 168_257_860,
                           director: 'Josh Trank',
                           duration: '100 min',
                           slug: 'fantastic-four'
                         },
                         {
                           title: 'Iron Man',
                           description: 'When wealthy industrialist Tony Stark is forced to build an armored suit after a life-threatening incident, he ultimately decides to use its technology to fight against evil.',
                           released_on: '2008-05-02',
                           rating: 'PG-13',
                           total_gross: 585_366_247,
                           director: 'Jon Favreau',
                           duration: '126 min',
                           slug: 'catwoman'
                         },
                         {
                           title: 'Wonder Woman',
                           description: 'When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.',
                           released_on: '2017-06-02',
                           rating: 'PG-13',
                           total_gross: 821_847_012,
                           director: 'Patty Jenkins',
                           duration: '141 min',
                           slug: 'wonder-woman'
                         }
                       ])

# Attach images to movies
movies.each do |movie|
  image_path = "app/assets/images/#{movie.slug}.png"

  if File.exist?(image_path)
    movie.image.attach(io: File.open(image_path), filename: "#{movie.slug}.png")
  else
    puts "Image not found for #{movie.slug}.png"
  end
end

puts 'Movies successfully created!'
