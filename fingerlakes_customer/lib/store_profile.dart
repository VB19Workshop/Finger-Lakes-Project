
class StoreProfile{
  final String name;
  final String address;
  final String phoneNumber;
  final String imagePath;
  final String description;
  final String schedule;

  const StoreProfile({
    required this.name,
    required this.address,
    required this.phoneNumber,
    required this.imagePath,
    required this.description,
    required this.schedule,
  });

}

  class StoreAccess{
    static const List<StoreProfile> stores = [
    StoreProfile(
      name: "Farmington",
      address: "6081 Route 96, Farmington, NY 14425",
      phoneNumber: "(585) 742-6218",
      imagePath: "assets/store_profile_pics/farmington_pp.jpg",
      description: "A nice place to stop in the Farmington area to kick back and enjoy FLCR's signature blends, fresh treats; and a warming place to spend the next 30 minutes.",
      schedule: "Monday: 6:30am-7pm\nTuesday: 6:30am-7pm\nWednesday: 6:30am-7pm\nThursday: 6:30am-7pm\nFriday: 6:30am-7pm\nSaturday: 7am-6pm\nSunday: 8am-4pm"
    ),

    StoreProfile(
      name: "Pittsford Plaza",
      address: "3349 Monroe Ave, Rochester, NY 14618",
      phoneNumber: "(585) 385-0750",
      imagePath: "assets/store_profile_pics/pittsford_pp.jpg",
      description: "In the heart of the Pittsford Plaza this coffee shop offers a welcome space to enjoy FLCR's signature blends, fresh treats, and a moment to enjoy time with friends and family or sit down for some relaxing work.",
      schedule: "Monday: 6:30am-7pm\nTuesday: 6:30am-7pm\nWednesday: 6:30am-7pm\nThursday: 6:30am-7pm\nFriday: 6:30am-7pm\nSaturday: 7:30am-7pm\nSunday: 7:30am-6pm"      
    ),

    StoreProfile(
      name: "Thompson Hospital",
      address: "350 Parrish St, Canadaigua, NY 14424",
      phoneNumber: "(585) 396-6566",
      imagePath: "assets/store_profile_pics/thompson_hospital_pp.jpg",
      description: "In the namesake of the classic roast Canandaigua the Thompson Hospital location serves delicious coffee and comfort to staff heading into work and those coming to visit or waiting for news.",
      schedule: "Monday: 7am-3pm\nTuesday: 7am-3pm\nWednesday: 7am-3pm\nThursday: 7am-3pm\nFriday: 7am-3pm\nSaturday: 7:30am-11am\nSunday: CLOSED"
    ),

    StoreProfile(
      name: "Strong Hospital: Lobby",
      address: "601 Elmwood Ave, Rochester, NY 14642",
      phoneNumber: "(585) 274-0245",
      imagePath: "assets/store_profile_pics/strong_hospital_pp.jpg",
      description: "More than just a coffee shop, FLCR has partnered with Strong Memorial and Friends to serve delicious coffee and a welcoming stop for patients, families; and staff. Every purchase also helps support programs at Strong Memorial.",
      schedule: "Monday: 7-6pm\nTuesday: 7-6pm\nWednesday: 7-6pm\nThursday: 7-6pm\nFriday: 7-6pm\nSaturday: 7:30am-4pm\nSunday: 7:30am-4pm"
    ),
    StoreProfile(
      name: "Strong Hospital: ATM",
      address: "601 Elmwood Ave, Rochester, NY 14642",
      phoneNumber: "(585) 275-0251",
      imagePath: "assets/store_profile_pics/strong_hospital_pp.jpg",
      description: "Serving delicious coffee and sweet and savory treats as well as comfort to those wandering by or waiting in the family waiting area. There's even been llive music performances!",
      schedule: "Monday: 7am-1pm\nTuesday: 7am-1pm\nWednesday: 7am-1pm\nThursday: 7am-1pm\nFriday: 7am-1pm\nSaturday: CLOSED\nSunday: CLOSED"
    ),
    StoreProfile(
      name: "Strong Hospital: Medical Research",
      address: "601 Elmwood Ave, Rochester, NY 14642",
      phoneNumber: "(585) 273-1466",
      imagePath: "assets/store_profile_pics/strong_hospital_pp.jpg",
      description: "Serving the Medical Research Building and School of Medicine & Dentistry community, this café provides fresh coffee and grab-and-go options for students, researchers, physicians, and staff. The location was expanded in 2016 as part of the continuing growth of FLCR's presence at Strong Memorial Hospital.",
      schedule: "Monday: 6:30am-3:30pm\nTuesday: 6:30am-3:30pm\nWednesday: 6:30am-3:30pm\nThursday: 6:30am-3:30pm\nFriday: 6:30am-3:30pm\nSaturday: CLOSED\nSunday: CLOSED"
    ),

    StoreProfile(
      name: "Destiny USA",
      address: "9090 Destiny Dr, Syracuse, NY 13204",
      phoneNumber: "(315) 474-2326",
      imagePath: "assets/store_profile_pics/destiny_usa_pp.jpg",
      description: "Since 2015 the Destiny USA cafe has been serving FLCR's signature and experimental blends to the Syracuse community! Stop by for a cup of delicious coffee, a sweet treat; and some conversation!",
      schedule: "Monday: 9am-8pm\nTuesday: 9am-8pm\nWednesday: 9am-8pm\nThursday: 9am-8pm\nFriday: 9am-8pm\nSaturday: 9am-8pm\nSunday: 10am-6pm"
    ),
  ];
  
}