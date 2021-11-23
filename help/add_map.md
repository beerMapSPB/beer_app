## Инструкция по добавлению нового стиля карты

1. Создать новый стиль https://studio.mapbox.com/

2. Нажать кнопку поделиться 

![image](https://user-images.githubusercontent.com/15382949/142777321-67167fbb-576e-4a31-9353-cfca4c8bfd01.png)

3. Получить нужную ссылку (скопировать текст из выделенной рамки)

![image](https://user-images.githubusercontent.com/15382949/142777346-b57e5189-eb76-4962-8854-8a77f2658d49.png)

4. Обновить секрет `MAPBOX_ACCESS_TOKEN`

Значение брать из параметра `access_token`

5. Обновить секрет `MAPBOX_STYLE_PART`

Значение брать после поля style, до поля `tiles`. Необходимо сделать экранирование

```
Пример строки: https://api.mapbox.com/styles/v1/slowbroshka/ckasdasdsadasd9y/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjasdasdasdsadasdsadasdasdasdpJR3w
MAPBOX_ACCESS_TOKEN = pk.eyJ1IjasdasdasdsadasdsadasdasdasdpJR3w
MAPBOX_STYLE_PART = slowbroshka\/ckasdasdsadasd9y
                               ^
                               | Экранирование
```
