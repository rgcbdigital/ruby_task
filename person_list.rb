class Records
  attr_accessor :national_id, :name, :age

  def initialize(national_id, name, age)
    @national_id = national_id
    @name = name
    @age = age
  end

  @@records = []
  def save
    @@records.prepend(self)
  end

  def self.all
    @@records
  end
end

  people = [
    { national_id: 1, name: "Edward", age: 18 },
    { national_id: 2, name: "Mark", age: 19 },
    { national_id: 3, name: "Clair", age: 20 },
    { national_id: 4, name: "Czed", age: 18 },
    { national_id: 5, name: "Rose", age: 32 },
    { national_id: 6, name: "Cheysser", age: 32 },
    { national_id: 7, name: "Lance", age: 11 },
    { national_id: 8, name: "Usagi", age: 18 },
    { national_id: 9, name: "Fan", age: 18 },
    { national_id: 10, name: "Liu", age: 18 },
    { national_id: 11, name: "Long", age: 18 },
    { national_id: 12, name: "Kang", age: 30 },
    { national_id: 13, name: "Gina", age: 75 },
    { national_id: 14, name: "Karen", age: 60 },
    { national_id: 15, name: "Claudine", age: 80 },
    { national_id: 16, name: "Jeff", age: 90 },
    { national_id: 17, name: "Zain", age: 18 },
    { national_id: 18, name: "Loi", age: 15 },
    { national_id: 19, name: "Kath", age: 18 },
    { national_id: 20, name: "Sid", age: 21 }
  ]

  people.each do |person|
    new_person = Records.new(person[:national_id], person[:name], person[:age])
    new_person.save
  end
records = Records
p records.all

