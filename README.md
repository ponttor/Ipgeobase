## Ipgeobase

[![Actions Status](https://github.com/ponttor/Ipgeobase/workflows/Ruby/badge.svg)](https://github.com/ponttor/ipgeo/actions)

Гем, который возвращает метаданные об IP. Гем содержит метод `lookup('8.8.8.8')`, который принимает IP-адрес и возвращает объект метаданных.

В метаданных содержатся следующие поля:

* `city` - город
* `country` - страна
* `countryCode` - код страны
* `lat` - ширина
* `lon` - долгота

```ruby
ip_meta = Ipgeobase.lookup('8.8.8.8')
ip_meta.city # Ashburn
ip_meta.country # United States
ip_meta.countryCode # US
ip.lat # 39.03
ip.lon # -77.5
```
