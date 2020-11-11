# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Visitor.destroy_all
DarkSkyPark.destroy_all
BucketlistLocation.destroy_all
Review.destroy_all
Comment.destroy_all

visitors = [
    { username: 'justine', password: 'secret' },
    { username: 'jake123', password: 'password' },
    { username: 'Leeloo', password: 'cat' },
    { username: 'Yokai', password: 'girlfriend' },
    { username: 'Perry', password: 'bubba' }
]

visitors.each { |visitor| Visitor.create!(visitor) }

dark_sky_parks = [
    {
        name: 'Antelope Island State Park',
        description:
            "Antelope Island State Park consists of 28,800 acres of land on the eponymous island separating shallow Farmington Bay from the open water of teh Great Salt Lake, a large terminal lake in the state of Utah. The park has begun to actively conserve its remaining darkness, and has become a popular destination for area stargazers looking to get out from under the city's glow.",
        img_url:
            'https://www.darksky.org/wp-content/uploads/2017/04/AISP-Dan-Ransom-700px-366px.png',
        city: 'Syracuse',
        state: 'UT'
    },
    {
        name: 'Anza-Borrego Desert State Park',
        description:
            "Located in soutern California, Anza-Borrego Desert State Park is the country's second largest state park. The Park preserves the Colorado Desert, which is itself chiefly composed of the western Sonoran Desert. Set in the middle of the park, the city of Borrego Springs, California, became the world's second IDA International Dark Sky Community in 2009.",
        img_url:
            'www.darkskypark.org/wp-content/uploads/2018/01/ABDSP-featured-700px-366px.png',
        city: 'Borrego Springs',
        state: 'CA'
    },
    {
        name: 'Arches National Park',
        description:
            "Arches National Park lies north of Moab in the state of Utah. One of Utah’s 'Mighty 5' National Parks, Arches is bordered by the Colorado River in the southeast and is widely known as the site of more than 2,000 natural sandstone arches, such as the massive, red-hued Delicate Arch in the east. Long, thin Landscape Arch stands in Devils Garden to the north. Other geological formations include Balanced Rock, towering over the desert landscape in the middle of the park.",
        img_url:
            'https://www.darksky.org/wp-content/uploads/2019/06/LandscapeArch_NPSWillPedro_IDA-768x612.jpg',
        city: 'Moab',
        state: 'UT'
    },
    {
        name: 'Big Bend Ranch State Park',
        description:
            'Big Bend Ranch State Park is a ~355,000 acres state park in the “Trans-Pecos” region of far west Texas, U.S. It extends along the U.S.-Mexico border from southeast of Presidio to near Lajitas, in both Brewster and Presidio counties. It is situated adjacent to Big Bend National Park, which was designated an International Dark Sky Park in 2012. The geographic setting of Big Bend Ranch is extremely remote and rugged, such that the area has been referred to in Spanish as El Despoblado (“the uninhabited”). At one time among the 15 largest working cattle ranches in the United States and described as ‘half the size of Rhode Island’, Big Bend Ranch was purchased by the State of Texas in 1988 and opened to the public on a limited basis three years later. It is now a regional attraction for enthusiasts of camping, hiking, off-road driving, bird watching photography, boating, fishing and other outdoor pursuits. Since the Big Bend National Park IDSP designation, those recreational activities have expanded to include stargazing. With very little in the way of outdoor lighting and its location in the same large ‘pool’ of natural darkness encompassing the national park, Big Bend Ranch is a somewhat more accessible outlet for visitors seeking some of the darkest night skies in the lower 48 U.S. states. The Park seeks to educate visitors, with a steadily increasing offering of nighttime programs, and has made an impressive effort to reach out beyond the Park boundaries to the communities whose lighting choices impact its night skies. In June 2020, Big Bend Ranch State Park announced the inclusion of the Chinati Mountains State Natural Area (CMSNA) into their existing International Dark Sky Park designation. The addition of CMSNA added approximately 40,000 acres of rugged and remote Chihuahuan Desert to the existing BBRSP Dark Sky Park designation. Together, with neighboring Big Bend National Park, this region of the Big Bend is one of the largest areas of protected night sky in the United States.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2017/11/BBRSP-feat-700px-366px.png',
        city: 'Terlingua',
        state: 'TX'
    },
    {
        name: 'Big Cypress National Preserve',
        description:
            'Big Cypress National Preserve is an IUCN category IV (habitat/species management area) site consisting of 290,000 hectares of U.S. federal lands in southern Florida, about 72 km west of Miami. The Preserve is bordered by the wet freshwater prairie of Everglades National Park to the south, and other federal and State of Florida lands to the west. The Park’s human prehistory stretches back thousands of years, and it was occupied historically by a number of Native American tribes through the nineteenth century, when the Seminole Indians were removed from the land. Big Cypress is a center of biodiversity, hosting a variety of species including orchids, cypresses, mangroves, venomous snakes, birds, the Florida black bear and the elusive Florida panther. Together with nearby Everglades National Park, Big Cypress is an important bulwark against land development in south Florida, representing some of the last dark territory in the region. Still, it is impacted by light from the Miami and Naples/Fort Meyers metro areas. Preserve staff have recognized the value of the dark buffer that Big Cypress and Everglades place between these cities as it applies to their overall conservation mission, and have taken concrete steps to protect the resource and raise its awareness among visitors.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2016/10/BigCypress-featured-700px-366px.png',
        city: 'Ochopee',
        state: 'FL'
    },
    {
        name: 'Black Canyon of the Gunnison National Park',
        description:
            'Black Canyon Of The Gunnison is a 12,440-hectare U.S. National Park situated in a part of western Colorado. At its heart is the Black Canyon, a steep-walled, chasm formed by the Gunnison River as it carved its way through nearly 700 meters’ worth of Precambrian schist and gneiss deposits. The feature takes its name from the near-permanent shadowing of the river bottom due to the strong vertical relief of the canyon walls. The Park is composed largely of federal lands and private property used for agricultural production, helping preserve its dark skies against long-term urban encroachment. There is little artificial light at night on the property, and the fixtures that exist are 100% compliant with the Park’s lighting plan. Regular interpretive programming stresses the value of dark skies and their appreciation at the Canyon, and the Park has worked with a local amateur astronomy society since 1998 to put on nighttime events engaging thousands of visitors every year.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2015/09/BLCA_Greg_Owens_700px-460px.png',
        city: 'Montrose',
        state: 'CO'
    },
    {
        name: 'Bryce Canyon Natio/nal Park',
        description:
            'Bryce Canyon National Park, a sprawling reserve in southern Utah, is known for crimson-colored hoodoos, which are spire-shaped rock formations. The park’s main road leads past the expansive Bryce Amphitheater, a hoodoo-filled depression lying below the Rim Trail hiking path. It has overlooks at Sunrise Point, Sunset Point, Inspiration Point and Bryce Point.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2019/08/19-10-BRCA-Certified-as-International-Dark-Sky-Park-Photo-Keith-Moore-768x512.jpg',
        city: 'Bryce',
        state: 'UT'
    },
    {
        name: 'Canyonlands National Park',
        description:
            'Canyonlands National Park preserves a series of canyons, mesas and other landforms the confluence of the Colorado River and the Green River on the Colorado Plateau. The park is divided into four ‘districts’: the Island in the Sky, the Needles, the Maze, and the Colorado and Green rivers themselves. The American environmental essayist Edward Abbey, a frequent visitor to Canyonlands, described the Park as ‘the most weird, wonderful, magical place on earth’ and wrote ‘there is nothing else like it anywhere.’ Much like nearby Capitol Reef National Park and Natural Bridges National Monument – both IDA Dark Sky Parks – Canyonlands is in a highly defensible location with little artificial light pollution. The Canyonlands ethos is to make visitors and neighbors alike aware of its rare and fragile dark night sky as a resource worth defending.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2015/08/CANY-featured-image-700px-460px.png',
        city: 'Moab',
        state: 'UT'
    },
    {
        name: 'Capitol Reef National Park',
        description:
            'Capitol Reef National Park sprawls over 98,000 hectares of federal land in southern central Utah. It is named for a visually spectacular region of the Waterpocket Fold, a geological feature that made the area virtually impassable to early Anglo-American settlers. Its domes and cliffs of white Navajo Sandstone define the park’s landscape and reminded early visitors of the dome of the United States Capitol building. Despite serving over 830,000 visitors in 2014, Capitol Reef has largely resisted infrastructure development and instead offers visitors a rustic experience. As a consequence there is very little artificial lighting in the park, so visitors experience a night that is remarkably close to what it would have been in the pioneer era.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2015/04/capitol-reef-featured-700px-460px.png',
        city: 'Torrey',
        state: 'UT'
    },
    {
        name: 'Capulin Volcano National Monument',
        description:
            'Capulin Volcano National Monument is a U.S. National Monument located in northeastern New Mexico that protects and interprets an extinct cinder cone volcano in the Raton-Clayton Volcanic Field near the foothills of the Sangre de Cristo Mountains. The cone rises steeply from the surrounding grassland to an elevation of 2,494 m above sea level. Its irregular rim is about a 2 km in circumference, and the bottom is about 120 m below the rim. From the rim, visitors have unobstructed, panoramic views of the volcanic field, distant snow-capped mountains, and portions of four states (New Mexico, Oklahoma, Texas and Colorado). The Park is situated in one of the darker locations in the lower 48 U.S. states, and as a result it presents night skies that are nearly pristine under typical conditions. The surrounding topography is extremely irregular, consisting of approximately 120 volcanoes and numerous mesas and buttes that rise as high as 600 m above the surrounding plains and stretch from 2 to 22 km. These landforms not only discourage development, but serve as natural screens for distant sources of light on the horizon. Park staff are increasingly knowledgeable about the value of the dark-sky resource there, and present larger numbers of night skies interpretive programs with each passing year. Outreach efforts are underway to communicate the value of dark night skies to residents of sparsely-populated nearby communities.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2016/08/CAVO-featured-700px-366px.png',
        city: 'Capulin',
        state: 'NM'
    },
    {
        name: 'Cedar Breaks National Monument',
        description:
            'Cedar Breaks National Monument is a U.S. National Monument in the state of Utah comprising 2,941 ha (6,155 acres) of badlands at the edge of the Colorado Plateau. A natural amphitheater, the Park is famous for its brilliantly-colored geological formations resulting from uplift and erosion of sediments deposited in a lake environment some 60 million years ago. Erosional processes applied to relatively soft shale, limestone and sandstone have resulted in the formation of pinnacles known as ‘hoodoos’ that give the landscape at Cedar Breaks its distinct appearance. Its National Monument designation protects both these landforms as well as a number of threatened or endangered species and evidence of 10,000 years of human presence and occupation in the area. The Park is situated in one of the largest regions of remaining natural darkness in the lower 48 U.S. states. Along with other U.S. National Parks and Monuments on the Colorado Plateau – some of which are already designated IDA International Dark Sky Parks – Cedar Breaks is developing into a mecca for astrotourism. The Park’s leadership have seized on this opportunity to provide an expanding array of education and outreach opportunities to both visitors and residents of communities across southern Utah. The message is simple: Cedar Breaks is in possession of a fragile and vanishing natural resource, and the Park will make every effort to help preserve it. With few resources, proportional to its small visitor base, the Park has done commendable work to that end.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2017/03/CEBR-featured-700px-366px.png',
        city: 'Cedar City',
        state: 'UT'
    },
    {
        name: 'Chaco Culture National Historical Park',
        description:
            'Chaco Culture National Historical Park is home to many ancient wonders including the ruins of a civilization that thrived over a thousand years ago. The park, which has been protecting its archaeological riches since it was established in 1907, also protects its naturally dark night skies through a set of strict lighting guidelines that include the use of dark sky friendly lighting. Chaco is also exemplary in its public outreach efforts, holding numerous educational programs and events on dark skies and astronomy, and features a public observatory.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2015/04/chaco-canyon-700px-460px.png',
        city: 'Albuquerque',
        state: 'NM'
    },
    {
        name: 'Cherry Springs State Park',
        description:
            'Due to its exceptionally dark skies, Cherry Springs State Park is one of the best places in the eastern U.S. for stargazing. Situated at 700 m above sea level in the largely undeveloped 106,000 hectare Susquehannock State Forest, the Park’s ‘Astronomy Field’ offers an unobstruced 360-degree view. Cherry Springs is open year-round and 60 to 85 nights each year have ideal conditions for observing. Each year the park hosts two major star parties, which attract several hundred astronomers for several nights.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2015/04/cherry-springs-featured-700px-460px.png',
        city: 'Potter County',
        state: 'Pennsylvania'
    },
    {
        name: 'Clayton Lake State Park',
        description:
            'Clayton Lake State Park, located in Union County, New Mexico, is a place of rolling grasslands, volcanic rocks, and sandstone bluffs on the edge of the American Great Plains. The area around the Park was a stopover point for travelers along the Cimarron Cutoff of the Santa Fe Trail during the 19th century; today the Park hosts approximately 65,000 visitors per year, many of whom attend star parties at the Park’s observatory facility. Park staff and volunteers worked closely with the Town of Clayton and the New Mexico State Parks system to ensure quality lighting guidelines both within the park and in the surrounding community. In 2010 the park completed lighting retrofits to conform 100% with the shielding and spectral considerations for low-light areas.',
        img_url:
            'https://i.pinimg.com/originals/57/bf/f1/57bff1de3a21547224ca9b24aa1cb8d1.jpg',
        city: 'Union County',
        state: 'NM'
    },
    {
        name: 'Copper Breaks State Park',
        description:
            'Copper Breaks State Park, located in northern Texas some 21km south of the town of Quanah, contains two small lakes and 16 km of trails. “Breaks” refers to the fractures and faults that define the limited waterways of the park. Small amounts of copper, insufficient for commercial mining purposes, can be found in the area clay. The land comprising the park was historically held by the Comanche and Kiowa Native American tribes and were purchased from a private landowner in 1970. Since 1996 the park has capitalized on its superb celestial assets by hosting Star Walks and other astronomy programs.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2015/04/CBSP_Mukherjee_featured_72dpi.png',
        city: 'Quanah',
        state: 'TX'
    },
    {
        name: 'Craters Of The Moon National Monument',
        description:
            'Craters Of The Moon National Monument protects some 21,618 hectares of volcanic formations and lava flows on the northern edge of the Snake River Plain in south-central Idaho, U.S. A sequence of eruptions in the area from roughly 15,000 to 2,000 years ago resulted from rifting of the surface due to residual heat from the Yellowstone hotspot, thought to have been located under what is now Craters Of The Moon some 10 to 11 million years ago. Repeated lava flows raised the land elevation enough to expose it to prevailing southwesterly winds, helping to keep the area dry. As a result, there is very little vegetation on the lava fields, giving the area the sense of desolation. Upon signing his executive order creating the Monument in 1924, U.S. President Calvin Coolidge succinctly described it: ‘this area contains many curious and unusual phenomena of great educational value and has a weird and scenic landscape peculiar to itself.’ The Monument sits at the edge of one of the largest remaining ‘pools’ of natural nighttime darkness in the lower 48 U.S. states, defined by the rugged wilderness of interior Idaho. Forbidding conditions on the Snake River Plain deterred settlers in historic times, and the area remains sparsely populated. This also serves as a form of natural defense against development that could bring significant new sources of artificial light at night; most larger cities in Idaho roughly follow the course of the Snake River as it sweeps a wide arc through the southern half of the state. Craters Of The Moon has capitalized its dark-sky resource – as well as its planetary-themed name – to draw visitor attention to the splendor of its night skies and their active conservation.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2017/08/CRMO-feat-700px-366px.png',
        city: 'Arco',
        state: 'ID'
    },
    {
        name: 'Dead Horse Point State Park',
        description:
            'Dead Horse Point State Park consists of 2,170 hectares (5,362 acres) of land perched above a gooseneck bend of the Colorado River and adjacent to Canyonlands National Park. Its name derives from the park lands’ use as a natural corral by cowboys in the nineteenth century. At an elevation of 1,800 meters (5,900 feet) above sea level, its dry, high desert climate makes for challenging conditions for the survival of local flora and fauna. In addition to several overlooks, the park features a visitor center, a campground with 21 individual campsites and one group campsite, a picnic area, and a 14-kilometer (9-mile) loop hiking trail. The park area is best known for its use in the iconic final ‘Grand Canyon’ scene of the 1991 film Thelma & Louise. The park’s situation on the relatively undeveloped Colorado Plateau, and over 48 km (30 mi.) from Moab – the nearest populated place of any consequence – renders it almost as dark as Canyonlands International Dark Sky Park. Furthermore, its position above the canyon walls makes for spectacular, virtually unobstructed, viewing of the night sky with sweeping, 360-degree panoramas. Building on the success at Canyonlands, the park has partnered with the U.S. National Park Service to host evening dark-skies programming for visitors. It has also improved park lighting and is helping make campers aware of their impacts to night sky quality.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2016/05/DHPSP_Bettina_Woolbright_CC-BY-ND-2.0.png',
        city: 'Moab',
        state: 'UT'
    },
    {
        name: 'Death Valley National Park',
        description:
            'Death Valley National Park is distant enough from the large cities of the southwest so that much of the night sky above the desert floor is near pristine and, in many places, offers views close to what could be seen before the rise of cities. While Death Valley is comprised of rugged wilderness areas and is famous for its extreme climate, the night skies above the park are as fragile as the land below. The Park is largely free of its own sources of light pollution but the lights of distant Las Vegas and other cities have an impact on the park’s skies and desert nightlife. The skies there are affected by only the smallest amounts of light pollution classifying it at the highest level of IDA designation and star-filled skies, the “Gold Tier”. Astronomical objects seen there are available only to some of the darkest locations across the globe.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2015/01/deathvalley-featured-700px-460px.png',
        city: 'Death Valley',
        state: 'CA'
    },
    {
        name: 'Dinosaur National Monument',
        description:
            'Dinosaur National Monument is located on the southeast edge of the Uinta Mountains on Colorado Plateau the border between Colorado and Utah at the confluence of the Green and Yampa Rivers. The park contains over 800 paleontological sites and is home to some of the most abundant and well-preserved dinosaur fossils in the world, providing a treasure trove for visitors and scientists alike since the fossil beds were found in 1909. The region was declared a national monument on October 4, 1915. Owing to the Monument’s remote location, high elevation, and low humidity, enjoying Dinosaur National Monument’s starry night skies today is like stepping back in time.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2019/04/night-sky-at-mitten-park-2-1080x646.jpg',
        city: 'Dinosaur',
        state: 'CO'
    },
    {
        name: 'Dr. T.K. Lawless County Park',
        description:
            'Located in the State of Michigan, Dr. T.K. Lawless Park (Lawless Park) is nestled within Cass County, in the Southwest corner of the Lower Peninsula. The park, which includes inland lakes and streams, received its namesake from Chicago–based physician, Dr. Theodore Kenneth Lawless, M.D., who posthumously deeded the land, 850 acres, to the County in 1971.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2020/01/Lawless-Park-Horizon-1.jpg',
        city: 'Jones',
        state: 'MI'
    },
    {
        name: 'East Canyon State Park',
        description:
            'East Canyon State Park is situated in a narrow-walled canyon about 30 kilometers northeast of the Salt Lake City, Utah, metro area. The centerpiece feature of the park is a 246-hectare reservoir formed by damming East Canyon Creek as part of the Weber Basin Project in the mid-1960s. The park’s daytime amenities include boating, fishing, camping, and hiking, including parts of the nearby the nearby Mormon Pioneer Trail. By night the park is an important source of darkness for stargazers and nocturnal wildlife alike, and park staff offer regular night-sky programs and outreach to visitors.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2020/08/ECSP-IDSP-feat-700px-366px.jpg',
        city: 'Morgan',
        state: 'UT'
    },
    {
        name: 'El Morro National Monument',
        description:
            'El Morro National Monument (El Morro) was created in 1906 by President Theodore Roosevelt in order to protect Inscription Rock, a sandstone bluff containing over 2,000 inscriptions and petroglyphs spanning a cultural continuum of almost 1,000 years. The park also protects significant archeological resources, including a largely unexcavated Ancestral Puebloan village site atop the bluff which is among the largest 13th and 14th century settlements in the American Southwest. The park was expanded in 1916 by President Woodrow Wilson, and again in 1950 by the U.S. Congress. Today, the monument protects 1,278 acres of land at approximately 7,200′ to 7,500′ of elevation and is administrered by the U.S. National Park Service (NPS).',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2019/11/wallentinsen-9129-1-768x512.jpg',
        city: 'Ramah',
        state: 'NM'
    },
    {
        name: 'Enchanted Rock State Natural Area',
        description:
            'Enchanted Rock State Natural Area, named for its giant pink granite dome rising from the Llano Uplift, spans the border between Gillespie County and Llano County, south of the Llano River and some 24 km north of Fredericksburg, Texas. Popular activities at the park include caving, hiking, primitive backpack camping, rock climbing and picnicking.  Enchanted Rock has hosted star parties for park visitors since 2011.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2015/04/enchanted-rock-featured-700px-460px.png',
        city: 'Fredericksburg',
        state: 'TX'
    },
    {
        name: 'Geauga Observatory Park',
        description:
            'The idea for Observatory Park began with the donation of a 0.64-meter telescope and a small parcel of land. In 2008, the park acquired nationally recognized Nassau Observatory and the land adjacent to i cally, Nassau Observatory was moved from Cleveland to Geauga County in 1957 due to increasing light pollution, but it wasn’t routinely used after the early 1990s. The finished park boosts an observatory, two telescopes and permanent astronomy-themed exhibits on its 418-hectare preserve in Monteville Township. The park and its features provide an exciting link to the history of astronomy in Ohio while creating resources for the future. Science professionals from numerous universities, the Great Lakes Science Center and the Cleveland Museum of Natural History collaborated with local astronomy organizations and school districts for Observatory Park’s programs and design.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2015/05/GeaugaObservatoryPark-featured-700px-460px.png',
        city: 'Montville Township',
        state: 'OH'
    },
    {
        name: 'Goblin Valley State Park',
        description:
            'Goblin Valley State Park is situated on 1,479 hectares (3,654 acres) of land at the edge of the San Rafael Swell in southeastern Utah, U.S. It is best known for its remarkable local topography, much of which consists of thousands of ‘hoodoos’, freestanding erosional pinnacles capped by durable sandstone rock layers protecting material beneath them. The structures, known locally as ‘goblins’, take on a variety of fantastical shapes and stand as high as several meters. Along with Bryce Canyon National Park, 300 kilometers (185 miles) to the southwest, Goblin Valley has some of the highest densities of hoodoos anywhere in the world. The Park’s location in a remote corner of the Colorado Plateau and away from major urban centers yields a dark-sky resource that is comparable in quality to several Gold-tier IDA Dark Sky Parks in the region, such as Natural Bridges National Monument, Capitol Reef National Park, and Canyonlands National Park. Goblin Valley attracts far fewer visitors than its higher-profile neighbors, but those who choose to visit this out-of-the-way gem are rewarded with nighttime views of the same spectacular skies and much smaller crowds. Park leadership and staff have committed to preserving the quality of local night skies and have developed a modest but effective outreach program that draws visitor attention to the fact that ‘half the park is after dark.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2016/07/GVSP_featured_700px_366px.png',
        city: 'Green River',
        state: 'UT'
    },
    {
        name: 'Grand Canyon National Park',
        description:
            'Grand Canyon National Park in Arizona, U.S., is among the most recognizable parks in the world. Consisting of some 4,926 square kilometers (1,217,262 acres) of U.S. federal lands on the Colorado Plateau, the Park preserves 446 kilometers (277 miles) of the gorge of the Colorado River from its low-water crossing at Lee’s Ferry in the northeast to the entrance to Lake Meade in the far west. The canyon is an enormous natural structure standing up to 29 kilometers (18 miles) wide and almost 2 kilometers (1 mile) in depth. Given the Grand Canyon’s remarkably dark night skies and U.S. National Park Service (NPS) efforts to make visitors aware that ‘half the park is after dark,’ an authentic and meaningful dark-skies experience is available to over 6 million visitors annually. The Park is situated in some of the most remote and rugged territory left in the lower 48 U.S. states; this landscape thwarted most historical attempts at development and has left the Canyon’s surroundings largely unpopulated. However, its historically high rate of visitation left a legacy of over 5,000 light fixtures in the Park. 2016 the park was awarded  Provisional International Dark Sky Park status and the NPS and the Grand Canyon Association embarked on a multi-year effort to bring all of those fixtures into compliance with IDA requirements. In June of 2019, Grand Canyon National Park completed this project and was awarded full status in time for the 100th anniversary of the establishment of the National Park.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2016/05/GRCA-featured-700px-366px.png',
        city: 'Grand Canyon',
        state: 'AZ'
    },
    {
        name: 'Great Basin National Park',
        description:
            'Great Basin National Park is comprised of 31,230 hectares (77,180 acres) of U.S. federal lands centered on the eponymous Great Basin, a dry and mountainous region between the Sierra Nevada of California and the Wasatch Mountains of Utah, USA. Situated approximately 470 kilometers (290 miles) north of Las Vegas, Nevada, the Park protects stands of ancient bristlecone pine trees, the world’s oldest known non-clonal organisms, and the Lehman Caves at the base of 3,982-meter (13,063-foot) Wheeler Peak. The Highland Ridge Wilderness, lying just south of the Park, brings the total area of contiguous protected lands to 590.0 km2 (227.8 mi2). The Park is located in one of the least-populated regions of the lower 48 U.S. states, and the typical basin-and-range topography of the Great Basin serves to help shield the site from skyglow from distant cities. The result is a truly notable dark-sky resource worth protecting. To this end, the Park has undertaken efforts to improve its own lighting as well as to educate both Park visitors and residents of neighboring communities on the importance of dark skies at Great Basin and the need to protect them.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2016/05/GRBA-featured-700px-366px.png',
        city: 'Baker',
        state: 'NV'
    },
    {
        name: 'Jackson Lake State Park',
        description:
            'This park is an ‘Oasis in the Plains,’ for swimming, boating, fishing and waterskiing. But that’s not all… Jackson Lake is ranked one of the ‘Top 15 Park Beaches’ by Reserve America. Anglers, boaters, or naturalists realizing there’s too much fun for just one day enjoy the variety of water or land-based recreation  land-based facilities found here. Birders and hunters flock here because of the parks location in the Central Flyway for migratory birds. Quiet winter months provide hearty wildlife viewers some excellent opportunities to spot the many animals that live here. No matter the season, Jackson Lake is, as novelist James Michener suggests, ‘an oasis of the plains.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2020/09/Screen-Shot-2020-09-10-at-10.14.23-AM.png',
        city: 'Orchard',
        state: 'CO'
    },
    {
        name: 'James River State Park',
        description:
            'James River State Park is a 631-hectare property located in the geographic center of Virginia, about 23 miles northeast of Lynchburg, VA, and 30 miles southwest of Charlottesville, VA. The rolling hills of the Piedmont region are prevalent within the park, setting the stage for a variety of forests, meadows, and flood plains. The park also offers river access to the historic, and scenic, James River containing over two miles of river frontage. In addition to numerous recreational opportunities, the park also offers overnight accommodations in its campgrounds and modern cabins. The night skies at the park offer incredible viewing opportunities for the eastern United States, especially considering their close proximity to several larger cities. The park offers several programs throughout the year utilizing local astronomy groups to give visitors the opportunity to see our dark sky through some remarkable telescopes.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2019/03/James-River-State-Park_North-1080x721.jpg',
        city: 'Gladstone',
        state: 'VA'
    },
    {
        name: 'Joshua Tree National Park',
        description:
            'Joshua Tree National Park is a U.S. national park sprawling over land that straddles the boundary of two deserts: the higher Mojave Desert and lower Colorado Desert. It protects crucial habitat for endemic species and hundreds of archaeological and historic sites. With respect to dark skies, the Park is in a virtually unique setting sandwiched between the ‘Inland Empire’ metropolitan area of some 4 million inhabitants near its western edge, and the last pool of natural darkness remaining in Southern California in its eastern extremity. For residents of the greater Los Angeles area – some 18 million people as of 2015 – Joshua Tree National Park is the nearest convenient place to go stargazing under a relatively dark sky. While the western half of the Park is significant impacted by light from Palm Springs and, to a lesser extent, the cities of the nearby Morongo Basin, visitors who make the trek to the Park’s eastern wilderness area are rewarded with some of the darkest night skies left in the region. With the rise of an astrotourism base, the Park has taken an increasingly active role in preserving what darkness remains. Its own house is in good order, the result of a lack of utility-provided electricity within the Park boundaries to power outdoor lighting and a reliance on solar photovoltaic systems. It has made some headway in influencing neighboring jurisdictions, including pressing successfully for major improvements to the lighting ordinance in surrounding San Bernardino County. The Park has also supported efforts to update lighting codes in the cities of Twentynine Palms and Yucca Valley, and it convinced a nearby military base to substantially reduce its use of outdoor light at night. The Park maintains a program of education and outreach to its visitors, impressing on them both the value of natural darkness and the ways that careless use of artificial light at night harms the nighttime environment.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2017/05/JOTR-LianLaw-feat-700px-366px.png',
        city: 'Twentynine Palms',
        state: 'CA'
    },
    {
        name: 'Petrified Forest National Park',
        description:
            'Petrified Forest National Park  is a 594.6 km2 (146,930-acre) IUCN Category II site located in northeastern Arizona, U.S. The Park preserves a landscape dominated by semi-desert shrub steppe and a series of colorful, highly eroded badlands. Its name refers to the presence of many well-preserved trunks of trees that grew in a humid and subtropical forest near the edge of the supercontinent Pangaea during the Late Triassic period of the Mesozoic era, about 225 million years ago. Downed trees were quickly covered by sediment washing out of mountains in the continent’s interior, creating anoxic conditions that promoted fossilization among alternating layers of mudstone, silt- stone, and claystone. Because the colorful, mineralized interiors of the trunks are highly valued when cut and polished, protection of the site from destructive fossil hunting became a priority in the early twentieth century, leading to its establishment first as a U.S. National Monument in 1906 and a National Park in 1962. In addition to preserving its geological resources, the Park also boasts many kilometers of trails for hiking and mountain biking, and visitors enjoy other activities such as photography and wildlife viewing. Given its location in a rural area of Arizona, and that roughly half of its territory is designated wilderness, Petrified Forest is increasingly recognized as a valuable reservoir of nighttime darkness. In the last decade, the Park began offering nighttime programming highlighting the value of the night sky to wildlife and other natural resources; more recently, outreach has directly addressed the issue of light pollution and external impacts to the Park’s night skies. Further, the Park has begun to remedy problematic outdoor lighting in order to better serve as an example of proper lighting practices. Designation as an International Dark Sky Park not only recognizes the Park’s efforts to protect its nighttime resources, but complements the value of other International Dark Sky Places in northern Arizona that keep pressure on governments from the municipal to state levels in pursuing policies that promote preservation of dark night skies across the region.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2018/06/PEFO-feat-700px-366px.png',
        city: 'Petrified Forest',
        state: 'AZ'
    },
    {
        name: 'Rappahannock County Park',
        description:
            'The Rappahannock County Park is a 7.3-acre park located centrally in Rappahannock County off Route 211 near the town of Washington, Virginia, mere miles east of Shenandoah National Park. The park offers a quiet area for picnicking, hiking, outdoor activities such as butterfly counting, birding, trout fishing, and stargazing. Located only several miles from the Appalachian Trail access near Chester Gap, the Park serves as a mini gateway into the historic Virginia Blue Ridge foothills, one of the darkest remaining areas within the Eastern United States.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2019/02/Rapp-County-Park-Rt-211-Milky-Way-Hi-Res-e1551804876346.jpg',
        city: 'Washington',
        state: 'VA'
    },
    {
        name: 'South Llano River State Park',
        description:
            'South Llano River State Park is situated on approximately 1,050 hectares (2,600 acres) of land on the Edwards Plateau just east of the eponymous South Llano River in west-central Texas, U.S. The area has seen at least 8,000 of human inhabitation, with the first Europeans arriving in the mid-eighteenth century. By the early twentieth century, the current Park lands had become a private ranch run by the family of Walter White Buck, Sr. The Park remained in the Buck family until son Walter, Jr., donated the land to the State of Texas in the 1970s. In addition to learning about the history of the area, Park visitors now enjoy camping, picnicking, canoeing, tubing, swimming, fishing, hiking, mountain biking, and bird watching. Located at the edge of a vast pool of darkness ranging southwest to the Big Bend of the Rio Grande River, SLRSP has taken advantage of its natural nighttime darkness to draw more visitors with nighttime interpretive programming. Working with local governments, a regional nonprofit, and institutions of primary/secondary and post-secondary learning, the Park works actively to preserve its night sky resource and make the experience available to a wider range of people that may have otherwise visited this out-of-the-way park in the past.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2017/02/SLRSP-featured-700px-366px-1.png',
        city: 'Junction',
        state: 'TX'
    },
    {
        name: 'Steinaker State Park',
        description:
            'Steinaker State Park is located 11 km (7 miles) north of the city of Vernal in Uintah County, Utah, U.S. Named for area ranching pioneer John Steinaker, the Park highlights a manmade lake fed by Ashley Creek behind Steinaker Dam, a 609-meter (1,997-foot) long earthfill dam completed in 1962. The Park’s situation at 1,700 meters (5,500 feet) elevation near the foot of the Uinta Mountains brings an arid climate with hot summers and cold winters. Well-known to naturalists and fossil hunters, the area brims with a large diversity of plant and animal species. Steinaker’s location makes it a popular base for exploring both Dinosaur National Monument to the east and the Flaming Gorge National Recreation Area to the north. The Park’s remote location in a little-developed part of the state of Utah has kept its night skies relatively dark. The nearest significant source of light, Vernal, is effectively screened by topography to the Park’s south. Besides a small light dome from the town of Dinosaur, Colorado, to the Park’s east, much of its horizon is protected by an expanse of the Ashley National Forest to the north and west. This makes Steinaker a relatively defensible location that is readily accessible to the public at night. The Park has involved itself in area efforts to rein in light pollution, and increasingly offers nighttime programming to visitors who come to marvel at the night sky in such unspoiled conditions.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2018/01/Steinaker-featured-700px-366px.png',
        city: 'Vernal',
        state: 'UT'
    },
    {
        name: 'Stephen C. Foster State Park',
        description:
            'Stephen C. Foster State Park is a small (32-hectare; 80-acre) property in the vast 1,627 km2 (402,000-acre) expanse of the surrounding Okefenokee National Wildlife Refuge of southeastern Georgia, U.S. The Refuge protects about 93% of the Okefenokee Swamp, the largest blackwater swamp in North America and one of Georgia’s ‘Seven Natural Wonders.’ Due to this protected status, the Okefenokee remains one of the oldest and most well preserved freshwater areas in America. The Park’s situation in the rural American South, and within the surrounding National Wildlife Refuge, both isolates it from major metropolitan areas and affords a significant natural buffer against future development: besides the land’s protected status, the swamp environment tends to naturally repel settlement attempts. As a result, and with very little lighting on its property, Stephen C. Foster enjoys a degree of natural nighttime darkness almost without parallel in the eastern U.S. The Park has developed an array of outreach and interpretive activities, nearly all of which involve or feature a message concerning the value and fragility of dark local night skies. Its Dark Sky Park designation will help raise the profile of this special place, affording an accessible, Gold-tier night sky experience to many tens of millions of people living in the region.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2016/11/SCFSP_featured_700px-366px.png',
        city: 'Fargo',
        state: 'GA'
    },
    {
        name: 'Tumacácori National Historical Park',
        description:
            'Tumacácori National Historical Park is a 150-hectare site in the upper Santa Cruz River Valley in Santa Cruz County, Arizona, U.S. It preserves the ruins of three Spanish mission communities, two of which are U.S. National Historic Landmark sites. Mission San José de Tumacácori and Mission Los Santos Ángeles de Guevavi were established in 1691 by Father Eusebio Kino (1645-1711), a Jesuit priest. The third mission protected by the park, Mission San Cayetano de Calabazas, was established nearby in 1756. According to the park website, Tumacácori ‘sits at a cultural crossroads in the Santa Cruz River valley. Here O’odham, Yaqui, and Apache people met and mingled with European Jesuit and Franciscan missionaries, settlers, and soldiers, sometimes in conflict and sometimes in cooperation.’ After experiencing a decline in the early nineteenth century and in significant disrepair, the missions were abandoned by 1848. It is an important site in the history of the Spanish colonization of what is now the southwestern United States. Since 2016, the Park has conducted a number of evening programs intended to draw visitors’ attention to the night sky over Tumacácori in the context of natural darkness as a cultural resource. This is similar to the interpretive strategy at Chaco Culture National Historical Park, which became an IDA International Dark Sky Park in 2013. In addition to expanding the palette of visitor offerings at a Park whose focus is not on natural resources, the staff at Tumacácori use night skies as a means of conveying a sense of what the Southwest was like in the time when the first Spanish missionaries arrived in the seventeenth century. Despite its situation almost midway between two growing urban centers in southern Arizona, Tumacácori retains a remarkably dark sky that helps evince in visitors a sense of what night skies of the past looked like.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2018/04/TUMA-feat-700px-366px.png',
        city: 'Tumacacori',
        state: 'AZ'
    },
    {
        name: 'Waterton-Glacier International Peace Park',
        description:
            'Waterton Lakes National Park in Alberta, Canada, and Glacier National Park in Montana, U.S., are collectively the first IDA International Dark Sky Parks spanning both sides of an international border. At a total of 4,606 km2 (1,138,167 acres), the parks share the distinction of being the world’s first International Peace Park (1932), two UNESCO Biosphere Reserves, and a single UNESCO World Heritage Site. According to UNESCO, the parks offer “outstanding scenery,” and are “exceptionally rich in plant and mammal species as well as prairie, forest, and alpine and glacial features.” The parks occupy a unique position in the Western Cordillera of North America, resulting in the evolution of species and ecologies that exist nowhere else in the world. Waterton and Glacier are also home to very dark night skies, given their relative isolation and the rugged mountain terrain characterizing most of their territory. In recent years, the management of both parks have come to recognize dark skies as a conservation priority, and have allocated resources to their interpretation and study.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2017/04/GLAC-Waterton-feat-700px-366px.png',
        city: 'Sperry Lake',
        state: 'MO'
    },
    {
        name: 'Weber County North Fork Park:',
        description:
            'Weber County North Fork Park is situated on 1,000 hectares of mountain valley land in Utah’s Wasatch Range north of the Ogden area. The park attracts cross-country skiers in the winter months with 12 km of groomed skiing trails at elevations between 1,770 and 1,890 meters elevation. It is also a winter venue for Nordic skiing events. In the summer, the park welcomes thousands of guests at six large group areas and 181 individual campsites, and offers hike/bike trails, sand volleyball courts, horseshoe pits, horse corrals, and more. North Fork Park has four qualities that sets it apart from many other Dark Sky Parks: urban adjacency, intense focus on wildlife, an extensive outreach program and innovative public art incorporating dark skies themes. The combination of these characteristics results in a unique dark sky experience for the approximately 2.2 million people living along the adjacent Wasatch Front, for whom the park is easily accessible. It remains a wild and rustic place that aims to provide a dark nighttime refuge for humans and wildlife alike.',
        img_url:
            'https://www.darksky.org/wp-content/uploads/2015/04/NorthForkPark-featured-700px-460px.png',
        city: 'Weber County',
        state: 'UT'
    }
]

