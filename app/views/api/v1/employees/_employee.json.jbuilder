  json.id employee.id
  json.fname employee.first_name
  json.lname employee.last_name
  json.full_name employee.full_name
  json.email employee.email
  json.birthday employee.birthdate
  if employee.addresses.count > 0
    json.addresses employee.addresses do |address|
      json.address_1 address.address_1
      if address.address_2
        json.address_2 address.address_2
      end
      json.city address.city
      json.state address.state
      json.zip address.zip
    end
  end
