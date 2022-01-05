class Catalogue {
  String name;
  String overview;
  String duration;
  String language;
  String imgAsset;

  Catalogue(
      {required this.name,
      required this.overview,
      required this.duration,
      required this.language,
      required this.imgAsset});
}

var catalogueList = [
  Catalogue(
      name: 'Resident Evil: Welcome to Raccoon City (2021)',
      overview:
          'Once the booming home of pharmaceutical giant Umbrella Corporation, Raccoon City is now a dying Midwestern town. The company’s exodus left the city a wasteland…with great evil brewing below the surface. When that evil is unleashed, the townspeople are forever…changed…and a small group of survivors must work together to uncover the truth behind Umbrella and make it through the night.',
      duration: '1h 47m',
      language: 'English',
      imgAsset: 'images/resident_evil.jpg'),
  Catalogue(
      name: 'DC’s Startgirl (2020)',
      overview:
          'Courtney Whitmore, a smart, athletic and above all else kind girl, discovers her step-father has a secret: he used to be the sidekick to a superhero. "Borrowing" the long-lost hero’s cosmic staff, she becomes the unlikely inspiration for an entirely new generation of superheroes.',
      duration: '43m',
      language: 'English',
      imgAsset: 'images/stargirl.jpg'),
  Catalogue(
      name: 'Free Guy (2021)',
      overview:
          'A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.',
      duration: '1h 55m',
      language: 'English',
      imgAsset: 'images/free_guy.jpg'),
  Catalogue(
      name: 'Ghostbusters: Afterlife (2021)',
      overview:
          'When a single mom and her two kids arrive in a small town, they begin to discover their connection to the original Ghostbusters and the secret legacy their grandfather left behind.',
      duration: '2h 4m',
      language: 'English',
      imgAsset: 'images/ghostbuster.jpg'),
  Catalogue(
      name: 'Shang-Chi dan Legenda Sepuluh Cincin (2021)',
      overview:
          'Shang-Chi must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization.',
      duration: '2h 12m',
      language: 'English',
      imgAsset: 'images/shang_chi.jpg'),
  Catalogue(
      name: 'Venom: Let there be carnage',
      overview:
          'After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.',
      duration: '1h 37m',
      language: 'English',
      imgAsset: 'images/venom.jpg'),
  Catalogue(
      name: 'Encanto (2021)',
      overview:
          "The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family with a unique gift from super strength to the power to heal—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family's last hope.",
      duration: '1h 42m',
      language: 'English',
      imgAsset: 'images/encanto.jpg'),
  Catalogue(
      name: 'Spider-Man: No Way Home (2021)',
      overview:
          'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.',
      duration: '2h 28m',
      language: 'English',
      imgAsset: 'images/spiderman.jpg'),
  Catalogue(
      name: 'Harry Potter 20th Anniversary: Return to Hogwarts (2022)',
      overview:
          'An enchanting making-of story told through all-new in-depth interviews and cast conversations, inviting fans on a magical first-person journey through one of the most beloved film franchises of all time.',
      duration: '1h 43m',
      language: 'English',
      imgAsset: 'images/harry_potter.jpg'),
  Catalogue(
      name: 'The Matrix Resurrections (2021)',
      overview:
          "Plagued by strange memories, Neo's life takes an unexpected turn when he finds himself back inside the Matrix.",
      duration: '2h 28m',
      language: 'English',
      imgAsset: 'images/matrix.jpg'),
];