dark_sky_parks.each { |park| DarkSkyPark.create!(park) }

bucketlist_locations = [
    { visitor: Visitor.first, dark_sky_park: DarkSkyPark.last },
    { visitor: Visitor.first, dark_sky_park: DarkSkyPark.third },
    { visitor: Visitor.first, dark_sky_park: DarkSkyPark.all[19] },
    { visitor: Visitor.second, dark_sky_park: DarkSkyPark.all[20] },
    { visitor: Visitor.second, dark_sky_park: DarkSkyPark.all[11] },
    { visitor: Visitor.third, dark_sky_park: DarkSkyPark.all[15] },
    { visitor: Visitor.third, dark_sky_park: DarkSkyPark.all[22] },
    { visitor: Visitor.third, dark_sky_park: DarkSkyPark.all[28] },
    { visitor: Visitor.third, dark_sky_park: DarkSkyPark.all[20] },
    { visitor: Visitor.fourth, dark_sky_park: DarkSkyPark.all[9] },
    { visitor: Visitor.fourth, dark_sky_park: DarkSkyPark.last },
    { visitor: Visitor.fourth, dark_sky_park: DarkSkyPark.all[16] },
    { visitor: Visitor.fifth, dark_sky_park: DarkSkyPark.all[5] },
    { visitor: Visitor.fifth, dark_sky_park: DarkSkyPark.all[19] }
]
bucketlist_locations.each { |bucket| BucketlistLocation.create!(bucket) }

