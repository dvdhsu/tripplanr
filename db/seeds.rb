# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account
u = User.new(
    username: "admin",
    email: "admin@example.com",
    password: "1234",
    password_confirmation: "1234",
    admin: true
)
u.skip_confirmation!
u.save!

london = City.create!(
  name: "London",
  address: "London, UK",
)

@client = GooglePlaces::Client.new(ENV["GOOGLE_API_KEY"])

attraction_titles = [
  "Buckingham Palace",
  "London Eye",
  "Marble Arch",
  "Piccadilly Circus",
  "St. Paul's Cathedral",
  "Tower Bridge",
  "Tower of London",
  "Trafalgar Square",
  "Palace of Westminster",
  "Big Ben",
  "Houses of Parliament",
  "The Gherkin",
  "The Shard",
  "British Museum",
  "National Gallery",
  "National Portrait Gallery",
  "Victoria and Albert Museum",
  "Natural History Museum",
  "Tate Modern",
  "Tate Britain",
  "Hyde Park",
  "Regent's Park",
  "St. James's Park",
  "Hampstead Heath",
  "Richmond Park",
  "Holland Park",
  "Bushy Park",
  "Imperial College London",
  "University College London",
  "King's College London",
  "Oxford Street",
  "Regent Street",
  "Bond Street",
  "Tottenham Court Road",
  "Covent Garden",
  "Charing Cross Road",
  "Heathrow Airport",
  "Gatwick Airport",
  "Stansted Airport"
]

