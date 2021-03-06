# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Film.create(
    [{
         title: "A Wonderful Film",
         description: "A cute film about lots of wonderful stuff.",
         url_slug: "a_wonderful_film",
         year: 1973,
         related_film_ids: [2, 4, 7]
     },
     {
         title: "All About Fandor",
         description: "Documentary telling the tail of Fandor.",
         url_slug: "all_about_fandor",
         year: 2001,
         related_film_ids: [1, 4, 7]
     },
     {
         title: "Dancing with Elephants",
         description: "The classic tale of Dancing with Wolves, but with elephants!",
         url_slug: "dancing_with_elephants",
         year: 2016,
         related_film_ids: []
     },
     {
         title: "The Story of George",
         description: "A true story outlining the adventures of George",
         url_slug: "the_story_of_george",
         year: 1974,
         related_film_ids: [1, 2, 7]
     },
     {
         title: "Zee and Bee Go Skiiing",
         description: "The tragic story of Zee and Bee on their snowy adventures.",
         url_slug: "zee_and_bee_go_skiing",
         year: 1991,
         related_film_ids: [6, 8, 9, 10]
     },
     {
         title: "Ahead of Its Time",
         description: "A story about the future.",
         url_slug: "ahead_of_its_time",
         year: 2088,
         related_film_ids: [8, 9, 10]
     },
     {
         title: "My Name is Jerry",
         description: "The life of the cat named Jerry.",
         url_slug: "my_name_is_jerry",
         year: 1989,
         related_film_ids: [1, 2, 4]
     },
     {
         title: "Gems and Trestle",
         description: "Is it about web development? Mining history? You'll never know.",
         url_slug: "gems_and_trestle",
         year: 2011,
         related_film_ids: [9, 10]
     },
     {
         title: "How To React Natively",
         description: "A step by step journey through developing a React Native application.",
         url_slug: "how_to_react_natively",
         year: 2000,
         related_film_ids: [10]
     },
     {
         title: "Perry Hotter: A Lizard's Tale",
         description: "It's a story all about a lizard named Perry.",
         url_slug: "perry_hotter_a_lizards_tale",
         year: 2017,
         related_film_ids: []
     }]
)

Rating.create(
    [
        {
            rating: 4,
            film_id: 1
        },
        {
            rating: 1,
            film_id: 2
        },
        {
            rating:5,
            film_id: 10
        }
    ]
)
