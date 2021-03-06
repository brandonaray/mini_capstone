User.create!(name: "Brandon Ray", email: "brandon@email.com", password: "password")
User.create!(name: "Kate Bauer", email: "kate@email.com", password: "password")

Supplier.create!({name: "CD Empire", email: "get_vinyl@cdempire.com", phone_number: "800-588-2300"})
Supplier.create!({name: "Amazon.com", email: "jbezos@amazon.com", phone_number: "555-123-4567"})
Supplier.create!({name: "Vinyl Me Please", email: "vinylopolous@vmp.com", phone_number: "+81 96545 23456"})

Category.create!(name: "Rock")
Category.create!(name: "Alternative")
Category.create!(name: "Hip-Hop")
Category.create!(name: "Pop")

Product.create!({name:"Gordon", artist: "Barenaked Ladies", year: "1992", label: "Reprise/Sire", tracks: "1. Hello City, 2. Enid, 3. Grade 9, 4. Brian Wilson, 5. Be My Yoko Ono, 6. Wrap Your Arms Around Me, 7. What A Good Boy, 8. The King of Bedside Manor, 9. Box Set, 10. I Love You, 11. create Kid (On the Block), 12. Blame It On Me, 13. The Flag, 14. If I Had $1000000, 15. Crazy", price: 25.99, supplier_id: 1, description: "Barenaked Ladies' debut album, a quirky jazz-pop collection from Canada's novelty kings, but shows surprising depth and nuance."})
Product.create!({name:"Damn", artist: "Kendrick Lamar", year: "2017", label: "Aftermath/Interscope/Top Dawg", tracks: "1. BLOOD., 2. DNA., 3. YAH., 4. ELEMENT., 5. FEEL., 6. LOYALTY. (feat. Rihanna), 7. PRIDE., 8. HUMBLE., 9. LUST., 10. LOVE. (feat. Zacari), 11. XXX. (feat. U2), 12. FEAR., 13. GOD., 14. DUCKWORTH.", price: 33.99, supplier_id: 2, description: "Kendrick Lamar's follow-up to To Pimp A Butterfly won the Pulitzer Prize for Music in 2017."})
Product.create!({name:"Nevermind", artist: "Nirvana", year: "1991", label: "DGC", tracks: "1. Smells Like Teen Spirit, 2. In Bloom, 3. Come As You Are, 4. Breed, 5. Lithium, 6. Polly, 7. Territorial Pissings, 8. Drain You, 9. Lounge Act, 10. Stay Away, 11. On A Plain, 12. Something In the Way", price: 28.99, supplier_id: 3, description: "Cobain and company's mainstream breakthrough, the album that put the grunge scene on the map."})
Product.create!({name:"Blue Planet Eyes", artist: "Preatures", year: "2014", label: "Mosy/Mercury Records", tracks: "1. Blue Planet Eyes, 2. Somebody's Talking, 3. Is This How You Feel?, 4. Ordinary, 5. Two Tone Melody, 6. Rock and Roll Rave, 7. Whatever You Want, 8. Cruel, 9. It Gets Better, 10. Business Yeah", price: 19.99, supplier_id: 2, description: "The first studio album by Australian rockers the Preatures features upbeat pop rock with a retro 1980s flair."})
Product.create!({name:"Luck of the Draw", artist: "Bonnie Raitt", year: "1991", label: "Capitol", tracks: "1. Something to Talk About, 2. Good Man Good Woman, 3. I Can't Make You Love Me, 4. Tangled and Dark, 5. Come to Me, 6. No Business, 7. One Part Be My Lover, 8. Not the Only One, 9. Papa Come Quick (Jody and Chico), 10. Slow Ride, 11. Luck of the Draw, 12. All at Once", price: 19.00, supplier_id: 1, description: "Bonnie Raitt's multi-platinum effort, featuring hits \"Something to Talk About\" and \"I Can't Make You Love Me\""})
Product.create!({name:"Abbey Road", artist: "The Beatles", year: "1969", label: "Apple", tracks: "1. Come Together, 2. Something, 3. Maxwell's Silver Hammer, 4. Oh! Darling, 5. Octopus's Garden, 6. I Want You (She's So Heavy), 7. Here Comes the Sun, 8. Because, 9. You Never Give Me Your Money, 10. Sun King, 11. Mean Mr. Mustard, 12. Polythene Pam, 13. She Came In Through the Bathroom Window, 14. Golden Slumbers, 15. Carry That Weight, 16. The End, 17. Her Majesty", price: 34.99, supplier_id: 3, description: "The Beatles' iconic album with an iconic cover. I'm adding more lines to this text so that the fucking boxes line up."})
Product.create!({name:"Thriller", artist: "Michael Jackson", year: "1982", label: "Epic/CBS", tracks: "1. Wanna Be Startin Somethin, 2. Baby Be Mine, 3. The Girl Is Mine, 4. Thriller, 5. Beat It, 6. Billie Jean, 7. Human Nature, 8. P.Y.T. (Pretty Young Thing), 9. The Lady In My Life", price: 35.00, supplier_id: 3, description: "That album we had in the '80s"})
Product.create!({name:"Stunt", artist: "Barenaked Ladies", year: "1998", label: "Reprise", tracks: "1. One Week, 2. Its All Been Done, 3. Light Up My Room, 4. Ill Be That Girl, 5. Leave, 6. Alcohol, 7. Call and Answer, 8. In the Car, 9. Never Is Enough, 10. Who Needs Sleep?, 11. Told You So, 12. Some Fantastic, 13. When You Dream", price: 24.99, supplier_id: 3, description: "The big breakout album for BNL thanks to the number 1 hit single One Week"})


Image.create!(product_id: 1, url: "https://upload.wikimedia.org/wikipedia/en/2/2c/Gordon-album.jpg")
Image.create!(product_id: 2, url: "https://upload.wikimedia.org/wikipedia/en/5/51/Kendrick_Lamar_-_Damn.png")
Image.create!(product_id: 3, url: "https://upload.wikimedia.org/wikipedia/en/b/b7/NirvanaNevermindalbumcover.jpg")
Image.create!(product_id: 4, url: "https://upload.wikimedia.org/wikipedia/en/0/08/The_Preatures_-_Blue_Planet_Eyes_album_cover.jpg")
Image.create!(product_id: 9, url: "https://upload.wikimedia.org/wikipedia/en/f/ff/Luck_Of_The_Draw_%28Official_Album_Cover%29_by_Bonnie_Raitt.png")
Image.create!(product_id: 11, url: "https://upload.wikimedia.org/wikipedia/en/4/42/Beatles_-_Abbey_Road.jpg")
Image.create!(product_id: 12, url: "https://upload.wikimedia.org/wikipedia/en/5/55/Michael_Jackson_-_Thriller.png")