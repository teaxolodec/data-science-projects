# Описание проекта
Заявления, на основании которых в продуктовой системе был произведён анализ координат нахождения Передающих радиотехнических объектов (ПРТО), были предоставленны заказчиком. Оказалось, что данные документы не отражают действительной картины расположения таких объектов. На основании имеющихся данных появилась необходимость в определении количества и списка объектов с некорректными координатами.

Для удобства анализа были взяты тестовые данные, на которых и применяются аналитические методы, представленные в этом проекте.

## Описание данных
- `prto` — номер объекта в продуктовой системе
- `lat` — широта расположения объекта
- `lon` — долгота расположения объекта
- `add` — юридический адрес объекта, представленный в системе

## Навыки и инструменты
- python
- pandas
- matplotlib
- geopy
