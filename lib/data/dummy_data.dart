

import 'package:lenovo/models/category.dart';
import 'package:lenovo/models/laptop.dart';
import 'package:lenovo/models/type.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Student',
    text: 'FOR STUDENT',
    image: 'cat3.png',
  ),
  Category(
    id: 'c2',
    title: 'BusineSS',
    text: 'FOR BUSINESS',
    image: 'cat1.png',
  ),
  Category(
    id: 'c3',
    title: 'Gaming',
    text: 'FOR GAMING',
    image: 'cat4.png',
  ),
  Category(
    id: 'c4',
    title: 'Personal',
    text: 'FOR PERSONAL USE',
    image: 'cat2.png',
  ),

  // Category(
  //   id: 'c5',
  //   title: 'Trending',
  //   text: 'TRENDING NOW',
  //   image: 'cat5.png',
  // )

];


const availableTypes = [
  Type(
    id: "t1", 
    title: "ThinkPad",
  ),
    Type(
    id: "t2", 
    title: "Legion",
  ),
    Type(
    id: "t3", 
    title: "IdeaPad",
  ),
    Type(
    id: "t4", 
    title: "Yoga",
  ),
    Type(
    id: "t5", 
    title: "ThinkBook",
  ),
];









List<Laptop> dummyLaptops = [
  const Laptop(
    id: 'l1',
    categories: [
      'c2',
    ],
    types: [
      't1'
    ],
    star: 4,
    name: 'Lenovo ThinkPad X1 Carbon Gen 9',
    affordability: Affordability.HIGH_END,
    imageUrl:"assets/images/11.png",
    battery: "Up to 19.5 hours",
    ram: "16GB",
    displaySize: "14 inches",
    processor: "Intel Core i7",
    graphics: "Intel Iris Xe",
    price: 1599,
    description: "The Lenovo ThinkPad X1 Carbon Gen 9 is a flagship business laptop that exudes professionalism. It features a sleek and lightweight design, making it perfect for frequent travelers and executives. With its powerful processing capabilities, ample RAM, and speedy storage, this laptop ensures smooth multitasking and quick boot times. The impressive battery life ensures uninterrupted productivity throughout the day. The durable chassis and top-notch security features, including a fingerprint reader and webcam shutter, protect sensitive data from unauthorized access. The X1 Carbon Gen 9 sets a new standard for premium business laptops.",
    storage: "512GB SSD ",
    displayImg1: 'assets/images/11.png',
    displayImg2: 'assets/images/12.png',
    displayImg3: 'assets/images/13.png',
    numberOfRaters: 464,
    operatingSystem: "Windows 10 Pro",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
    trending: true,
  ),

  const Laptop(
    id: 'l2',
    categories: [
      'c3',
    ],
    types: [
      't2'
    ],
    star: 5,
    name: 'Lenovo Legion 7i',
    affordability: Affordability.HIGH_END,
    imageUrl:'assets/images/21.png',
    battery: "Up to 8 hours",
    ram: "32GB",
    displaySize: "15.6 inches",
    processor: "Intel Core i7",
    graphics: "Intel Iris Xe",
    price: 1599,
    description: "For avid gamers seeking ultimate performance, the Lenovo Legion 7i is a powerhouse. Packed with a high-end Intel Core i9 processor and NVIDIA's cutting-edge RTX 3080 GPU, this laptop handles even the most demanding games with ease. The 32GB RAM ensures smooth gameplay and effortless multitasking. Its 15.6-inch display with a high refresh rate and Dolby Vision support provides stunning visuals and immersive experiences. The Legion 7i's premium build quality, customizable RGB lighting, and dual-fan cooling system cater to both gamers and tech enthusiasts, making it an exceptional gaming laptop.",
    storage: "1TB SSD",
    displayImg1: 'assets/images/21.png',
    displayImg2: 'assets/images/22.png',
    displayImg3: 'assets/images/23.png',
    numberOfRaters: 1674,
    operatingSystem: "Windows 10 Home",
    camera: "HD Webcam",
    keyboard: "RGB Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
  ),

    const Laptop(
    id: 'l3',
    categories: [
      'c1',
    ],
    types: [
      't3'
    ],
    star: 4,
    name: 'Lenovo IdeaPad Flex 5 ',
    affordability: Affordability.BUDGET_FRIENDLY,
    imageUrl:'assets/images/31.png',
    battery: "Up to 10 hours",
    ram: "8GB",
    displaySize: "14 inches",
    processor: "AMD Ryzen 5 ",
    graphics: "AMD Radeon Graphics",
    price: 699,
    discount: 15,
    description: "Designed with students in mind, the Lenovo IdeaPad Flex 5 offers versatility and performance at an affordable price. Its 2-in-1 design lets you use it as a traditional laptop or flip the screen for tablet mode, making it ideal for note-taking and creative tasks. The AMD Ryzen 5 processor ensures smooth performance for everyday productivity and light multimedia tasks. The 14-inch touchscreen display allows intuitive navigation, while the 360-degree hinge enables tent and stand modes for media consumption. With a comfortable keyboard and all-day battery life, the IdeaPad Flex 5 is a reliable companion for students on the move.",
    storage: "256GB SSD",
    displayImg1: 'assets/images/31.png',
    displayImg2: 'assets/images/32.png',
    displayImg3: 'assets/images/33.png',
    numberOfRaters: 16,
    operatingSystem: "Windows 10 Home",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
  ),


  const Laptop(
    id: 'l4',
    categories: [
      'c4',
    ],
    types: [
      't4'
    ],
    star: 5,
    name: 'Lenovo Yoga C940 ',
    affordability: Affordability.MID_RANGE,
    imageUrl:'assets/images/41.png',
    battery: "Up to 15 hours",
    ram: "16GB",
    displaySize: "14 inches",
    processor: "Intel Core i7",
    graphics: "Intel Iris Plus",
    price: 699,
    description: "Designed with students in mind, the Lenovo IdeaPad Flex 5 offers versatility and performance at an affordable price. Its 2-in-1 design lets you use it as a traditional laptop or flip the screen for tablet mode, making it ideal for note-taking and creative tasks. The AMD Ryzen 5 processor ensures smooth performance for everyday productivity and light multimedia tasks. The 14-inch touchscreen display allows intuitive navigation, while the 360-degree hinge enables tent and stand modes for media consumption. With a comfortable keyboard and all-day battery life, the IdeaPad Flex 5 is a reliable companion for students on the move.",
    storage: "512GB SSD",
    displayImg1: 'assets/images/41.png',
    displayImg2: 'assets/images/42.png',
    displayImg3: 'assets/images/43.png',
    numberOfRaters: 701,
    operatingSystem: "Windows 10 Home",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
    trending: true,
  ),



    const Laptop(
    id: 'l5',
    categories: [
      'c2',
    ],
    types: [
      't5'
    ],
    star: 4,
    name: 'Lenovo ThinkBook 14s Yoga',
    affordability: Affordability.MID_RANGE,
    imageUrl:"assets/images/51.png",
    battery: "Up to 8 hours",
    ram: "16GB",
    displaySize: "14 inches",
    processor: "Intel Core i5",
    graphics: "Intel Iris Xe",
    price: 899,
    discount: 20,
    description: "Tailored for business professionals, the Lenovo ThinkBook 14s Yoga offers versatility and productivity in one device. The 2-in-1 design allows seamless transition between laptop and tablet modes, ideal for presentations and collaborative work. Its Intel Core i5 processor and 16GB of RAM provide ample power for multitasking and data-intensive tasks. The laptop's robust security features, including a fingerprint reader and TPM 2.0 chip, safeguard sensitive business data. The 14-inch display with an anti-glare coating ensures comfortable viewing during long work hours. With its durable build, solid performance, and business-focused features, the ThinkBook 14s Yoga is a reliable companion for on-the-go professionals",
    storage: "512GB SSD",
    displayImg1: 'assets/images/51.png',
    displayImg2: 'assets/images/52.png',
    displayImg3: 'assets/images/53.png',
    numberOfRaters: 432,
    operatingSystem: "Windows 10 Pro",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
  ),

  const Laptop(
    id: 'l6',
    categories: [
      'c3',
    ],
    types: [
      't2'
    ],
    star: 5,
    name: 'Lenovo Legion 5 ',
    affordability: Affordability.MID_RANGE,
    imageUrl:'assets/images/61.png',
    battery: "Up to 6 hours",
    ram: "16GB",
    displaySize: "17.3 inches",
    processor: "AMD Ryzen 7",
    graphics: "NVIDIA GTX 1660 Ti ",
    price: 1099,
    description: "The Lenovo Legion 5 caters to gamers who demand high-performance at a reasonable price. Powered by the AMD Ryzen 7 processor and NVIDIA GTX 1660 Ti graphics, this laptop delivers smooth gaming experiences and handles resource-intensive tasks with ease. Its 17.3-inch Full HD display boasts a high refresh rate, ensuring fluid visuals and reduced motion blur during fast-paced games. The laptop's large keyboard with RGB backlighting enhances the gaming experience, and its advanced cooling system prevents overheating during extended gaming sessions. With its affordable price and robust gaming capabilities, the Legion 5 is a worthy contender in the gaming laptop market",
    storage: "1TB SSD",
    displayImg1: 'assets/images/61.png',
    displayImg2: 'assets/images/62.png',
    displayImg3: 'assets/images/63.png',
    numberOfRaters: 1687,
    operatingSystem: "Windows 10 Home",
    camera: "HD Webcam",
    keyboard: "RGB Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
    trending: true,
  ),

    const Laptop(
    id: 'l7',
    categories: [
      'c4',
    ],
    types: [
      't1'
    ],
    star: 4,
    name: 'Lenovo ThinkPad X12 Detachable',
    affordability: Affordability.MID_RANGE,
    imageUrl:'assets/images/71.png',
    battery: "Up to 10 hours",
    ram: "16GB",
    displaySize: "12.3 inches",
    processor: "Intel Core i5",
    graphics: "Intel UHD Graphics",
    price: 1299,
    description: "The Lenovo ThinkPad X12 Detachable is a versatile 2-in-1 device designed for business professionals on the move. Its detachable keyboard allows it to function as a tablet or a laptop, offering flexibility for various tasks. The 12.3-inch touch display with pen support provides a comfortable workspace for taking notes and sketching. Powered by an Intel Core i5 processor and 16GB of RAM, the X12 Detachable ensures smooth performance for business applications. Its solid-state drive offers quick data access and secure storage for sensitive files. The laptop's robust security features, including a webcam privacy shutter, enhance data protection, making it an excellent choice for professionals seeking portability and functionality.",
    storage: "512GB SSD",
    displayImg1: 'assets/images/71.png',
    displayImg2: 'assets/images/72.png',
    displayImg3: 'assets/images/73.png',
    numberOfRaters: 17,
    operatingSystem: "Windows 10 Pro",
    camera: "HD Webcam",
    keyboard: "Detachable Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
    
  ),


  const Laptop(
    id: 'l8',
    categories: [
      'c4',
    ],
    types: [
      't4'
    ],
    star: 5,
    name: 'Lenovo Yoga 9i',
    affordability: Affordability.HIGH_END,
    imageUrl:'assets/images/81.png',
    battery: "Up to 15 hours",
    ram: "16GB",
    displaySize: "15.6 inches",
    processor: "Intel Core i7",
    graphics: "Intel Iris Xe",
    price: 1599,
    discount: 35,
    description: "The Lenovo Yoga 9i is a premium 2-in-1 laptop that emphasizes style and performance. Its 15.6-inch touchscreen display boasts exceptional clarity and color accuracy for media consumption and creative work. The laptop's soundbar hinge, featuring Dolby Atmos speakers, produces immersive audio. The Intel Core i7 processor and 16GB of RAM provide more than enough power for productivity tasks and entertainment. The Yoga 9i's all-metal chassis exudes elegance and durability, while its rotating soundbar doubles as a sturdy hinge. With its sleek design and powerful performance, the Yoga 9i is an excellent choice for users who want a premium personal computing experience.",
    storage: "1TB SSD",
    displayImg1: 'assets/images/81.png',
    displayImg2: 'assets/images/82.png',
    displayImg3: 'assets/images/83.png',
    numberOfRaters: 179,
    operatingSystem: "Windows 10 Home",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
    trending: true,
  ),




  const Laptop(
    id: 'l9',
    categories: [
      'c2',
    ],
    types: [
      't1'
    ],
    star: 4,
    name: 'Lenovo ThinkPad P15',
    affordability: Affordability.HIGH_END,
    imageUrl:"assets/images/91.png",
    battery: "Up to 8 hours",
    ram: "32GB",
    displaySize: "15.6 inches",
    processor: "Intel Xeon W-10855M",
    graphics: "Intel Iris Xe",
    price: 3299,
    description: "The Lenovo ThinkPad P15 is a mobile workstation designed for professionals in creative and engineering fields. Equipped with an Intel Xeon processor and 32GB of ECC RAM, it handles resource-intensive tasks, such as 3D rendering and video editing, with ease. The NVIDIA Quadro RTX 5000 graphics card delivers exceptional performance for CAD applications and complex simulations. Its 4K UHD display with 100% Adobe RGB coverage ensures accurate color representation for visual work. The ThinkPad P15's robust build, including military-grade durability and advanced security features, provides peace of mind for handling critical projects on the go.",
    storage: "1TB SSD",
    displayImg1: 'assets/images/91.png',
    displayImg2: 'assets/images/92.png',
    displayImg3: 'assets/images/93.png',
    numberOfRaters: 1796,
    operatingSystem: "Windows 10 Pro",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
  ),

  const Laptop(
    id: 'l10',
    categories: [
      'c4',
    ],
    types: [
      't3'
    ],
    star: 4,
    name: 'Lenovo IdeaPad 5',
    affordability: Affordability.BUDGET_FRIENDLY,
    imageUrl:'assets/images/101.png',
    battery: "Up to 12 hours",
    ram: "12GB",
    displaySize: "15.6 inches",
    processor: "AMD Ryzen 7",
    graphics: "AMD Radeon Graphics",
    price: 799,
    description: "The Lenovo IdeaPad 5 is an all-around performer designed for personal use and productivity. Its AMD Ryzen 7 processor and 12GB of RAM deliver smooth performance for everyday tasks, from web browsing to content creation. The 15.6-inch Full HD display with slim bezels provides an immersive viewing experience for movies and multimedia. The laptop's slim and lightweight design makes it easy to carry around, while the backlit keyboard ensures comfortable typing even in dimly lit environments. With its long battery life and reliable performance, the IdeaPad 5 is an excellent choice for users seeking a budget-friendly laptop for personal and work use.",
    storage: "512GB SSD",
    displayImg1: 'assets/images/101.png',
    displayImg2: 'assets/images/102.png',
    displayImg3: 'assets/images/103.png',
    numberOfRaters: 2685,
    operatingSystem: "Windows 10 Home",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
    trending: true,
  ),

    const Laptop(
    id: 'l11',
    categories: [
      'c3',
    ],
    types: [
      't2'
    ],
    star: 5,
    name: 'Lenovo Legion 5 Pro',
    affordability: Affordability.HIGH_END,
    imageUrl:'assets/images/111.png',
    battery: "Up to 7 hours",
    ram: "32GB",
    displaySize: "16 inches",
    processor: "AMD Ryzen 9",
    graphics: "NVIDIA RTX 3070",
    price: 1999,
    description: "Geared towards gaming enthusiasts, the Lenovo Legion 5 Pro offers exceptional gaming performance and a unique 16-inch display with a 165Hz refresh rate. Its AMD Ryzen 9 processor and 32GB of RAM deliver superior multitasking capabilities, making it ideal for content creators as well. The NVIDIA RTX 3070 graphics card ensures smooth gameplay and supports real-time ray tracing for stunning visuals. The laptop's premium design, customizable RGB lighting, and excellent cooling system make it an attractive choice for gamers who want both performance and aesthetics in a gaming laptop.",
    storage: "1TB SSD",
    displayImg1: 'assets/images/111.png',
    displayImg2: 'assets/images/112.png',
    displayImg3: 'assets/images/113.png',
    numberOfRaters: 179,
    operatingSystem: "Windows 10 Pro",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
  ),


  const Laptop(
    id: 'l12',
    categories: [
      'c2',
    ],
    types: [
      't1'
    ],
    star: 5,
    name: 'Lenovo ThinkPad E14 Gen 3',
    affordability: Affordability.BUDGET_FRIENDLY,
    imageUrl:'assets/images/81.png',
    battery: "Up to 10 hours",
    ram: "8GB",
    displaySize: "14 inches",
    processor: "AMD Ryzen 5",
    graphics: "AMD Radeon Graphics",
    price: 749,
    discount: 25,
    description: "The Lenovo ThinkPad E14 Gen 3 is a budget-friendly business laptop that doesn't compromise on quality. Its AMD Ryzen 5 processor and 8GB of RAM offer decent performance for everyday office tasks and light multimedia use. The laptop's compact and lightweight design makes it suitable for professionals on the move. The durable build and spill-resistant keyboard ensure reliability and longevity, making it ideal for frequent travelers or students. The ThinkPad E14 Gen 3's security features, including a webcam privacy shutter and optional fingerprint reader, safeguard sensitive business data, providing peace of mind in an affordable package.",
    storage: "256GB SSD",
    displayImg1: 'assets/images/121.png',
    displayImg2: 'assets/images/122.png',
    displayImg3: 'assets/images/123.png',
    numberOfRaters: 809,
    operatingSystem: "Windows 10 Pro",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
    trending: true,
  ),



    ///
  //////
  const Laptop(
    id: 'l13',
    categories: [
      'c4',
    ],
    types: [
      't4'
    ],
    star: 4,
    name: 'Lenovo Yoga',
    affordability: Affordability.MID_RANGE,
    imageUrl:"assets/images/131.png",
    battery: "Up to 12 hours",
    ram: "16GB",
    displaySize: "13.3 inches",
    processor: "AMD Ryzen 7",
    graphics: "AMD Radeon Graphics",
    price: 894,
    description: "The Lenovo Yoga 6 is a stylish and portable 2-in-1 laptop designed for users seeking versatility and performance. Its AMD Ryzen 7 processor and 16GB of RAM provide ample power for multitasking and light creative work. The 13.3-inch Full HD touchscreen display supports pen input, making it suitable for note-taking and sketching. The laptop's fabric-wrapped design adds a touch of elegance and improves grip. With a 360-degree hinge, the Yoga 6 can be used in various modes to suit different tasks and preferences. Its long battery life ensures all-day productivity and entertainment on the go.",
    storage: "512GB SSD",
    displayImg1: 'assets/images/131.png',
    displayImg2: 'assets/images/132.png',
    displayImg3: 'assets/images/133.png',
    numberOfRaters: 1274,
    operatingSystem: "Windows 10 Home",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
  ),

  const Laptop(
    id: 'l14',
    categories: [
      'c3',
    ],
    types: [
      't2'
    ],
    star: 4,
    name: 'Lenovo Legion 5i',
    affordability: Affordability.MID_RANGE,
    imageUrl:'assets/images/141.png',
    battery: "Up to 7 hours",
    ram: "16GB",
    displaySize: "15.6 inches",
    processor: "Intel Core i7",
    graphics: "NVIDIA GTX 1660 Ti",
    price: 1099,
    description: "The Lenovo Legion 5i offers an excellent balance of price and performance for gamers on a budget. Its Intel Core i7 processor and 16GB of RAM ensure smooth gameplay and multitasking. The NVIDIA GTX 1660 Ti graphics card delivers impressive visuals for popular games without breaking the bank. The laptop's 15.6-inch Full HD display with a high refresh rate enhances gaming experiences by reducing motion blur. The Legion 5i's minimalist design, backlit keyboard, and precise trackpad cater to gamers who value functionality and reliable performance in their gaming laptop.",
    storage: "512GB SSD",
    displayImg1: 'assets/images/141.png',
    displayImg2: 'assets/images/142.png',
    displayImg3: 'assets/images/143.png',
    numberOfRaters: 179,
    operatingSystem: "Windows 10 Home",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
    trending: true,
  ),

    const Laptop(
    id: 'l15',
    categories: [
      'c2',
    ],
    types: [
      't5'
    ],
    star: 5,
    name: 'Lenovo ThinkBook Plus Gen 2 ',
    affordability: Affordability.MID_RANGE,
    imageUrl:'assets/images/151.png',
    battery: "Up to 15 hours",
    ram: "16GB",
    displaySize: "12 inches (main) + 10.8 inches (e-ink)",
    processor: "Intel Core i7",
    graphics: "Intel Iris Xe",
    price: 1699,
    description: "The Lenovo ThinkBook Plus Gen 2 is a unique and innovative laptop designed for productivity and creativity. Its main 12-inch display offers a conventional laptop experience, while the secondary 10.8-inch e-ink display on the lid provides a digital writing pad for note-taking and sketching. The Intel Core i7 processor and 16GB of RAM ensure smooth performance for business applications and multitasking. The laptop's durable build, including a precision-machined aluminum chassis, guarantees reliability for professionals on the go. The ThinkBook Plus Gen 2 redefines the traditional laptop with its e-ink display, making it an intriguing choice for creative professionals and business users alike.",
    storage: "512GB SSD",
    displayImg1: 'assets/images/151.png',
    displayImg2: 'assets/images/152.png',
    displayImg3: 'assets/images/153.png',
    numberOfRaters: 362,
    operatingSystem: "Windows 10 Pro",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
  ),


  const Laptop(
    id: 'l16',
    categories: [
      'c4',
    ],
    types: [
      't4'
    ],
    star: 5,
    name: 'Lenovo Yoga Slim 7 Pro',
    affordability: Affordability.MID_RANGE,
    imageUrl:'assets/images/161.png',
    battery: "Up to 14 hours",
    ram: "16GB",
    displaySize: "14 inches",
    processor: "AMD Ryzen 7",
    graphics: "AMD Radeon Graphics",
    price: 1249,
    description: "The Lenovo Yoga Slim 7 Pro is a premium ultrabook designed for users who value style and performance. Its AMD Ryzen 7 processor and 16GB of RAM provide smooth multitasking and reliable performance for creative tasks and productivity. The 14-inch 2.8K display with a 90Hz refresh rate delivers stunning visuals and vibrant colors for multimedia and content creation. The laptop's slim and lightweight design, combined with a long-lasting battery, makes it an ideal choice for users who are constantly on the move. The Yoga Slim 7 Pro's sleek appearance and excellent build quality make it an attractive option for users seeking a high-end personal laptop.",
    storage: "1TB SSD",
    displayImg1: 'assets/images/161.png',
    displayImg2: 'assets/images/162.png',
    displayImg3: 'assets/images/163.png',
    numberOfRaters: 179,
    operatingSystem: "Windows 10 Home",
    camera: "HD Webcam",
    keyboard: "Backlit Keyboard",
    wLan: "Wi-Fi 6 (802.11ax)",
    trending: true,
  ),


];















