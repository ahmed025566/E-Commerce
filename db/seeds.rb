# frozen_string_literal: true

Category.create([{ name: 'Lights' }, { name: 'Furniture' }, { name: 'Interior' },
                 { name: 'Decoration' }, { name: 'Outdoor' }, { name: 'Essentials' }, { name: 'Canvas Basket' }])

product = Product.create(
  name: 'Led Bulb',
  price: 18,
  shortDescription: 'LED B22 Bulb Base has low Power Consumption With 9 W and Cool Daylight (6500-7500K). Easy to install as they can fit into standard light fixtures.',
  category: Category.find_by(name: 'Lights'),
  description: 'Low energy consumption and non-dimmable with Lifetime of 15,000 hours and UV and IR free light. Made from polycarbonate, these bulbs are durable, so you don’t have to worry about replacing them often. With a B22 cap fitting, they are easy to install as they can fit into standard light fixtures.
  Lighting costs amount to a major part of your electricity bills. So bring home this pack of  energy-efficient bulbs from Laura and you will surely notice a substantial cut in the power consumption. These bulbs produce white light that can create a relaxing ambience for your home.',
  color: 'white'
)

product.images.attach(
  [io: File.open(Rails.root.join('db/images/lights/Led_Bulb_1.jpg')),
   filename: 'Led_Bulb_1.jpg'],
  [io: File.open(Rails.root.join('db/images/lights/ledbbulb_2.jpg')),
   filename: 'ledbbulb_2.jpg'],
  [io: File.open(Rails.root.join('db/images/lights/led bulb _3.jpg')),
   filename: 'led bulb _3.jpg']
)

banner_1 = Product.create(
  name: 'Living Room',
  shortDescription: 'Furnising Light',
  price: 75,
  category_id: 1
)

banner_1.images.attach(io: File.open(Rails.root.join('db/images/banners/banner_1.jpg')),
                       filename: 'banner_1.jpg')

banner_2 = Product.create(
  name: 'Stainless Food',
  shortDescription: 'Container Set',
  price: 190,
  category_id: 1
)

banner_2.images.attach(io: File.open(Rails.root.join('db/images/banners/banner-bg-2.jpg')),
                       filename: 'banner-bg-2.jpg')

banner_3 = Product.create(
  name: 'Woolen Mills',
  shortDescription: 'Ceramics Mug',
  price: 75,
  category_id: 1
)

banner_3.images.attach(io: File.open(Rails.root.join('db/images/banners/banner-bg-3.jpg')),
                       filename: 'banner-bg-3.jpg')

furnisihingLight = Product.create(
  name: 'Furnisihing Light',
  price: 75,
  shortDescription: 'High quality and Super energy saving light offers high brightness. It is designed to replace incandescent equivalents to save you energy and still achieve superior lighting.',
  category: Category.find_by(name: 'Lights'),
  description:

  'Get this highly efficient yellow colored sconce wall lamp for your puja room, which is presented from the house of Gojeeva. Crafted from the finest quality steel, plastic and glass material, this wall lamp will remain the same for many years.

                        It is highly durable and light in weight. It is designed to replace incandescent equivalents to save you energy and still achieve superior lighting.',
  color: 'white'
)

furnisihingLight.images.attach(
  [io: File.open(Rails.root.join('db/images/lights/furnishing light _ 1.jpg')),
   filename: 'furnishing light _ 1.jpg'],
  [io: File.open(Rails.root.join('db/images/lights/furnishing light _ 2.jpg')),
   filename: 'furnishing light _ 2.jpg'],
  [io: File.open(Rails.root.join('db/images/lights/furnishing light _ 3.jpg')),
   filename: 'furnishing light _ 3.jpg']
)