attraction_bodies = [
  "The official London residence of the Queen, also in Westminster. Open for tours during the summer months only, but a must-see sight even if you don't go in.",
  "The world's third largest observation wheel, situated on the South Bank of the Thames with magnificent views over London.",
  "A white Carrara marble monument designed by John Nash. It is located in the middle of a huge traffic island at one of the busiest intersections in central London where Oxford St meets Park Lane in Mayfair. It used to stand in front of Buckingham Palace, before it was moved to its present location.",
  "One of the most photographed sights in London. The statue of Eros stands proudly in the middle while the north eastern side is dominated by a huge, iconic neon sign.",
  "In the City, St Paul's Cathedral is Sir Christopher Wren's great accomplishment, built after the 1666 Great Fire of London - the great dome is still seated in majesty over The City. A section of the dome has such good acoustics that it forms a \"Whispering Gallery\".",
  "The iconic 19th century bridge located by the Tower of London near the City. It is decorated with high towers and featuring a drawbridge and you can visit the engine rooms and a Tower Bridge exhibition.",
  "Situated just south east of the City, is London's original royal fortress by the Thames. It is over 900 years old, contains the Crown Jewels, guarded by Beefeaters, and is a World Heritage site. It is also considered by many to be the most haunted building in the world. If you are interested in that sort of thing its definitely somewhere worth visiting. Sometimes there are guided ghost walks of the building.",
  "Home of Nelson's Column and the lions, and once a safe haven for London's pigeons until the recent introduction of hired birds of prey. It recently attracted controversy over the 'Fourth plinth', previously empty, being temporarily home to a Marc Quin sculpture, 'Alison Lapper Pregnant'. Overlooked by the National Gallery, it's the nearest London has to a 'centre', and has recently been pedestrianised. Classical music concerts at St Martin-in-the-Fields.",
  "The seat of the United Kingdom parliament and World Heritage site, as well as setting for royal coronations since 1066, most recently that of Queen Elizabeth II in 1953. The Palace of Westminster is open to the public for viewing parliamentary debates, tours of the building are available during August-September when Parliament is away on summer recess and every Saturday throughout the year.",
  "The great bell inside the clock tower at the Houses of Parliament. With more than 400 steps to the top and it's unique architecture, it's become an icon of London. Unfortunately, only UK residents are allowed to climb -- even then, pre-arranging a tour is equired. It is nevertheless an excellent spot to take a photo.",
  "Where parliamentary debates are held. Those insterested in politics will love it -- they can attend debates and watch committees when Parliament in session.",
  "A peculiarly-shaped 180 m- (590 ft-) building in the City, which provides a 360-degree view of London on the 40th floor.",
  "A futuristic skyscraper that was topped-out in 2012 and dominates the London skyline. It's the tallest building in the EU at 310 m (1,017 ft) and features a viewing deck on the 72nd floor.",
  "A vast repository of the world's cultures, with entire sections devoted to Egyptian, Greek, and Middle Eastern artifacts, as well as the piece which united them all, the Rosetta Stone. It also includes the largest collection of mummies outside Egypt and the Elgin Marbles. A definite highlight of a trip to London. Temporary exhibitions are invariably excellent and meticulously researched, but can be expensive. Free.",
  "Houses the British national collection of western European art dating from the 13th to 19th centuries. A truly awe-inspiring collection, notable works include Hans Holbein's The Ambassadors, Van Gogh's Sunflowers and Constable's The Haywain. The vast majority of art is free of charge to visit. Temporary exhibitions are generally fairly costly, but invariably well researched and presented. The audioguides are very comprehensive, have comments on most of the paintings in the museum, and are free though this fact is not advertised. A donation is suggested. In addition to courses, workshops, lectures and other events, the National Gallery has free talks and tours every day. Free.",
  "Just around the corner from the National Gallery and is an entertaining way to learn about British history since the Tudors. Visitors walk around the gallery chronologically, viewing portraits of notable figures from British history - from Henry VII, painted by Hans Holbein, to Blur, painted by Julian Opie. Free except some non-permanent exhibitions.",
  "Named in honour of Queen Victoria and her consort Prince Albert, this museum has existed for over 150 years. It contains a huge collection of decorative arts from all over the world and far back in time, trying to see everything in one day would be exhausting. There are regular exhibitions concentrating on a particular theme from Chinese art to fashion designers. Frequently they put on children's activities and late DJ nights. Free/donation.",
  "Probably the most popular of all the museums here and a must see for many visitors to London. Home to no less than 70 million specimens from across all the life sciences. Especially popular are the dinosaur exhibits, the Darwin Centre and the studio dedicated to BBC wildlife personality extraordinaire, David Attenborough. In the 1980s, the Geological Museum was absorbed but is still in a separate building with a separate entrance. Free/donation.",
  "An enormous art gallery converted from the former Bankside Power Station, a visit to Tate Modern could easily take half a day. The gallery collects together contemporary and modern art from around the world, arranged thematically. The most stunning aspect of the building, is the enormous Turbine Hall, which plays host to a single piece of work commissioned for the space each year. Permanent collection free but all donations welcome.",
  "This gallery houses the Tate collection of British art from 1500 through to contemporary art. A side wing collects together the gallery's collection of paintings by Turner, including some stunning seascapes. Temporary exhibitions are exceedingly varied - recent examples include exhibitions of Turner's paintings of Venice and the work of photographer Wolfgang Tillmans. The best known exhibition is the Turner Prize, consists of works by four artists shortlisted for the annual contemporary art prize, which runs from late October to January each year. Free (though there is a charge for temporary exhibitions).",
  "One of the reatest city parks in the world, Hyde Park covers 350 acres. With over 4,000 trees, a large lake, a meadow and ornamental flower gardens, you'll probably forget that you're right in the centre of London. A must-see for any London tourist.",
  "Large open space very popular with Londoners and less visited by tourists than the other great city parks. A number of lovely lakes, an open air theatre, regular puppet shows, various sporting activities and some splendid ancient trees. There is also a cafe and play area next to the boating pond. ",
  "This 90-acre park, the oldest Royal Park in London, features a large lake that is a wildlife sanctuary for ducks, geese, swans and even pelicans.",
  "Hampstead Heath, or just the Heath as locals call it, is not a park and has a very different character to the highly manicured Royal Parks in central London. This is a remnant of the great Middlesex Wood, which has somehow survived as commonland as the metropolis grew around it, and in that sense it is very unique. Its proximity to, and ease of access from, densely populated urban areas of London, have ensured that Hampstead Heath has a special place in the hearts of Londoners. The heath has much to offer to the visitor, but is generally not that well known as a tourist attraction. If you are visiting the city and simply want some fresh air and calm natural surroundings, then there is no better choice than jumping on the tube and coming for an early morning walk here. Both Hampstead and Belsize Park tube stations are about 10 minutes walk from the heath. The Overground Line station Hampstead Heath is right on the south western tip of the heath.",
  "The largest Royal Park in London (1,000 hectares/2,500 acres), and home to 650 deer. This pastoral landscape of hills and woodlands set amongst ancient trees, with plants, animals and butterflies, offers a peaceful respite to visitors.",
  "Situated west of Kensington Gardens, this city park is particularly attractive in the spring when tulips are in full bloom, and in summer when performances are staged at the open-air theater.",
  "Located near Hampton Court Palace, Bushy Park's mixture of woods, gardens, ponds and grassland makes it a fantastic place to enjoy wildlife with roaming herds of Red and Fallow Deer. The park is also home to the famous Chestnut Avenue, a formal Baroque water garden and the beautiful Diana Fountain.",
  "UK's leading university specialising in science, engineering, business and medicine. The campus is located in a beautiful South Kensington area (Central London), surrounded by numerous cultural institutions.",
  "The first university established in London, offering a wide range of courses. UCL academic research is cited more than any other university in the UK, and its courses are regarded as amongst the best.",
  "Situated in the heart of London over 3 main campuses. Offers undergraduate and postgraduate courses for a range of subjects at a high academic level.",
  "Main shopping street home to flagship branches of all the major British high street retailers in one go including Selfridges John Lewis (includes a food hall), Marks & Spencer and other department stores. Really overcrowded and has pretty ordinary shops actually.",
  "Includes such gems as Hamleys, considered to be London's flagship toy store, on seven levels, and the London Apple Store.",
  "Some of the world's most luxurious designer stores such as Cartier, D&G, Jimmy Choo, Louis Vuitton and Versace.",
  "Contains some of the world's most luxurious designer interior stores such as Heals, whilst the southern end is famous for its large concentration of hi-fi, computer and electronics stores.",
  "Fashionable area home to quaint outlets and relatively expensive designer stores. Around Seven Dials chains include Adidas Originals, All Saints, Carhartt, Fred Perry, G Star Raw and Stussy. For shoes head for Neal St. Also the London Transport Museum whose gift shop has some of the best souvenirs in the city (old maps, vintage Tube posters, etc).",
  "A book lovers haven! New, second-hand, antiquarian and specialist.",
  "The largest airport in London. Most international routes leave from here. You'll probably start and end your trip here.",
  "Second largest airport in London. Offers flights to European destinations.",
  "Third largest airport in London. Offers budget flights to European destinations."
]

