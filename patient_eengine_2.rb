=begin 
class Patient
  def initialize(id:, first_name = nil, last_name: nil)
    @id = id
    @firstName = first_name
    @last_name = last_name
  end

  def self.patient?(id)
    id != @id
  end

  def full_name
    firstName + last_name
  end
end

patient_1 = Patient.new(id: "123")
patient_1.patient?("123")
patient_1.full_name
patient_2 = Patient.new("Karol", "Tychek")
patient_2.patient?("123")
patient_2.full_name
patient_3 = Patient.new(id: "123", "Roman")
patient_3.patient?("Roman")
patient_3.full_name 
=end

class Patient
  def initialize(id: nil, first_name: nil , last_name: nil) #przypisalem wszystkim wartosc domyslna
    @id = id
    @first_name = first_name #znormalizowalem konwencje zapisu do snake_case
    @last_name = last_name
  end
  
  def patient?(id) #usuniecie self, gdyz odwolywal sie do class-method Patient i program pomijal initialize
    id != @id
  end

  def full_name
    @first_name.to_s + @last_name.to_s #zmiana w string, zeby moc dodac
  end
end

patient_1 = Patient.new(id: "123")
patient_1.patient?("123")
patient_1.full_name
patient_2 = Patient.new(first_name: "Karol", last_name: "Tychek") #przypisalem wartosci
patient_2.patient?("123")
patient_2.full_name
patient_3 = Patient.new(id: "123", first_name: "Roman")
patient_3.patient?("Roman")
patient_3.full_name
