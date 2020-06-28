module Example
  def self.percent(total, value)
  # Napisz metodę która dla dowolnych dwóch liczb zwróci procentową wartość jeden z liczb względem drugiej
    return (value.to_f/total*100).round(0).to_s + "%"
  end
  
  def self.reverse_long_words(string)
  # Uzupełnij metodę reverse_long_words(string).
  # Metoda ta odwraca każdy wyraz o znakach 5 lub więcej i zwraca całość do użytkownika.
  # Na przykład
  # INPUT : "Ala ma kotozaura wiec jest okejson"
  # OUTPUT : "Ala ma aruazotok wiec jest nosjeko"
    reversed = []
    string.split(" ").each do |word| 
      word.length >= 5 ? word = word.reverse : ""
      reversed << word
    end
    return reversed.join(" ") 
  end

  def split_number(number)
  # Uzupełnij metodę split_number(number). Metoda ta ma podzielić liczbę  na jedności, dziesiątki, setki itd... 
  #i wyświetlić je w postaci dodawania.
  # NP 12 => 10 + 2 ; 125 => 100 + 20 + 5. 1056 => 1000 + 50 + 6.
  # Uwaga. Należy zwrócić uwagę by nie wyświetlać w dodawaniu + 0, gdy  jedna z części jest równa zeru.
    num = number.digits.length
    for i in number.digits.reverse do
      if i!=0
      print i.to_s + ("0"*(num-1)).to_s
        if num>1
          print " + "
        end
      end
      num -= 1
    end
  end

  def alphabet_position(text)
  # Napisz metode która dla podanego tekstu zwróci pozycje kazdej litery  w alfabecie
  # Jeśli coś nie jest literą zignoruj to i pomiń
  # Przykład
  # alphabet_position("To jest test metody")
  # "20 15 10 5 19 20 20 5 19 20 13 5 20 15 4 25"
  # alphabet_position("123--")
  # ""
  arr = []
    text.downcase.gsub(/[^a-zA-Z]/, "").bytes.map do |letter|
       arr << letter - 96 
    end
    print arr.join(" ")
    
  end

  
end

include Example
Example.split_number(1056)