reviews = [
    {
        visitor: Visitor.first,
        dark_sky_park: DarkSkyPark.first,
        comment: '10/10 would recommend'
    },
    {
        visitor: Visitor.first,
        dark_sky_park: DarkSkyPark.second,
        comment: 'It gets spooky at night but I still love it!!!'
    },
    {
        visitor: Visitor.second,
        dark_sky_park: DarkSkyPark.all[4],
        comment:
            'My first park I have ever visited and will be returning each year'
    },
    {
        visitor: Visitor.third,
        dark_sky_park: DarkSkyPark.last,
        comment: "You'll never see a prettier place than this park."
    },
    {
        visitor: Visitor.fourth,
        dark_sky_park: DarkSkyPark.all[4],
        comment: 'I come every year here and the views are incredible.'
    },
    {
        visitor: Visitor.fourth,
        dark_sky_park: DarkSkyPark.last,
        comment: 'This is the most beautiful place on earth!'
    }
]

reviews.each { |review| Review.create!(review) }

comments = [
    {
        post: 'Hey is this place safe from coyotes at night?',
        visitor: Visitor.second,
        dark_sky_park: DarkSkyPark.first
    },
    {
        post:
            'Does anyone know if this park charges to camp out with a trailer?',
        visitor: Visitor.last,
        dark_sky_park: DarkSkyPark.all[8]
    },
    {
        post:
            'I would love to know if a sweater is needed during the fall if I visit this park.',
        visitor: Visitor.third,
        dark_sky_park: DarkSkyPark.all[11]
    },
    {
        post: 'Any cottages recommended nearby??',
        visitor: Visitor.fourth,
        dark_sky_park: DarkSkyPark.all[11]
    },
    {
        post: 'I want to go here soooo bad!!! It looks amazing!',
        visitor: Visitor.fifth,
        dark_sky_park: DarkSkyPark.last
    },
    {
        post: 'This is near where I live!! SO COOL!!!?',
        visitor: Visitor.fifth,
        dark_sky_park: DarkSkyPark.all[14]
    }
]

comments.each { |comment| Comment.create!(comment) }
