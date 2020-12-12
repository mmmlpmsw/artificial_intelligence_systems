<h3 align=center>Системы искусственного интеллекта</a> </h3>

<h4 align=center> <a href="lab1">Лабораторная работа №1 : Prolog</a> </h4>

Генеалогическое древо на языке ProLog.

<h4 align=center> <a href="lab2">Лабораторная работа №2 : Алгоритмы поиска</a> </h4>

Этап 1. Неинформированный поиск. На этом этапе известна только
топология связей между городами. Выполнить:
1) поиск в ширину;
2) поиск глубину;
3) поиск с ограничением глубины;
4) поиск с итеративным углублением;
5) двунаправленный поиск.
Отобразить движение по дереву на его графе с указанием сложности
каждого вида поиска. Сделать выводы.

Этап 2. Информированный поиск. Воспользовавшись информацией о
протяженности связей от текущего узла, выполнить:
1) жадный поиск по первому наилучшему соответствию;
2) затем, использую информацию о расстоянии до цели по прямой от
каждого узла, выполнить поиск методом минимизации суммарной оценки
А*. 

<h4 align=center> <a href="lab3">Лабораторная работа №3 : Создание информационной
системы на базе семантической сети» (сделана в Protégé)</a> </h4>

Выбрать предметную область. 

1) Выбрать способ представления знаний в семантической сети –
реляционный граф или граф с центром в глаголе, а также язык
представления знаний, русский или иной. Возможно многоязычное
представление знаний.
2) Записать факты, составляющие предметную область в нотации
программы “Semantic”. Рекомендуемый объем базы знаний – не менее 50
фактов.
3) Снабдить базу знаний онтологиями, в т.ч. правилами (не менее 20),
позволяющими извлекать новые факты, а также словарями для
поддержки диалога на упрощенном естественном языке.
4) Провести тестирование базы знаний, т.е. убедиться в том, что все правила
корректно создают новые факты. 

<h4 align=center> <a href="lab4">Лабораторная работа №4 : Нейронная сеть</a> </h4>

Purpose of work: study of the hyperparameters of the neural network, understanding impact of different hyperparameters on accuracy.

There are 2 parts of work in files named Lab1-Part1 and Lab1-Part2 respectively. Both parts represent work with collections of training and test data. 
Part 1 represent recognition of basic math functions with illustrations of neural net vision of the functions for training.
Part 2 represent recognition of simple images for making following work.
Data usage represented at https://keras.io/datasets/ and depends on variant.

There are represented such hyperparameters as 
*	Layer count
*	Neurons count per layer (actually it’s not hyperparameter but structure parameter)
*	Learn rate
*	Regularization L1 and L2
*	Output layer activation type
*	Layer activation type 
*	Loss function type
*	Epoch count

1) By changing these hyperparameters try to reach max accuracy value(at least 0.95)  for Part2 model with fixed epoch count 20
2) Change 1st hyperparameter’s value from min to max with minimal step depends on your variant 
3) Show impact on result using graphs
4) Describe impact of each hyperparameter on accuracy.
5) Set hyperparameter value back to one which produced max accuracy
6) Repeat 2-5 steps for second hyperparameter

<h4 align=center> <a href="lab5">Лабораторная работа №5 : Нейронная сеть</a> </h4>

Цель: решить задачу многоклассовой классификации, используя в качестве тренировочного набора данных - набор данных MNIST, содержащий образы рукописных цифр.

1. Используйте метод главных компонент для набора данных MNIST (train dataset объема 60000). Определите, какое минимальное количество главных компонент необходимо использовать, чтобы доля объясненной дисперсии превышала 0.80+номер_в_списке%10. Построить график зависимости доли объясненной дисперсии от количества используемых ГК
2. Введите количество верно классифицированных объектов класса номер_в_списке%9 для тестовых данных
3. Введите вероятность отнесения 5 любых изображений из тестового набора к назначенному классу
4. Определите Accuracy, Precision, Recall or F1 для обученной модели
5. Сделайте вывод про обученную модель


