User.destroy_all

User.create([
  {first_name:'Steve', last_name:'Redgrave', email: 'Steveredgrave@famousdiabetics.com', password:'password', ideal_bg: 5.5 },
  {first_name:'Halle', last_name:'Berry', email: 'halleberry@famousdiabetics.com', password:'password', ideal_bg: 6.7 },
  {first_name:'Dorian', last_name:'Gregory', email: 'doriangregory@famousdiabetics.com', password:'password', ideal_bg: 7.2},
  {first_name: 'Bret', last_name: 'Michaels', email: 'bretmichaels@famousdiabetics.com', password:'password', ideal_bg: 8.2 }])

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
