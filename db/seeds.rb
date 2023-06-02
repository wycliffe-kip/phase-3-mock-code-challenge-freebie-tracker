puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
dev = Dev.first
company = Company.first

Freebie.create(item_name: "Podcast", value: rand(1..10), company_id: company.id, dev_id: dev.id)
Freebie.create(item_name: "Stickers", value: rand(1..10), company_id: company.id, dev_id: dev.id)
Freebie.create(item_name: "Mug", value: rand(1..10), company_id: company.id, dev_id: dev.id)
Freebie.create(item_name: "T-Shirt", value: rand(1..10), company_id: company.id, dev_id: dev.id)

puts "Seeding done!"

