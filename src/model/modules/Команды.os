#Использовать telegrambot

Функция ГлавноеМеню() Экспорт
	
	КомандаКлавиатуры = ТелеграмАПИ.НоваяКнопка("Клавиатуры");
	КомандаИнлайн     = ТелеграмАПИ.НоваяКнопка("Инлайн");
	
	ПервыйРяд = ТелеграмАПИ.ПолучитьРядКнопок(КомандаКлавиатуры, КомандаИнлайн);
	
	КомандаГеолокация 	 = ТелеграмАПИ.НоваяКнопкаОтправитьМестоположение("Геолокация");
	КомандаКонтакты = ТелеграмАПИ.НоваяКнопкаОтправитьКонтакт("Контакты");
	
	ВторойРяд = ТелеграмАПИ.ПолучитьРядКнопок(КомандаГеолокация, КомандаКонтакты);
	
	МассивРядов = ТелеграмАПИ.ПолучитьМассивРядовДляКлавиатуры(ПервыйРяд, ВторойРяд);
	
	Возврат ТелеграмАПИ.ПолучитьКлавиатуру(МассивРядов);
	
КонецФункции	

Функция МенюКлавиатуры() Экспорт

	Команда1 = ТелеграмАПИ.НоваяКнопка("Три-одна-одна кнопки в ряд");
	Команда2 = ТелеграмАПИ.НоваяКнопка("Пять кнопок по вертикали");
	ПервыйРяд = ТелеграмАПИ.ПолучитьРядКнопок(Команда1, Команда2);

	КомандаГлавноеМеню = ТелеграмАПИ.НоваяКнопка("Главное меню");
	ВторойРяд = ТелеграмАПИ.ПолучитьРядКнопок(КомандаГлавноеМеню);

	МассивРядов = ТелеграмАПИ.ПолучитьМассивРядовДляКлавиатуры(ПервыйРяд, ВторойРяд);
	
	Возврат ТелеграмАПИ.ПолучитьКлавиатуру(МассивРядов);

КонецФункции

Функция МенюТриОдинОдин() Экспорт

	Команда = ТелеграмАПИ.НоваяКнопка("Кнопка");
	ПервыйРяд = ТелеграмАПИ.ПолучитьРядКнопок(Команда, Команда, Команда);

	КомандаКлавиатуры = ТелеграмАПИ.НоваяКнопка("Клавиатуры");
	ВторойРяд = ТелеграмАПИ.ПолучитьРядКнопок(КомандаКлавиатуры);

	КомандаГлавноеМеню = ТелеграмАПИ.НоваяКнопка("Главное меню");
	ТретийРяд = ТелеграмАПИ.ПолучитьРядКнопок(КомандаГлавноеМеню);

	МассивРядов = ТелеграмАПИ.ПолучитьМассивРядовДляКлавиатуры(ПервыйРяд, ВторойРяд, ТретийРяд);
	
	Возврат ТелеграмАПИ.ПолучитьКлавиатуру(МассивРядов);

КонецФункции

Функция МенюПятьКнопокПоВертикали() Экспорт

	Команда = ТелеграмАПИ.НоваяКнопка("Кнопка");
	ПервыйРяд = ТелеграмАПИ.ПолучитьРядКнопок(Команда);
	ВторойРяд = ТелеграмАПИ.ПолучитьРядКнопок(Команда);
	ТретийРяд = ТелеграмАПИ.ПолучитьРядКнопок(Команда);

	КомандаКлавиатуры = ТелеграмАПИ.НоваяКнопка("Клавиатуры");
	ЧетвертыйРяд = ТелеграмАПИ.ПолучитьРядКнопок(КомандаКлавиатуры);

	КомандаГлавноеМеню = ТелеграмАПИ.НоваяКнопка("Главное меню");
	ПятыйРяд = ТелеграмАПИ.ПолучитьРядКнопок(КомандаГлавноеМеню);

	МассивРядов = ТелеграмАПИ.ПолучитьМассивРядовДляКлавиатуры(ПервыйРяд, ВторойРяд, ТретийРяд, ЧетвертыйРяд, ПятыйРяд);
	
	Возврат ТелеграмАПИ.ПолучитьКлавиатуру(МассивРядов);

КонецФункции

Функция МенюИнлайн() Экспорт

	КомандаГлавноеМеню = ТелеграмАПИ.НоваяКнопка("Главное меню");
	Ряд = ТелеграмАПИ.ПолучитьРядКнопок(КомандаГлавноеМеню);

	МассивРядов = ТелеграмАПИ.ПолучитьМассивРядовДляКлавиатуры(Ряд);
	
	Возврат ТелеграмАПИ.ПолучитьКлавиатуру(МассивРядов);

КонецФункции	

Функция ИнлайнКнопки() Экспорт
	
	МассивРядов = Новый Массив;
	
	Для Каждого СтрокаМассива из ПолучитьМассивИнлайнКнопок() Цикл
		
		КомандаКаталога = ТелеграмАПИ.НоваяКоллбекКнопка(СтрокаМассива.ТекстКнопки, СтрокаМассива.Коллбек);
		РядКнопок = ТелеграмАПИ.ПолучитьРядКнопок(КомандаКаталога);
		МассивРядов.Добавить(РядКнопок);
		
	КонецЦикла;

	КомандаСсылка = ТелеграмАПИ.НоваяУРЛКнопка("Ссылка", "https://ya.ru");
	РядКнопок = ТелеграмАПИ.ПолучитьРядКнопок(КомандаСсылка);
	МассивРядов.Добавить(РядКнопок);
	
	Возврат ТелеграмАПИ.ПолучитьИнлайнКлавиатуру(МассивРядов);
	
КонецФункции

Функция ПолучитьМассивИнлайнКнопок()

	Массив = Новый Массив;

	ПоляСтруктуры = "ТекстКнопки, Коллбек";

	Структура = Новый Структура(ПоляСтруктуры, "Картинка", "Картинка=1");
	Массив.Добавить(Структура);

	Структура = Новый Структура(ПоляСтруктуры, "Еще картинка", "Картинка=2");
	Массив.Добавить(Структура);

	Структура = Новый Структура(ПоляСтруктуры, "Оповещение", "Оповещение");
	Массив.Добавить(Структура);

	Возврат Массив;

КонецФункции

Функция ИнлайнКартинка() Экспорт
	
	МассивРядов = Новый Массив;
		
	КомандаВозврат = ТелеграмАПИ.НоваяКоллбекКнопка("Вернуться", "Инлайн");
	РядКнопок = ТелеграмАПИ.ПолучитьРядКнопок(КомандаВозврат);
	МассивРядов.Добавить(РядКнопок);
	
	Возврат ТелеграмАПИ.ПолучитьИнлайнКлавиатуру(МассивРядов);
	
КонецФункции