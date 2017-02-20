
User.create([
  {email: 'Steveredgrave@famousdiabetics.com', password:'password', ideal_bg: 5.5 },
  {email: 'halleberry@famousdiabetics.com', password:'password', ideal_bg: 6.7 },
  {email: 'doriangregory@famousdiabetics.com', password:'password', ideal_bg: 7.2},
  {email: 'bretmichaels@famousdiabetics.com', password:'password', ideal_bg: 8.2 }])

Medication.create([
  {
    name: 'Novorapid penfill',
    variety: 'insulin',
    delivery_method: 'injection'
  },
  {
    name: 'Lantus penfill',
    variety: 'insulin',
    delivery_method: 'injection'
  },
  {
    name: 'Metaformin',
    variety: 'Antidiabetic drug',
    delivery_method: 'Pill'

  },
  {
    name: 'Meglitinide',
    variety: 'Antidiabetic drug',
    delivery_method: 'Pill'
  }
  ])

BgTest.create({
  bg_result: 3.2
  })
