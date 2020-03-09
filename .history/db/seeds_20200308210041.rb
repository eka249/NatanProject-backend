# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

50.times do
    Employee.create(
        LastName: Faker::Name.first_name,
        FirstName: Faker::Name.last_name,
        City: Faker::Address.city
    )

100.times do
    Product.create(
        ProductName: Faker::Food.ingredient,
        SupplierID: Faker::Alphanumeric(number:8, min_alpha:6),
        CategoryID: Faker::Number.number(leading_zero_number, digits: 3)


    )

30.times do
    Supplier.create(
        CompanyName: Faker::Company.name,
        ContactName: Faker::Name,
        City: Faker::Location.city,
        Country: Faker::Location.country
    )

    30.times do
        Customer.create(
            CustomerID: Faker::Alphanumeric(number:8, min_alpha:6),
            CompanyName: Faker::Company.name,
            City: Faker::Location.city,
            Country: Faker::Location.country
        )