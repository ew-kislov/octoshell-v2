# Заметки о программировании в Octoshell

Здесь собраны некоторые заметки об устройстве Octhoshell, возможно, не полные.

## Как устроен Octoshell

Octoshell - приложение на Runy-on-Rails. Почти вся функциональность вынесена в модули (engines). В основном приложении находится модель User, позволяющая регистрироваться в Octoshell и выполнять минимальные действия. Ключевые модули - Core (содержит понятия "проект", "кластер" и т.п.) и Face (содержит основной шаблон страницы и интерфейс к главному меню).

## Оповещения (Notify)

Класс Notify определён в модуле Core. Он содержит текст, ссылку на объект (sourceable), опциональную ссылку на дополнительные данные (linkable), тип (type, целое число) и количество (count, целое число).

На данный момент обрабатываются только оповещения с типом '1' (JobStat). В Core::ApplicationController осуществляется явная их проверка и вывод сообщения, если для текущего пользователя (в качестве sourceable) есть хотя бы одно.
