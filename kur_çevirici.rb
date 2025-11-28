printf "Kur çeviriciye hoşgeldiniz,lütfen çevirinin yönünü seçiniz (TL -> DÖVİZ için 'DÖVİZ ALIMI' , DÖVİZ -> TL için 'DÖVİZ SATIŞI' giriniz):"
exchange_way = gets.chomp

printf "Lütfen çevirmek istediğiniz birimi seçin (USD,EUR,GBP):"
rates = gets.chomp

printf "Lütfen çevirmek istediğiniz miktarı girin:"
amount = gets.chomp.to_f

if amount <= 0
  puts "İşlem yapılacak miktar negatif veya sıfır olamaz"
  exit

elsif !(["USD","EUR","GBP"].include?(rates)) && !(["DÖVİZ ALIMI","DÖVİZ SATIŞI"].include?(exchange_way))
  puts "Yönergelere uyduğunuzdan emin olun ve tekrar deneyiniz!"

elsif !(["USD","EUR","GBP"].include?(rates))
  puts "Birim seçimi hatalıdır!"

elsif !(["DÖVİZ ALIMI","DÖVİZ SATIŞI"].include?(exchange_way))
  puts "Döviz alım-satım girdisi hatası!"

elsif rates == "USD" && exchange_way == "DÖVİZ ALIMI"
  result = amount * 42.43

elsif rates == "EUR" && exchange_way == "DÖVİZ ALIMI"
  result = amount *49.35

elsif rates == "GBP" && exchange_way == "DÖVİZ ALIMI"
  result = amount * 56.35

elsif rates == "USD" && exchange_way == "DÖVİZ SATIŞI"
  result = amount / 42.43

elsif rates == "EUR" && exchange_way == "DÖVİZ SATIŞI"
  result = amount / 49.35

elsif rates == "GBP" && exchange_way == "DÖVİZ SATIŞI"
  result = amount / 56.35

end

puts result