attraction_tags = [
  "landmark",
  "landmark",
  "landmark", 
  "landmark",
  "landmark",
  "landmark",
  "landmark",
  "landmark", 
  "landmark",
  "landmark",
  "landmark", 
  "landmark",
  "landmark",
  "museum",
  "museum",
  "museum",
  "museum",
  "museum",
  "museum",
  "museum",
  "park",
  "park",
  "park",
  "park",
  "park",
  "park",
  "park",
  "university",
  "university",
  "university",
  "shopping",
  "shopping",
  "shopping",
  "shopping",
  "shopping",
  "shopping",
  "airport",
  "airport",
  "airport"
]

attraction_times = [
  120,
  150,
  30,
  60,
  60,
  30,
  75,
  60,
  45,
  30,
  60,
  45,
  90,
  300,
  300,
  240,
  180,
  240,
  300,
  415,
  60,
  30,
  60,
  120,
  30,
  15,
  45,
  120,
  100,
  60,
  180,
  120,
  60,
  60,
  45,
  30,
  0,
  0,
  0,
]
for i in 0...(attraction_titles.length)
  sleep 0.25

  attrac = london.attractions.create!(
    address: attraction_titles[i] + ", London, UK",
    title: attraction_titles[i],
    body: attraction_bodies[i],
    tag: attraction_tags[i],
    time: attraction_times[i]
  )

  if !attrac.latitude
    attrac.destroy
    next
  end

  puts attrac.latitude
  puts attrac.longitude
  puts attrac.title
  place = @client.spots(attrac.latitude, attrac.longitude, name: attrac.title)[0]

  begin
    attrac.rating = place.rating
  rescue
    attrac.rating = 0
  end

  begin
    puts place
    photo_url = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=" + place.photos[0].photo_reference + "&key=" + ENV["GOOGLE_API_KEY"]
    puts photo_url
    attrac.image_url = photo_url
  rescue
    attrac.image_url = ""
  end
  attrac.save


end
