Mars = {
    let profile = Profile(diameter: "4,879 km", orbitPeriod: "88 days", mass: "3.29 x 10^23 kg (0.06 Earths)", discoveredBy: "Assyrian astronomers", discoveryDate: "14th century BC", surfaceTemperature: "-173 to 427°C", moons: 0, rings: 0, planetType: "Terrestrial planet")
            let shortDescription = "The first planet of the Solar System"
            let description = [
                PlanetDescription(info: """
The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth's Moon. From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter. Despite its proximity to the Sun, Mercury is not the hottest planet in our solar system – that title belongs to nearby Venus, thanks to its dense atmosphere. But Mercury is the fastest planet, zipping around the Sun every 88 Earth days.

Mercury is appropriately named for the swiftest of the ancient Roman gods.
""", title: "Introduction"),
                PlanetDescription(info: """
With a radius of 1,516 miles (2,440 kilometers), Mercury is a little more than 1/3 the width of Earth. If Earth were the size of a nickel, Mercury would be about as big as a blueberry.

From an average distance of 36 million miles (58 million kilometers), Mercury is 0.4 astronomical units away from the Sun. One astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. From this distance, it takes sunlight 3.2 minutes to travel from the Sun to Mercury.
""", title: "Size and Distance"),
                PlanetDescription(info: """
Mercury is a terrestrial planet having three main layers: a core, mantle and crust. Mercury’s crust has no tectonic plates and its iron core is enormous, making up 85% of the planets radius while Earth’s inner and outer core, account for about 55%.

The planet consists of about 70% metallic and 30% silicate material leading to its high density and thus placing it as the second densest planet. It is believed that if the effects of the gravitational compression were to be factored out from both Mercury and Earth, Mercury would take the first place as the densest.
""", title: "Structure"),
                PlanetDescription(info: """
This small planet spins around slowly compared to Earth, so one day lasts a long time. Mercury takes 59 Earth days to make one full rotation. A year on Mercury goes by fast. Because it’s the closest planet to the sun, it doesn’t take very long to go all the way around. It completes one revolution around the sun in just 88 Earth days. If you lived on Mercury, you’d have a birthday every three months!

A day on Mercury is not like a day here on Earth. For us, the sun rises and sets each and every day. Because Mercury has a slow spin and short year, it takes a long time for the sun to rise and set there. Mercury only has one sunrise every 180 Earth days!
""", title: "Shortest year"),
                PlanetDescription(info: """
In recent years scientists from NASA have come to believe the solid iron core of Mercury could in fact be molten. Normally the core of smaller planets cools rapidly, but after extensive research, the results were not in line with those expected from a solid core. Scientists now believe the core to contain a lighter element such as sulphur, which would lower the melting temperature of the core material. It is estimated Mercury’s core makes up 42% of its volume, while the Earth’s core makes up 17%.
""", title: "Mercury has a molten core"),
                PlanetDescription(info: """
Despite being further from the Sun, Venus experiences higher temperatures. The surface of Mercury which faces the Sun sees temperatures of up to 427°C, whilst on the alternate side this can be as low as -173°C. This is due to the planet having no atmosphere to help regulate the temperature.
""", title: "Mercury is only the second hottest planet"),
                PlanetDescription(info: """
Unlike many other planets which “self-heal” through natural geological processes, the surface of Mercury is covered in craters. These are caused by numerous encounters with asteroids and comets. Most Mercurian craters are named after famous writers and artists. Any crater larger than 250 kilometres in diameter is referred to as a Basin. The Caloris Basin is the largest impact crater on Mercury covering approximately 1,550 km in diameter and was discovered in 1974 by the Mariner 10 probe.
""", title: "Mercury is the most cratered planet in the Solar System"),
                PlanetDescription(info: """
Amazingly, even though the planet is roasted by the Sun, water ice has been discovered on the planet. Because of the low axial tilt of the planet, the interiors of deep craters at the poles remain in perpetual shadow and contain large quantities of water ice.

If ever man decided to setup a base on Mercury, locating it within one of these craters would seem to be the best location. Not only is there a source of water, but the clever use of mirrors to bounce light and heat into the crater could provide a perfect temperature control system.
""", title: "Water Ice"),
                PlanetDescription(info: """
Before 2011 it had only been visited by 1 spacecraft - the Mariner 10 spacecraft which performed 3 fly-pasts in 1974/75 mapping about 45% of its surface.

Mercury was recently being studied by the Messenger Spacecraft. Messenger entered Mercury's Orbit on 18th March 2011, the first man made object ever to do so. Messenger was impacted into the surface of Mercury on April 30, 2015, at a speed of more than 3.91 kilometres per second (8,750 miles per hour), marking the end of operations for the hugely successful Mercury orbiter.
""", title: "Only two spacecraft have ever visited Mercury"),
                PlanetDescription(info: """
The exact date of Mercury’s discovery is unknown as it pre-dates its first historical mention, one of the first mentions being by the Sumerians around in 3,000 BC.

The Greeks had two names for Mercury, "Apollo" when it appeared in the morning and "Hermes" when it appeared in the evening.

In Roman mythology Mercury is the god of commerce, travel and thievery, the Roman counterpart of the Greek god Hermes, the messenger of the Gods. The planet probably received this name because it moves so quickly across the sky.
""", title: "Mercury is named for the Roman messenger to the gods")
            ]
            let quickFacts = ["Mercury is the smallest planet", "Mercury is the closest planet to the Sun", "Your weight on Mercury would be 38% of your weight on Earth", "It’s not known who discovered Mercury", "Water ice exists at the poles where it is hidden from the Sun in deep craters"]
            let position = Position(pos: (0, 1, -1))
            let planet = CosmicObject(planetName: "Mercury", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
}

Venus = {

let profile = Profile(diameter: "12,104 km", orbitPeriod: "225 days", mass: "4.87 × 10^24 kg (0.82 Earths)", discoveredBy: "Babylonian astronomers", discoveryDate: "17th century BC", surfaceTemperature: "462 °C", moons: 0, rings: 0, planetType: "Terrestrial planet")
            let shortDescription = "The second planet in the Solar System"
            let position = Position(pos: (7, 0, -5))
            let description = [
                PlanetDescription(info: """
Venus is the second planet from the Sun and our closest planetary neighbor. Similar in structure and size to Earth, Venus spins slowly in the opposite direction from most planets. Its thick atmosphere traps heat in a runaway greenhouse effect, making it the hottest planet in our solar system with surface temperatures hot enough to melt lead. Glimpses below the clouds reveal volcanoes and deformed mountains.

Venus is named for the ancient Roman goddess of love and beauty, who was known as Aphrodite to the Ancient Greeks.
""", title: "Introduction"),
                PlanetDescription(info: """
With a radius of 3,760 miles (6,052 kilometers), Venus is roughly the same size as Earth — just slightly smaller.

From an average distance of 67 million miles (108 million kilometers), Venus is 0.7 astronomical units away from the Sun. One astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. It takes sunlight 6 minutes to travel from the Sun to Venus.
""", title: "Size and Distance"),
                PlanetDescription(info: """
Venus is in many ways similar to Earth in its structure. It has an iron core that is approximately 2,000 miles (3,200 kilometers) in radius. Above that is a mantle made of hot rock slowly churning due to the planet's interior heat. From space, Venus is bright white because it is covered with clouds that reflect and scatter sunlight.

The surface is a thin crust of rock that bulges and moves as Venus' mantle shifts and creates volcanoes. The rocks are different shades of grey, like rocks on Earth, but the thick atmosphere filters the sunlight so that everything would look orange if you were standing on Venus.
""", title: "Structure and Surface"),
                PlanetDescription(info: """
Venus' atmosphere consists mainly of carbon dioxide, with clouds of sulfuric acid droplets. The thick atmosphere traps the Sun's heat, resulting in surface temperatures higher than 880 degrees Fahrenheit (470 degrees Celsius).

The atmosphere has many layers with different temperatures. At the level where the clouds are, about 30 miles up from the surface, it's about the same temperature as on the surface of the Earth.
""", title: "Atmosphere"),
                PlanetDescription(info: """
Venus has a retrograde rotation, moving in the opposite direction than most planets, only Uranus also does this. They both move from East to West, clockwise. Venus does this rotation once every 243 Earth days, having the slowest rotation out of all the planets in the solar system.

This slow rotation also influences its shape, making Venus very spherical. One Venusian day is longer than one Venusian year – 225 Earth days.

It has been observed that it’s even getting slower. In 16 years between the Magellan spacecraft and Venus Express visits, the rotation of Venus has slowed down up to 6.5 minutes in that time span.

Venus has tilted away from the plane of the ecliptic by 2.7 degrees meaning it is almost completely upside down. Because of this, Venus almost doesn’t experience any seasons spinning nearly upright.
""", title: "Venus rotates in the opposite direction to most other planets"),
                PlanetDescription(info: """
The Earth and Venus are very similar in size with only a 638 km difference in diameter and Venus having 81.5% of the Earth’s mass. Both also have a central core, a molten mantle and a crust.
""", title: "Venus is often called the Earth’s sister planet"),
                PlanetDescription(info: """
It takes 243 Earth days to rotate once on its axis (sidereal day). The planet’s orbit around the Sun takes 225 Earth days, compared to the Earth’s 365. A day on the surface of Venus (solar day) takes 117 Earth days.
""", title: "A day on Venus lasts longer than a year"),
                PlanetDescription(info: """
The average surface temperature is 462 °C, and because Venus does not tilt on its axis, there is no seasonal variation. The dense atmosphere of around 96.5 percent carbon dioxide traps heat and causes a greenhouse effect.
""", title: "Venus is the hottest planet in our solar system"),
                PlanetDescription(info: """
In 2006, the Venus Express space craft was sent into orbit around Venus by the European Space Agency. Originally planned to last five hundred Earth days, the mission was extended several times before the craft was deorbited in 2015. More than 1,000 volcanoes or volcanic centres larger than 20 km have been found on the surface of Venus.
""", title: "A detailed study of Venus finished in 2015"),
                PlanetDescription(info: """
The Venera 1 space probe was launched in 1961, but lost contact with base. The USA also lost their first probe to Venus, Mariner 1, although Mariner 2 was able to take measurements of the planet in 1962. The Soviet Union’s Venera 3 was the first man-made craft to land on Venus in 1966.
""", title: "The Russians sent the first mission to Venus")
              ]
                let quickFacts = [
             "Venus is nearly as big as the Earth with a diameter of 12,104 km", "Venus is thought to be made up of a central iron core, rocky mantle and silicate crust",
             "There appears to be ongoing volcanic activity beneath the clouds",
             "A year on Venus takes 225 Earth days", "The surface temperature on Venus can reach 471°C"
               ]
            let planet = CosmicObject(planetName: "Venus", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
}

Earth = {
    let profile = Profile(diameter: "12,756 km", orbitPeriod: "365.24 days", mass: "5.97 × 10^24 kg", discoveredBy: "-", discoveryDate: "-", surfaceTemperature: "-88 to 58°C", moons: 1, rings: 0, planetType: "Terrestrial planet")
                let shortDescription = "The third planet in the Solar System"
                let position = Position(pos: (10, 10, 3))
                let description = [
                    PlanetDescription(info: """
    Earth is the third planet from the Sun and is the largest of the terrestrial planets. The Earth was formed approximately 4.54 billion years ago and is the only known planet to support life.

    The name "Earth" is at least 1,000 years old. All of the planets, except for Earth, were named after Greek and Roman gods and goddesses. However, the name Earth is a Germanic word, which simply means “the ground.”
    """, title: "Introduction"),
                    PlanetDescription(info: """
    With a radius of 3,959 miles (6,371 kilometers), Earth is the biggest of the terrestrial planets, and the fifth largest planet overall.

    From an average distance of 93 million miles (150 million kilometers), Earth is exactly one astronomical unit away from the Sun because one astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. This unit provides an easy way to quickly compare planets' distances from the Sun.

    It takes about eight minutes for light from the Sun to reach our planet.
    """, title: "Size and Distance"),
                    PlanetDescription(info: """
    Earth has four major main layers: an inner core at the center, an outer core enveloping it, mantle, and crust.

    The inner core is a solid sphere made of iron and nickel metals about 759 miles (1,221 kilometers) in radius. There the temperature is as high as 9,800 degrees Fahrenheit (5,400 degrees Celsius). Surrounding the inner core is the outer core. This layer is about 1,400 miles (2,300 kilometers) thick, made of iron and nickel fluids.

    In between the outer core and crust is the mantle, the thickest layer. This hot, viscous mixture of molten rock is about 1,800 miles (2,900 kilometers) thick and has the consistency of caramel. The outermost layer, Earth's crust, goes about 19 miles (30 kilometers) deep on average on land. At the bottom of the ocean, the crust is thinner and extends about 3 miles (5 kilometers) from the sea floor to the top of the mantle.
    """, title: "Structure"),
                    PlanetDescription(info: """
    Near the surface, Earth has an atmosphere that consists of 78 percent nitrogen, 21 percent oxygen, and 1 percent other gases such as argon, carbon dioxide and neon. The atmosphere affects Earth's long-term climate and short-term local weather and shields us from much of the harmful radiation coming from the Sun. It also protects us from meteoroids, most of which burn up in the atmosphere, seen as meteors in the night sky, before they can strike the surface as meteorites.
    """, title: "Atmosphere"),
                    PlanetDescription(info: """
    This deceleration is happening almost imperceptibly, at approximately 17 milliseconds per hundred years, although the rate at which it occurs is not perfectly uniform. This has the effect of lengthening our days, but it happens so slowly that it could be as much as 140 million years before the length of a day will have increased to 25 hours.
    """, title: "The Earth’s rotation is gradually slowing"),
                    PlanetDescription(info: """
    Due to the apparent movements of the Sun and planets in relation to their viewpoint, ancient scientists insisted that the Earth remained static, whilst other celestial bodies travelled in circular orbits around it.

    Eventually, the view that the Sun was at the centre of the universe was postulated by Copernicus, though this is also not the case.
    """, title: "The Earth was once believed to be the centre of the universe"),
                    PlanetDescription(info: """
    This varies according to the part of the planet; for example, the metallic core is denser than the crust. The average density of the Earth is approximately 5.52 grams per cubic centimetre.
    """, title: "The Earth is the densest planet in the Solar System"),
                    PlanetDescription(info: """
    When astronauts first went into the space, they looked back at the Earth with human eyes for the first time, and called our home the Blue Planet. And it’s no surprise. 70% of our planet is covered with oceans. The remaining 30% is the solid ground, rising above sea level.
    """, title: "70% of the Earth’s surface is covered in water"),
                    PlanetDescription(info: """
    It’s actually 365.2564 days. It’s this extra .2564 days that creates the need for leap years. That’s why we tack on an extra day in February every year divisible by 4 – 2004, 2008, etc – unless it’s divisible by 100 (1900, 2100, etc)… unless it’s divisible by 400 (1600, 2000, etc).
    """, title: "A year on Earth isn’t 365 days"),
                    PlanetDescription(info: """
    As you’re probably aware, Earth has 1 moon (The Moon). But did you know there are 2 additional asteroids locked into a co-orbital orbits with Earth? They’re called 3753 Cruithne and 2002 AA29.

    3753 Cruithne is 5 km across, and sometimes called Earth’s second moon. It doesn’t actually orbit the Earth, but has a synchronized orbit with our home planet. It has an orbit that makes it look like it’s following the Earth in orbit, but it’s actually following its own, distinct path around the Sun.

    2002 AA29 is only 60 meters across, and makes a horseshoe orbit around the Earth that brings it close to the planet every 95 years. In about 600 years, it will appear to circle Earth in a quasi-satellite orbit. Scientists have suggested that it might make a good target for a space exploration mission.
    """, title: "Earth has 1 moon and 2 co-orbital satellites")
                ]
                let quickFacts = ["Earth is a squashed sphere", "Earth is mostly iron, oxygen and silicon", "70% of the Earth’s surface is covered in water", "The Earth’s molten iron core creates a magnetic field", "Earth has 1 moon and 2 co-orbital satellites: 3753 Cruithne and 2002 AA29"]
                let planet = CosmicObject(planetName: "Earth", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
}


Mars = {
    let profile = Profile(diameter: "6,779 km", orbitPeriod: "687 days (1.9 years)", mass: "6.39 × 10^23 kg (0.11 Earths)", discoveredBy: "Egyptian astronomers", discoveryDate: "2nd millennium BC", surfaceTemperature: "-153 to 20 °C", moons: 2, rings: 0, planetType: "Terrestrial planet")
                let shortDescription = "The fourth planet in the Solar System"
                let position = Position(pos: (-5, 0, 0))
                let description = [
                    PlanetDescription(info: """
    Mars is the fourth planet from the Sun and is the second smallest planet in the solar system. Named after the Roman god of war, Mars is also often described as the “Red Planet” due to its reddish appearance. It's red because of rusty iron in the ground. Mars is a terrestrial planet with a thin atmosphere composed primarily of carbon dioxide.
    """, title: "Introduction"),
                    PlanetDescription(info: """
    With a radius of 2,106 miles (3,390 kilometers), Mars is about half the size of Earth. If Earth were the size of a nickel, Mars would be about as big as a raspberry.

    From an average distance of 142 million miles (228 million kilometers), Mars is 1.5 astronomical units away from the Sun. One astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. From this distance, it takes sunlight 13 minutes to travel from the Sun to Mars.
    """, title: "Size and Distance"),
                    PlanetDescription(info: """
    Mars has a dense core at its center between 930 and 1,300 miles (1,500 to 2,100 kilometers) in radius. It's made of iron, nickel and sulfur. Surrounding the core is a rocky mantle between 770 and 1,170 miles (1,240 to 1,880 kilometers) thick, and above that, a crust made of iron, magnesium, aluminum, calcium and potassium. This crust is between 6 and 30 miles (10 to 50 kilometers) deep.

    The Red Planet is actually many colors. At the surface we see colors such as brown, gold and tan. The reason Mars looks reddish is due to oxidization—or rusting—of iron in the rocks, regolith (Martian “soil”), and dust of Mars. This dust gets kicked up into the atmosphere and from a distance makes the planet appear mostly red.

    Interestingly, while Mars is about half the diameter of Earth, its surface has nearly the same area as Earth’s dry land. Its volcanoes, impact craters, crustal movement, and atmospheric conditions such as dust storms have altered the landscape of Mars over many years, creating some of the solar system's most interesting topographical features.

    A large canyon system called Valles Marineris is long enough to stretch from California to New York—more than 3,000 miles (4,800 kilometers). This Martian canyon is 200 miles (320 kilometers) at its widest and 4.3 miles (7 kilometers) at its deepest. That's about 10 times the size of Earth's Grand Canyon.

    Mars is home to the largest volcano in the solar system, Olympus Mons. It's three times taller than Earth's Mt. Everest with a base the size of the state of New Mexico.
    """, title: "Structure and Surface"),
                    PlanetDescription(info: """
    Mars has a thin atmosphere made up mostly of carbon dioxide, nitrogen and argon gases. To our eyes, the sky would be hazy and red because of suspended dust instead of the familiar blue tint we see on Earth. Mars' sparse atmosphere doesn't offer much protection from impacts by such objects as meteorites, asteroids and comets.

    The temperature on Mars can be as high as 70 degrees Fahrenheit (20 degrees Celsius) or as low as about -225 degrees Fahrenheit (-153 degrees Celsius). And because the atmosphere is so thin, heat from the Sun easily escapes this planet. If you were to stand on the surface of Mars on the equator at noon, it would feel like spring at your feet (75 degrees Fahrenheit or 24 degrees Celsius) and winter at your head (32 degrees Fahrenheit or 0 degrees Celsius).

    Occasionally, winds on Mars are strong enough to create dust storms that cover much of the planet. After such storms, it can be months before all of the dust settles.
    """, title: "Atmosphere"),
                    PlanetDescription(info: """
    As of September 2014 there have been 40 missions to Mars, including orbiters, landers and rovers but not counting flybys. The most recent arrivals include the Mars Curiosity mission in 2012, the MAVEN mission, which arrived on September 22, 2014, followed by the Indian Space Research Organization’s MOM Mangalyaan orbiter, which arrived on September 24, 2014.

    The next missions to arrive will be the European Space Agency’s ExoMars mission, comprising an orbiter, lander, and a rover, followed by NASA’s InSight robotic lander mission, slated for launch in March 2016 and a planned arrival in September, 2016.
    """, title: "Only 18 missions to Mars have been successful"),
                    PlanetDescription(info: """
    They can last for months and cover the entire planet. The seasons are extreme because its elliptical (oval-shaped) orbital path around the Sun is more elongated than most other planets in the solar system.
    """, title: "Mars has the largest dust storms in the solar system"),
                    PlanetDescription(info: """
    For years Mars has been known to have water in the form of ice. The first signs of trickling water are dark stripes or stains on crater wall and cliffs seen in satellite images. Due to Mars’ atmosphere this water would have to be salty to prevent it from freezing or vaporising.
    """, title: "There are signs of liquid water on Mars"),
                    PlanetDescription(info: """
    Mars has two small moons, Phobos and Deimos, that may be captured asteroids. They're potato-shaped because they have too little mass for gravity to make them spherical.

    The moons get their names from the horses that pulled the chariot of the Greek god of war, Ares. In ancient Greek, Phobos means "flight," and Deimos means "fear."

    Phobos, the innermost and larger moon, is heavily cratered, with deep grooves on its surface. It is slowly moving towards Mars and will crash into the planet or break apart in about 50 million years.

    Deimos is about half as big as Phobos and orbits two and a half times farther away from Mars. Oddly-shaped Deimos is covered in loose dirt that often fills the craters on its surface, making it appear smoother than pockilometersarked Phobos.
    """, title: "Moons"),
                    PlanetDescription(info: """
    The Valles Marineris is an extensive canyon system on the Mars equator. It is 4,200 kilometres long and, in places, is 7 kilometres deep. On Earth, it would span the entire North American continent and beyond.

    Mars has has a very primitive form of plate tectonics, and the action of two plates past each other began splitting the surface some 3.5 billion years ago. That set the stage for the formation of the Valles Marineris.
    """, title: "Valles Marineris")
                ]
                let quickFacts = ["Mars and Earth have approximately the same landmass", "Mars is home to the tallest mountain in the solar system",
                "There are signs of liquid water on Mars", "Sunsets on Mars are blue", "One day Mars will have a ring"]
                let planet = CosmicObject(planetName: "Mars", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
}


Jupiter = {
    let profile = Profile(diameter: "142,984 km", orbitPeriod: "4,333 days (11.9 years)", mass: "1.90 × 10^27 kg (318 Earths)", discoveredBy: "Babylonian astronomers", discoveryDate: "7th or 8th century BC", surfaceTemperature: "-108°C", moons: 79, rings: 4, planetType: "Gas giant")
                let shortDescription = "The fifth planet in the Solar System"
                let position = Position(pos: (-15, 12, -10))
                let description = [
                    PlanetDescription(info: """
    Jupiter is the fifth planet from our Sun and is, by far, the largest planet in the solar system – more than twice as massive as all the other planets combined. Jupiter's stripes and swirls are actually cold, windy clouds of ammonia and water, floating in an atmosphere of hydrogen and helium. Jupiter’s iconic Great Red Spot is a giant storm bigger than Earth that has raged for hundreds of years.

    Jupiter is surrounded by dozens of moons. Jupiter also has several rings, but unlike the famous rings of Saturn, Jupiter’s rings are very faint and made of dust, not ice.
    """, title: "Introduction"),
                    PlanetDescription(info: """
    With a radius of 43,440.7 miles (69,911 kilometers), Jupiter is 11 times wider than Earth. If Earth were the size of a nickel, Jupiter would be about as big as a basketball.

    From an average distance of 484 million miles (778 million kilometers), Jupiter is 5.2 astronomical units away from the Sun. One astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. From this distance, it takes Sunlight 43 minutes to travel from the Sun to Jupiter.
    """, title: "Size and Distance"),
                    PlanetDescription(info: """
    The composition of Jupiter is similar to that of the Sun—mostly hydrogen and helium. Deep in the atmosphere, pressure and temperature increase, compressing the hydrogen gas into a liquid. This gives Jupiter the largest ocean in the solar system—an ocean made of hydrogen instead of water. Scientists think that, at depths perhaps halfway to the planet's center, the pressure becomes so great that electrons are squeezed off the hydrogen atoms, making the liquid electrically conducting like metal. Jupiter's fast rotation is thought to drive electrical currents in this region, generating the planet's powerful magnetic field. It is still unclear if, deeper down, Jupiter has a central core of solid material or if it may be a thick, super-hot and dense soup. It could be up to 90,032 degrees Fahrenheit (50,000 degrees Celsius) down there, made mostly of iron and silicate minerals (similar to quartz).

    As a gas giant, Jupiter doesn’t have a true surface. The planet is mostly swirling gases and liquids. While a spacecraft would have nowhere to land on Jupiter, it wouldn’t be able to fly through unscathed either. The extreme pressures and temperatures deep inside the planet crush, melt and vaporize spacecraft trying to fly into the planet.
    """, title: "Structure and Surface"),
                    PlanetDescription(info: """
    Jupiter's appearance is a tapestry of colorful cloud bands and spots. The gas planet likely has three distinct cloud layers in its "skies" that, taken together, span about 44 miles (71 kilometers). The top cloud is probably made of ammonia ice, while the middle layer is likely made of ammonium hydrosulfide crystals. The innermost layer may be made of water ice and vapor.

    The vivid colors you see in thick bands across Jupiter may be plumes of sulfur and phosphorus-containing gases rising from the planet's warmer interior. Jupiter's fast rotation—spinning once every 10 hours—creates strong jet streams, separating its clouds into dark belts and bright zones across long stretches.

    With no solid surface to slow them down, Jupiter's spots can persist for many years. Stormy Jupiter is swept by over a dozen prevailing winds, some reaching up to 335 miles per hour (539 kilometers per hour) at the equator. The Great Red Spot, a swirling oval of clouds twice as wide as Earth, has been observed on the giant planet for more than 300 years. More recently, three smaller ovals merged to form the Little Red Spot, about half the size of its larger cousin. Scientists do not yet know if these ovals and planet-circling bands are shallow or deeply rooted to the interior.
    """, title: "Atmosphere"),
                    PlanetDescription(info: """
    With four large moons and many smaller moons, Jupiter forms a kind of miniature solar system. Jupiter has 53 confirmed moons and 26 provisional moons awaiting confirmation of discovery. Moons are named after they are confirmed.

    Jupiter was the king of the moons since recently, having a total of 79 known satellites. Recently, Saturn dethroned Jupiter having a total of 82 known satellites. These rankings can change as observations continue.

    Jupiter's four largest moons—Io, Europa, Ganymede and Callisto—were first observed by the astronomer Galileo Galilei in 1610 using an early version of the telescope. These four moons are known today as the Galilean satellites, and they're some of the most fascinating destinations in our solar system. Io is the most volcanically active body in the solar system. Ganymede is the largest moon in the solar system (even bigger than the planet Mercury). Callisto’s very few small craters indicate a small degree of current surface activity. A liquid-water ocean with the ingredients for life may lie beneath the frozen crust of Europa, making it a tempting place to explore.
    """, title: "Moons"),
                    PlanetDescription(info: """
    Discovered in 1979 by NASA's Voyager 1 spacecraft, Jupiter's rings were a surprise, as they are composed of small, dark particles and are difficult to see except when backlit by the Sun. Data from the Galileo spacecraft indicate that Jupiter's ring system may be formed by dust kicked up as interplanetary meteoroids smash into the giant planet's small innermost moons.
    """, title: "Rings"),
                    PlanetDescription(info: """
    Considering its size, Jupiter rotates very quickly at one rotation at just under once every 10 hours. This means that at the equator there is quite a large centrifugal force which means the planet has a pronounced bulge - its diameter around the equator is 9000km greater than the diameter measured at the poles.

    It turns on its axis once every 9 hours and 55 minutes. The rapid rotation flattens the planet slightly, giving it an oblate shape.
    """, title: "Shortest Day of any Planet"),
                    PlanetDescription(info: """
    While Jupiter has been known since ancient times, the first detailed observations of this planet were made by Galileo Galilei in 1610 with a small telescope. More recently, this planet has been visited by passing spacecraft, orbiters and probes.

    Pioneer 10 and 11 and Voyager 1 and 2 were the first to fly by Jupiter in the 1970s, and since then we’ve sent Galileo to orbit the gas giant and drop a probe into its atmosphere. Cassini took detailed photos of Jupiter on its way to neighboring Saturn, as did New Horizons on its quest for Pluto and the Kuiper Belt. NASA’s Juno spacecraft, which arrived in the Jovian system in July 2016, is currently studying the giant planet from orbit.
    """, title: "Exploration"),
                    PlanetDescription(info: """
    The largest and most powerful hurricanes ever recorded on Earth spanned over 1,000 miles across with winds gusting up to around 200 mph. That’s wide enough to stretch across nearly all U.S. states east of Texas. But even that kind of storm is dwarfed by the Great Red Spot, a gigantic storm in Jupiter.

    There, gigantic means twice as wide as Earth. With tumultuous winds peaking at about 400 mph, the Great Red Spot has been swirling wildly over Jupiter’s skies for the past 150 years—maybe even much longer than that.
    """, title: "The Great Red Spot"),
                    PlanetDescription(info: """
    Jupiter’s so-called ‘string of pearls’ on Jupiter is a series of massive counterclockwise rotating storms that appear as white ovals in the gas giant's southern hemisphere. Since 1986, these white ovals have varied in number from six to nine.
    """, title: "Pearls"),
                    PlanetDescription(info: """
    upiter is best known for its colorful storms. But also has some of the most vivid auroras. Not only are the auroras bigger than Earth, they are also hundreds of times more energetic than auroras on our home world. And, unlike those on Earth, they never cease.

    On Earth the most intense auroras are caused by solar storms, but Jupiter generates its own. The strong magnetic field of the gas giant grabs charged particles from its surroundings, including particles thrown into space by its orbiting moon Io, known for its numerous and large volcanoes.
    """, title: "Auroras")
                ]
                let quickFacts = ["Jupiter is the fourth brightest object in the solar system", "Jupiter has unique cloud features",
                                  "The Great Red Spot is a huge storm on Jupiter", "Jupiter’s moon Ganymede is the largest moon in the solar system",
                                  "Jupiter has a thin ring system"
                ]
                let planet = CosmicObject(planetName: "Jupiter", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
}


Saturn = {
    let profile = Profile(diameter: "120,536 km", orbitPeriod: "10,756 days (29.5 years)", mass: "5.68 × 10^26 kg (95 Earths)", discoveredBy: "Assyrians", discoveryDate: "8th century BC", surfaceTemperature: "-139 °C", moons: 82, rings: 30, planetType: "Gas giant")
                let shortDescription = "The sixth planet in the Solar System"
                let position = Position(pos: ( -5, 5, 20))
                let description = [
                    PlanetDescription(info: """
    Saturn is the sixth planet from the Sun and the second largest planet in our solar system. Adorned with a dazzling system of icy rings, Saturn is unique among the planets. It is not the only planet to have rings, but none are as spectacular or as complex as Saturn's. Like fellow gas giant Jupiter, Saturn is a massive ball made mostly of hydrogen and helium.

    Surrounded by more than 60 known moons, Saturn is home to some of the most fascinating landscapes in our solar system. From the jets of water that spray from Enceladus to the methane lakes on smoggy Titan, the Saturn system is a rich source of scientific discovery and still holds many mysteries.

    The farthest planet from Earth discovered by the unaided human eye, Saturn has been known since ancient times. The planet is named for the Roman god of agriculture and wealth, who was also the father of Jupiter.
    """, title: "Introduction"),
                    PlanetDescription(info: """
    With a radius of 36,183.7 miles (58,232 kilometers), Saturn is 9 times wider than Earth. If Earth were the size of a nickel, Saturn would be about as big as a volleyball.

    From an average distance of 886 million miles (1.4 billion kilometers), Saturn is 9.5 astronomical units away from the Sun. One astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. From this distance, it takes sunlight 80 minutes to travel from the Sun to Saturn.
    """, title: "Size and Distance"),
                    PlanetDescription(info: """
    Like Jupiter, Saturn is made mostly of hydrogen and helium. At Saturn's center is a dense core of metals like iron and nickel surrounded by rocky material and other compounds solidified by the intense pressure and heat. It is enveloped by liquid metallic hydrogen inside a layer of liquid hydrogen—similar to Jupiter's core but considerably smaller.

    It's hard to imagine, but Saturn is the only planet in our solar system whose average density is less than water. The giant gas planet could float in a bathtub if such a colossal thing existed.

    As a gas giant, Saturn doesn’t have a true surface. The planet is mostly swirling gases and liquids deeper down. While a spacecraft would have nowhere to land on Saturn, it wouldn’t be able to fly through unscathed either. The extreme pressures and temperatures deep inside the planet crush, melt and vaporize spacecraft trying to fly into the planet.
    """, title: "Structure and Surface"),
                    PlanetDescription(info: """
    Saturn is blanketed with clouds that appear as faint stripes, jet streams and storms. The planet is many different shades of yellow, brown and grey.

    Winds in the upper atmosphere reach 1,600 feet per second (500 meters per second) in the equatorial region. In contrast, the strongest hurricane-force winds on Earth top out at about 360 feet per second (110 meters per second). And the pressure—the same kind you feel when you dive deep underwater—is so powerful it squeezes gas into liquid.

    Saturn's north pole has an interesting atmospheric feature—a six-sided jet stream. This hexagon-shaped pattern was first noticed in images from the Voyager I spacecraft and has been more closely observed by the Cassini spacecraft since. Spanning about 20,000 miles (30,000 kilometers) across, the hexagon is a wavy jet stream of 200-mile-per-hour winds (about 322 kilometers per hour) with a massive, rotating storm at the center. There is no weather feature like it anywhere else in the solar system.
    """, title: "Atmosphere"),
                    PlanetDescription(info: """
    Saturn is now the “king of the moons” in the Solar System, having a total of 82 confirmed and diverse satellites that range from a couple of meters to several hundred kilometers. The largest, Titan, is slightly larger than Mercury, and is the second-largest moon in the solar system behind Jupiter's moon Ganymede. (Earth's moon is the fifth largest.)

    Some of the moons have extreme features. Pan and Atlas are shaped like flying saucers; Iapetus has one side as bright as snow and one side as dark as coal. Enceladus shows evidence of "ice volcanism": a hidden ocean spews out water and other chemicals from the 101 geysers spotted at the moon's southern pole. A number of these satellites, such as Prometheus and Pandora, are referred to as shepherd moons because they interact with ring material and keep the rings in their orbits.

    Though scientists have identified many moons, Saturn has other small moons constantly being created and destroyed.
    """, title: "Moons"),
                    PlanetDescription(info: """
    Saturn's rings are thought to be pieces of comets, asteroids or shattered moons that broke up before they reached the planet, torn apart by Saturn's powerful gravity. They are made of billions of small chunks of ice and rock coated with another material such as dust. The ring particles mostly range from tiny, dust-sized icy grains to chunks as big as a house. A few particles are as large as mountains. The rings would look mostly white if you looked at them from the cloud tops of Saturn, and interestingly, each ring orbits at a different speed around the planet.

    Saturn’s rings are divided into 7 groups, named alphabetically in the order of their discovery (Outwards from Saturn; D, C, B, A, F, G and E). The F ring is kept in place by two of Saturn’s moons, Prometheus and Pandora, these are referred to as ‘shepherd moons’. Other satellites are responsible for creating divisions in the rings as well as shepherding them.
    """, title: "Rings"),
                    PlanetDescription(info: """
    Its polar diameter is 90% of its equatorial diameter, this is due to its low density and fast rotation. Saturn turns on its axis once every 10 hours and 34 minutes giving it the second-shortest day of any of the solar system’s planets.
    """, title: "Saturn is the flattest planet"),
                    PlanetDescription(info: """
    Pioneer 11, Voyager 1 and 2, and the Cassini-Huygens mission have all studied the planet. Cassini orbited Saturn from July 2004 until September 2017, sending back a wealth of data about the planet, its moons, and rings.

    From Earth, astronomers have studied Saturn with telescopes for centuries. And the Hubble Space Telescope continues to uncover new details from its perch in Earth orbit.
    """, title: "Exploration")
                ]
                let quickFacts = [
                    "Saturn is the most distant planet that can be seen with the naked eye", "Saturn is the flattest planet",
                    "Saturn is made mostly of hydrogen", "Saturn has the most extensive rings in the solar system",
                    "Saturn has more moons than any other planet"
                ]
                let planet = CosmicObject(planetName: "Saturn", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
}


Uranus = {
    let profile = Profile(diameter: "51,118 km", orbitPeriod: "30,687 days (84.0 years)", mass: "8.68 × 10^25 kg (15 Earths)", discoveredBy: "William Herschel", discoveryDate: "March 13th 1781", surfaceTemperature: "-197 °C", moons: 27, rings: 13, planetType: "Ice giant")
                let shortDescription = "The seventh planet in the Solar System"
                let position = Position(pos: (5, -3, 30))
                let description = [
                    PlanetDescription(info: """
    The seventh planet from the Sun with the third largest diameter in our solar system, Uranus is very cold and windy. The ice giant is surrounded by 13 faint rings and 27 small moons as it rotates at a nearly 90-degree angle from the plane of its orbit. This unique tilt makes Uranus appear to spin on its side, orbiting the Sun like a rolling ball.

    The first planet found with the aid of a telescope, Uranus was discovered in 1781 by astronomer William Herschel, although he originally thought it was either a comet or a star. It was two years later that the object was universally accepted as a new planet, in part because of observations by astronomer Johann Elert Bode.

    William Herschel tried unsuccessfully to name his discovery Georgium Sidus after King George III. Instead the planet was named for Uranus, the Greek god of the sky, as suggested by Johann Bode.
    """, title: "Introduction"),
                    PlanetDescription(info: """
    With a radius of 15,759.2 miles (25,362 kilometers), Uranus is 4 times wider than Earth. If Earth was the size of a nickel, Uranus would be about as big as a softball.

    From an average distance of 1.8 billion miles (2.9 billion kilometers), Uranus is 19.8 astronomical units away from the Sun. One astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. From this distance, it takes sunlight 2 hours and 40 minutes to travel from the Sun to Uranus.
    """, title: "Size and Distance"),
                    PlanetDescription(info: """
    Uranus is one of two ice giants in the outer solar system (the other is Neptune). Most (80 percent or more) of the planet's mass is made up of a hot dense fluid of "icy" materials—water, methane and ammonia—above a small rocky core. Near the core, it heats up to 9,000 degrees Fahrenheit (4,982 degrees Celsius).

    Uranus is slightly larger in diameter than its neighbor Neptune, yet smaller in mass. It is the second least dense planet; Saturn is the least dense of all.

    Uranus gets its blue-green color from methane gas in the atmosphere. Sunlight passes through the atmosphere and is reflected back out by Uranus' cloud tops. Methane gas absorbs the red portion of the light, resulting in a blue-green color.

    As an ice giant, Uranus doesn’t have a true surface. The planet is mostly swirling fluids. While a spacecraft would have nowhere to land on Uranus, it wouldn’t be able to fly through its atmosphere unscathed either. The extreme pressures and temperatures would destroy a metal spacecraft.
    """, title: "Structure and Surface"),
                    PlanetDescription(info: """
    Uranus' atmosphere is mostly hydrogen and helium, with a small amount of methane and traces of water and ammonia. The methane gives Uranus its signature blue color.

    While Voyager 2 saw only a few discrete clouds, a Great Dark Spot and a small dark spot during its flyby in 1986, more recent observations reveal that Uranus exhibits dynamic clouds as it approaches equinox, including rapidly changing bright features.

    Uranus' planetary atmosphere, with a minimum temperature of 49K (-224.2 degrees Celsius) makes it even colder than Neptune in some places.

    Wind speeds can reach up to 560 miles per hour (900 kilometers per hour) on Uranus. Winds are retrograde at the equator, blowing in the reverse direction of the planet’s rotation. But closer to the poles, winds shift to a prograde direction, flowing with Uranus' rotation.
    """, title: "Atmosphere"),
                    PlanetDescription(info: """
    Uranus has 27 known moons. While most of the satellites orbiting other planets take their names from Greek or Roman mythology, Uranus' moons are unique in being named for characters from the works of William Shakespeare and Alexander Pope.

    All of Uranus' inner moons appear to be roughly half water ice and half rock. The composition of the outer moons remains unknown, but they are likely captured asteroids.
    """, title: "Moons"),
                    PlanetDescription(info: """
    Uranus has two sets of rings. The inner system of nine rings consists mostly of narrow, dark grey rings. There are two outer rings: the innermost one is reddish like dusty rings elsewhere in the solar system, and the outer ring is blue like Saturn's E ring.

    In order of increasing distance from the planet, the rings are called Zeta, 6, 5, 4, Alpha, Beta, Eta, Gamma, Delta, Lambda, Epsilon, Nu and Mu. Some of the larger rings are surrounded by belts of fine dust.
    """, title: "Rings"),
                    PlanetDescription(info: """
    Only one spacecraft has visited distant Uranus. After traveling more than 1.8 billion miles (3 billion kilometers) in nine years, NASA's Voyager 2 gathered much of its critical information about the mysterious planet, including its rings and moons, in just six hours.

    The rest of what we know about Uranus comes from observations via the Hubble Space Telescope and several powerful ground-based telescopes.
    """, title: "Only one spacecraft has flown by Uranus"),
                ]
                let quickFacts = [
                    "Uranus is often referred to as an “ice giant” planet", "Uranus hits the coldest temperatures of any planet",
                    "Uranus has two sets of very thin dark coloured rings", "Uranus’ moons are named after characters created by William Shakespeare and Alexander Pope"
                ]
                let planet = CosmicObject(planetName: "Uranus", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
}


Neptune = {
    let profile = Profile(diameter: "49,528 km", orbitPeriod: "60,190 days (164.8 years)", mass: "1.02 × 10^26 kg (17 Earths)", discoveredBy: "Urbain Le Verrier & Johann Galle", discoveryDate: "September 23rd 1846", surfaceTemperature: "-201 °C", moons: 14, rings: 5, planetType: "Ice giant")
                let shortDescription = "The eighth planet in the Solar System"
                let position = Position(pos: (30, 5 , 30))
                let description = [
                    PlanetDescription(info: """
    Dark, cold and whipped by supersonic winds, ice giant Neptune is the eighth and most distant planet in our solar system. More than 30 times as far from the Sun as Earth, Neptune is the only planet in our solar system not visible to the naked eye. In 2011 Neptune completed its first 165-year orbit since its discovery in 1846.

    Neptune is so far from the Sun that high noon on the big blue planet would seem like dim twilight to us. The warm light we see here on our home planet is roughly 900 times as bright as sunlight on Neptune.

    The ice giant Neptune was the first planet located through mathematical calculations. Using predictions made by Urbain Le Verrier, Johann Galle discovered the planet in 1846. The planet is named after the Roman god of the sea, as suggested by Le Verrier.
    """, title: "Introduction"),
                    PlanetDescription(info: """
    With a radius of 15,299.4 miles (24,622 kilometers), Neptune is about four times wider than Earth. If Earth were the size of a nickel, Neptune would be about as big as a baseball.

    From an average distance of 2.8 billion miles (4.5 billion kilometers), Neptune is 30 astronomical units away from the Sun. One astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. From this distance, it takes sunlight 4 hours to travel from the Sun to Neptune.
    """, title: "Size and Distance"),
                    PlanetDescription(info: """
    Neptune is one of two ice giants in the outer solar system (the other is Uranus). Most (80 percent or more) of the planet's mass is made up of a hot dense fluid of "icy" materials—water, methane and ammonia—above a small, rocky core. Of the giant planets, Neptune is the densest.

    Scientists think there might be an ocean of super hot water under Neptune's cold clouds. It does not boil away because incredibly high pressure keeps it locked inside.

    Neptune does not have a solid surface. Its atmosphere (made up mostly of hydrogen, helium and methane) extends to great depths, gradually merging into water and other melted ices over a heavier, solid core with about the same mass as Earth.
    """, title: "Structure and Surface"),
                    PlanetDescription(info: """
    Neptune's atmosphere is made up mostly of hydrogen and helium with just a little bit of methane. Neptune's neighbor Uranus is a blue-green color due to such atmospheric methane, but Neptune is a more vivid, brighter blue, so there must be an unknown component that causes the more intense color.

    Neptune is our solar system's windiest world. Despite its great distance and low energy input from the Sun, Neptune's winds can be three times stronger than Jupiter's and nine times stronger than Earth's. These winds whip clouds of frozen methane across the planet at speeds of more than 1,200 miles per hour (2,000 kilometers per hour). Even Earth's most powerful winds hit only about 250 miles per hour (400 kilometers per hour).

    In 1989 a large, oval-shaped storm in Neptune's southern hemisphere dubbed the "Great Dark Spot" was large enough to contain the entire Earth. That storm has since disappeared, but new ones have appeared on different parts of the planet.
    """, title: "Atmosphere"),
                    PlanetDescription(info: """
    Neptune has 14 known moons. Neptune's largest moon Triton was discovered on October 10, 1846, by William Lassell, just 17 days after Johann Gottfried Galle discovered the planet. Since Neptune was named for the Roman god of the sea, its moons are named for various lesser sea gods and nymphs in Greek mythology.

    Triton is the only large moon in the solar system that circles its planet in a direction opposite to the planet's rotation (a retrograde orbit), which suggests that it may once have been an independent object that Neptune captured. Triton is extremely cold, with surface temperatures around minus 391 degrees Fahrenheit (minus 235 degrees Celsius). And yet, despite this deep freeze at Triton, Voyager 2 discovered geysers spewing icy material upward more than 5 miles (8 kilometers). Triton's thin atmosphere, also discovered by Voyager, has been detected from Earth several times since, and is growing warmer, but scientists do not yet know why.
    """, title: "Moons"),
                    PlanetDescription(info: """
    Neptune has at least five main rings and four prominent ring arcs that we know of so far. Starting near the planet and moving outward, the main rings are named Galle, Le Verrier, Lassell, Arago and Adams, after the astronomers who contributed important work on the planet. Neptune also has a faint unnamed ring coincident with the orbit of the moon Galatea. The rings are thought to be relatively young and short-lived.

    The rings of Neptune are made of extremely dark material, likely organic compounds processed by radiation, similar to those found in the rings of Uranus.

    Neptune's ring system also has peculiar clumps of dust called arcs. Four prominent arcs named Liberté (Liberty), Egalité (Equality), Fraternité (Fraternity) and Courage are in the outermost ring, Adams. The arcs are strange because the laws of motion would predict that they would spread out evenly rather than stay clumped together. Scientists now think the gravitational effects of Galatea, a moon just inward from the ring, stabilizes these arcs.
    """, title: "Rings"),
                    PlanetDescription(info: """
    In 1989, NASA's Voyager 2 became the first-and only-spacecraft to study Neptune up close. Voyager returned a wealth of information about Neptune and its moons-and confirmed evidence the giant world had faint rings like the other gas planets.

    Scientists also use the Hubble Space Telescope and powerful ground-based telescopes to gather more information about this distant planet.
    """, title: "Only one spacecraft has flown by Neptune"),
                    PlanetDescription(info: """
    The Great Dark Spot in the southern atmosphere of Neptune was first discovered in 1989 by the Voyager 2 spacecraft. It was an incredibly large rotating storm system with winds of upto 1,500 miles per hour, the strongest winds recorded on any planet. How such powerful winds were discovered on a planet so far from the sun is still considered a mystery to this day.

    Data from the Voyager 2 spacecraft also showed that the Great Dark Spot varied significantly in size during their brief pass of the planet. When Neptune was viewed by the Hubble Space telescope in 1994 the Great Dark Spot had vanished, although a different dark spot had appeared in Neptune’s northern hemisphere.
    """, title: "The Great Dark Spot")
    ]
    let quickFacts = [
        "Neptune is the most distant planet from the Sun", "Neptune is the smallest gas giant",
        "Neptune is named after the Roman god of the sea", "Neptune has a very thin collection of rings",
        "Neptune has a very active climate"
    ]
    let planet = CosmicObject(planetName: "Neptune", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
}

Ceres = {
    let profile = Profile(diameter: "950 km", orbitPeriod: "1,680 days (4.6 years)", mass: "8.96 × 10^20 kg (0.01 Moons)", discoveredBy: "Giuseppe Piazzi", discoveryDate: "1st January 1801", surfaceTemperature: "-105°C", moons: 0, rings: 0, planetType: "Dwarf planet")
                let shortDescription = "The closest dwarf planet to the Sun"
                let description = [
                    PlanetDescription(info: """
    Dwarf planet Ceres is the largest object in the asteroid belt between Mars and Jupiter and the only dwarf planet located in the inner solar system. It was the first member of the asteroid belt to be discovered when Giuseppe Piazzi spotted it in 1801. And when Dawn arrived in 2015, Ceres became the first dwarf planet to receive a visit from a spacecraft.

    Called an asteroid for many years, Ceres is so much bigger and so different from its rocky neighbors that scientists classified it as a dwarf planet in 2006. Even though Ceres comprises 25 percent of the asteroid belt's total mass, tiny Pluto is still 14 times more massive.

    Ceres is named for the Roman goddess of corn and harvests. The word "cereal" comes from the same name.
    """, title: "Introduction"),
                    PlanetDescription(info: """
    With a radius of 296 miles (476 kilometers), Ceres is 1/13 the radius of Earth. If Earth were the size of a nickel, Ceres would be about as big as a poppy seed.

    From an average distance of 257 million miles (413 million kilometers), Ceres is 2.8 astronomical units away from the sun. One astronomical unit (abbreviated as AU), is the distance from the sun to Earth. From this distance, it takes sunlight 22 minutes to travel from the sun to Ceres.
    """, title: "Size and Distance"),
                    PlanetDescription(info: """
    Ceres is more similar to the terrestrial planets (Mercury, Venus, Earth and Mars) than its asteroid neighbors, but it is much less dense. One of the similarities is a layered interior, but Ceres' layers aren’t as clearly defined. Ceres probably has a solid core and a mantle made of water ice. In fact, Ceres could be composed of as much as 25 percent water. If that is correct, Ceres has more water than Earth does. Ceres' crust is rocky and dusty with large salt deposits. The salts on Ceres aren’t like table salt (sodium chloride), but instead are made of different minerals like magnesium sulfate.

    Ice mixes with various minerals, iron rich clay can also be found on the surface. Ceres is covered in countless small, young craters, but none are larger than 175 miles (280 kilometers) in diameter. This is surprising, given that the dwarf planet must have been hit by numerous large asteroids during its 4.5 billion-year lifetime. The lack of craters might be due to layers of ice just below the surface.
    """, title: "Structure and Surface"),
                    PlanetDescription(info: """
    Ceres has a very thin atmosphere, and there is evidence it contains water vapor. The vapor may be produced by ice volcanoes or by ice near the surface sublimating (transforming from solid to gas).
    """, title: "Atmosphere"),
                    PlanetDescription(info: """
    Ceres is a good example of how challenging it can be to categorize bodies in our solar system. When Giuseppe Piazzi first spotted it in 1801, he assumed Ceres was the "missing" planet between Mars and Jupiter. Within a few years, Pallas, Juno and Vesta were also discovered in the region, and they too were called planets. Starting in the 1840s, astronomers discussed reclassifying the increasing number of bodies in this area, since they didn't quite fit the definition of a planet.

    By 1860 a total of 62 bodies had been discovered in the space between Mars and Jupiter. And by 1863 astronomers accepted the classification of these objects as asteroids and called the area the asteroid belt. That's the way it stayed for over 140 years.

    Then in 2006, astronomers designated Ceres a dwarf planet, since it matched the criteria used to classify Pluto and similar-sized objects in the outer solar system.

    Ceres holds the honor of being the first dwarf planet to be orbited by a spacecraft. Dawn reached it in 2015 to study its surface, composition and history.
    """, title: "Exploration")
                ]
                let quickFacts = [
                    "The only dwarf planet located in the inner solar system", "Ceres was the first object considered to be an asteroid",
                    "Ceres has  a mysterious white spot", "First dwarf planet visited by spacecraft ", "The only dwarf planet with no moons"
                ]
                let planet = CosmicObject(planetName: "Ceres", shortDescription: shortDescription, profile: profile, planetDescription: description, quickFacts: quickFacts)
}


Pluto = {
    let profile = Profile(diameter: "2,372 km", orbitPeriod: "248 years", mass: "1.31 × 10^22 kg (0.17 Moons)", discoveredBy: "Clyde W. Tombaugh", discoveryDate: "February 18th 1930", surfaceTemperature: "-229°C", moons: 5, rings: 0, planetType: "Dwarf planet")
                let shortDescription = "Second closest dwarf planet to the Sun"
                let position = Position(pos: (-20, -3, 25))
                let description = [
                    PlanetDescription(info: """
    Pluto is a complex and mysterious world with mountains, valleys, plains, craters, and maybe glaciers. Discovered in 1930, Pluto was long considered our solar system's ninth planet. But after the discovery of similar intriguing worlds deeper in the distant Kuiper Belt, icy Pluto was reclassified as a dwarf planet.

    Pluto is orbited by five known moons, the largest of which is Charon. Charon is about half the size of Pluto itself, making it the largest satellite relative to the planet it orbits in our solar system. Pluto and Charon are often referred to as a "double planet."

    Pluto is named after the Roman god of the underworld.
    """, title: "Introduction"),
                    PlanetDescription(info: """
    With a radius of 715 miles (1,151 kilometers), Pluto is about 1/6 the width of Earth. If Earth was the size of a nickel, Pluto would be about as big as a popcorn kernel.

    From an average distance of 3.7 billion miles (5.9 billion kilometers), Pluto is 39 astronomical units away from the sun. One astronomical unit (abbreviated as AU), is the distance from the sun to Earth. From this distance, it takes sunlight 5.5 hours to travel from the sun to Pluto.

    If you were to stand on the surface of Pluto at noon, the sun would be 1/900 the brightness it is here on Earth, or about 300 times as bright as our full moon. There is a moment each day near sunset here on Earth when the light is the same brightness as midday on Pluto. Find out when you can experience "Pluto time" where you live.
    """, title: "Size and Distance"),
                    PlanetDescription(info: """
    Pluto is about two-thirds the diameter of Earth's moon and probably has a rocky core surrounded by a mantle of water ice. Interesting ices like methane and nitrogen frost coat its surface. Due to its lower density, Pluto's mass is about one-sixth that of Earth's moon.

    The surface of Pluto is composed mostly of about 98% nitrogen ice, with traces of methane and carbon monoxide. Pluto's surface is characterized by mountains, valleys, plains, and craters. The temperature on Pluto can be as cold as -375 to -400 degrees Fahrenheit (-226 to -240 degrees Celsius).

    Pluto's mountains can be as tall as 6,500 to 9,800 feet (2 to 3 kilometers) and are big blocks of water ice, sometimes with a coating of frozen gases like methane. And long troughs and valleys as long as 370 miles (600 kilometers) add to the interesting features of this faraway dwarf planet.
    """, title: "Structure and Surface"),
                    PlanetDescription(info: """
    Pluto has a thin, tenuous atmosphere that expands when it comes closer to the sun and collapses as it moves farther away—similar to a comet. The main constituent is molecular nitrogen, though molecules of methane and carbon monoxide have also been detected.

    When Pluto is close to the sun, its surface ices sublimate (changing directly from solid to gas) and rise to temporarily form a thin atmosphere. Pluto's low gravity (about six percent of Earth's) causes the atmosphere to be much more extended in altitude than our planet's atmosphere. Pluto becomes much colder during the part of each year when it is traveling far away from the sun. During this time, the bulk of the planet's atmosphere may freeze and fall as snow to the surface.
    """, title: "Atmosphere"),
                    PlanetDescription(info: """
    Pluto has five known moons: Charon, Nix, Hydra, Kerberos and Styx. This moon system might have formed by a collision between Pluto and another similar-sized body early in the history of the solar system.

    Charon, the biggest of Pluto's moons, is about half the size of Pluto itself, making it the largest satellite relative to the planet it orbits in our solar system. It orbits Pluto at a distance of just 12,200 miles (19,640 kilometers). For comparison, our moon is 20 times farther away from Earth. Pluto and Charon are often referred to as a double planet.

    Charon's orbit around Pluto takes 153 hours—the same time it takes Pluto to complete one rotation. This means Charon neither rises nor sets, but hovers over the same spot on Pluto's surface. The same side of Charon always faces Pluto, a state called tidal locking.

    Pluto's other four moons are much smaller, less than 100 miles (160 kilometers) wide. They're also irregularly shaped, not spherical like Charon. Unlike many other moons in the solar system, these moons are not tidally locked to Pluto. They all spin and don’t keep the same face towards Pluto.
    """, title: "Moons"),
                    PlanetDescription(info: """
    The New Horizons spacecraft, which was launched in 2006, flew by Pluto on the 14th of July 2015 and took a series of images and other measurements. New Horizons is now on its way to the Kuiper Belt to explore even more distant objects.
    """, title: "Pluto has been visited by one spacecraft"),
                    PlanetDescription(info: """
    This is when the IAU formalised the definition of a planet as “A planet is a celestial body that (a) is in orbit around the Sun, (b) has sufficient mass for its self-gravity to overcome rigid body forces so that it assumes a hydrostatic equilibrium (nearly round) shape, and (c) has cleared the neighbourhood around its orbit.”
    """, title: "Pluto was reclassified from a planet to a dwarf planet in 2006")
                ]
                let quickFacts = [
                    "Pluto was reclassified from a planet to a dwarf planet in 2006",
                    "It is the largest dwarf planet", "Pluto is one third water",
                    "It has five known moons", "Pluto has been visited by one spacecraft"
                ]
                let planet = CosmicObject(planetName: "Pluto", shortDescription: shortDescription, profile: profile,position: position ,planetDescription: description, quickFacts: quickFacts)
}


Haumea = {
    let profile = Profile(diameter: "1,960 km to 1,518 km", orbitPeriod: "283.3 years", mass: "4.01 × 10^21 kg (0.05 Moons)", discoveredBy: "(Disputed) Mike Brown & team or José Luis Ortiz Moreno & team", discoveryDate: "28th December 2004", surfaceTemperature: "-241°C", moons: 2, rings: 1, planetType: "Dwarf planet")
                let description = [
                    PlanetDescription(info: """
    Originally designated 2003 EL61 (and nicknamed Santa by one discovery team), Haumea resides in the Kuiper belt and is roughly the same size as Pluto. Haumea is one of the fastest rotating large objects in our solar system. Its fast spin distorts Haumea's shape, making this dwarf planet look like a football.
    """, title: "Introduction"),
                    PlanetDescription(info: """
    With a radius of about 385 miles (620 kilometers), Haumea is about 1/14 the radius of Earth. If Earth were the size of a nickel, Haumea would be about as big as a sesame seed.

    From an average distance of 4,010,000,000 miles (6,452,000,000 kilometers), Haumea is 43 astronomical units away from the Sun. One astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. From this distance, it takes sunlight 6 hours to travel from the Sun to Haumea.
    """, title: "Size and Distance"),
                    PlanetDescription(info: """
    Spectral analysis showed that Haumea is coated in strong crystalline water ice, similar to the surface of Pluto’s moon Charon. A peculiarity since crystalline ice forms at temperatures above 110 K while Haumea’s surface temperature is below 50 K which is favorable for amorphous ice to be formed. As a result it is believed that Haumea is made up entirely out of rock covered by a thin icy shell.

    It is also one of the densest Kuiper belt objects, with a density of 1.885 grams per cubic centimeter thus covering the values for silicate minerals such as olivine and pyroxene. One of the dwarf planet’s features is a dark red spot on its surface, which may be an impact crater revealing the interior of Haumea. The rest of the object is as white as snow due to its brightness, with an albedo in the range or 0.6-0.8, consistent with crystalline ice.
    """, title: "Structure and Surface"),
                    PlanetDescription(info: """
    Haumea has two known moons: Namaka is the inner moon, and Hi'iaka is the outer moon. Both are named for the mythological daughters of Huamea. Hi'aka is the patron goddess of the island of Hawaii and of hula dancers. Namaka is a water spirit in Hawaiian mythology.
    """, title: "Moons"),
                    PlanetDescription(info: """
    Haumea is the first known Kuiper Belt Object to have rings. Scientists announced the discovery in 2017 after watching the dwarf planet pass in front of a star.
    """, title: "Haumea’s ring"),
                    PlanetDescription(info: """
    Two teams claim credit for discovering of Haumea citing evidence from observations made in 2003 and 2004. The International Astronomical Union’s Gazetteer of Planetary Nomenclature lists the discovery location as Sierra Nevada Observatory in Spain on Mar. 7, 2003, but no official discoverer is listed.

    Haumea was named after the Hawaiian goddess of fertility.
    """, title: "Discovery"),
                    PlanetDescription(info: """
    Haumea’s characteristic extreme elongation is probably caused by its rotation, which is so rapid it turned it into an ellipsoid. Its rotational speed as well as its collisional origin also make Haumea one of the densest dwarf planets discovered to date.
    """, title: "A day on Haumea lasts 3.9 hours"),
                    PlanetDescription(info: """
    In 2009 a dark red spot was discovered which stands out from surrounding crystalline ice. It’s thought this spot could be an area of the dwarf planet that is with a higher concentration of minerals and carbon rich compounds than the rest of the icy surface.
    """, title: "Haumea has a spot")
                ]
                let planet = CosmicObject(planetName: "Haumea", profile: profile,planetDescription: description)
}


Sun = {
    let profile = Profile(diameter: "1,392,684 km", orbitPeriod: "-", mass: "1.99 × 10^30 kg (333,060 Earths)", discoveredBy: "-", discoveryDate: "-", surfaceTemperature: "5,500 °C", moons: 0, rings: 0, planetType: "Yellow Dwarf (G2V) Star")
    let shortDescription = "The center of our Solar System"
    let position = Position(pos: (7, 5, 2))
                let description = [
                    PlanetDescription(info: """
    The Sun is a yellow dwarf star, a hot ball of glowing gases at the heart of our solar system. Its gravity holds the solar system together, keeping everything – from the biggest planets to the smallest particles of debris – in its orbit. The connection and interactions between the Sun and Earth drive the seasons, ocean currents, weather, climate, radiation belts and auroras. Though it is special to us, there are billions of stars like our Sun scattered across the Milky Way galaxy.

    The Sun has many names in many cultures. The Latin word for Sun is “sol,” which is the main adjective for all things Sun-related: solar.
    """, title: "Introduction"),
                    PlanetDescription(info: """
    The Sun and the rest of the solar system formed from a giant, rotating cloud of gas and dust called a solar nebula about 4.5 billion years ago. As the nebula collapsed because of its overwhelming gravity, it spun faster and flattened into a disk. Most of the material was pulled toward the center to form our Sun, which accounts for 99.8% of the mass of the entire solar system.

    Like all stars, the Sun will someday run out of energy. When the Sun starts to die, it will swell so big that it will engulf Mercury and Venus and maybe even Earth. Scientists predict the Sun is a little less than halfway through its lifetime and will last another 6.5 billion years before it shrinks down to be a white dwarf.
    """, title: "Formation"),
                    PlanetDescription(info: """
    With a radius of 432,168.6 miles (695,508 kilometers), our Sun is not an especially large star—many are several times bigger—but it is still far more massive than our home planet: 332,946 Earths match the mass of the Sun. The Sun’s volume would need 1.3 million Earths to fill it.

    The Sun is 93 million miles (150 million kilometers) from Earth. Its nearest stellar neighbor is the Alpha Centauri triple star system: Proxima Centauri is 4.24 light years away, and Alpha Centauri A and B—two stars orbiting each other—are 4.37 light years away. A light year is the distance light travels in one year, which is equal to 5,878,499,810,000 miles or 9,460,528,400,000 kilometers.
    """, title: "Size and Distance"),
                    PlanetDescription(info: """
    The Sun, like others stars, is a ball of gas. In terms of the number of atoms, it is made of 91.0% hydrogen and 8.9% helium. By mass, the Sun is about 70.6% hydrogen and 27.4% helium.

    The Sun has six regions: the core, the radiative zone, and the convective zone in the interior; the visible surface, called the photosphere; the chromosphere; and the outermost region, the corona.

    At the core, the temperature is about 27 million degrees Fahrenheit (15 million degrees Celsius), which is sufficient to sustain thermonuclear fusion. This is a process in which atoms combine to form larger atoms and in the process release staggering amounts of energy. Specifically, in the Sun’s core, hydrogen atoms fuse to make helium.
    """, title: "Structure"),
                    PlanetDescription(info: """
    The surface of the Sun, the photosphere, is a 300-mile-thick (500-kilometer-thick) region, from which most of the Sun's radiation escapes outward. This is not a solid surface like the surfaces of planets. Instead, this is the outer layer of the gassy star.

    We see radiation from the photosphere as sunlight when it reaches Earth about eight minutes after it leaves the Sun. The temperature of the photosphere is about 10,000 degrees Fahrenheit (5,500 degrees Celsius).
    """, title: "Surface"),
                    PlanetDescription(info: """
    Above the photosphere lie the tenuous chromosphere and the corona (crown), which make up the thin solar atmosphere. This is where we see features such as sunspots and solar flares.

    Visible light from these top regions is usually too weak to be seen against the brighter photosphere, but during total solar eclipses, when the moon covers the photosphere, the chromosphere looks like a red rim around the Sun, while the corona forms a beautiful white crown with plasma streamers narrowing outward, forming shapes that look like flower petals.

    Strangely, the temperature in the Sun's atmosphere increases with altitude, reaching as high as 3.5 million degrees Fahrenheit (2 million degrees Celsius). The source of coronal heating has been a scientific mystery for more than 50 years.
    """, title: "Atmosphere"),
                    PlanetDescription(info: """
    When the Sun has burned all its Hydrogen, it will continue to burn helium for 130 million more years. During this time, it will expand to the point that it will engulf Mercury, Venus, and the Earth. At this stage it will have become a red giant.
    """, title: "The Sun will consume the Earth"),
                    PlanetDescription(info: """
    After its red giant phase, the Sun will collapse. It will keep its enormous mass with the approximate volume of our planet. When this happens, it will have become a white dwarf.
    """, title: "The Sun will one day be about the size of Earth"),
                    PlanetDescription(info: """
    The Sun is an average distance of 150 million kilometres from the Earth. Light travels at 300,000 kilometres per second. Dividing one by the other gives us an approximate time of 500 seconds (or eight minutes and 20 seconds). Although this energy reaches Earth in a few minutes, it will already have taken millions of years to travel from the Sun’s core to its surface.
    """, title: "Light from the Sun takes eight minutes to reach Earth"),
                    PlanetDescription(info: """
    At around 4.6 billion years old, the Sun has already burned off about half of its store of Hydrogen. It has enough left to continue to burn Hydrogen for approximately 5 billion years. The Sun is currently a type of star known as a Yellow Dwarf.
    """, title: "The Sun is middle-aged"),
                    PlanetDescription(info: """
    Sunspots are areas of the Sun’s surface that appear darker than the surrounding areas, this is because they are cooler. They form in areas of strong magnetic activity that inhibit heat transfer.

    When the magnetic fields near sunspots cross, tangle or are reorganised, an explosion of energy can be released, causing solar flares. Intense solar flares can interfere with radio communications on Earth.
    """, title: "Sunspots and Solar Flares")
                ]
    let quickFacts = [
        "The Sun is all the colors mixed together, this appears white to our eyes", "One million Earths could fit inside the Sun",
        "Light from the Sun takes 8 minutes to reach Earth", "The Sun has a very strong magnetic field", "The Sun will consume the Earth"
    ]
                let planet = CosmicObject(planetName: "Sun", shortDescription: shortDescription, profile: profile, position: position, planetDescription: description, quickFacts: quickFacts)
}
