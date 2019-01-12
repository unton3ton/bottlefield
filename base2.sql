-- sqlite3 base2.db < base2.sql -- создание БД
-- Аномалии и патологии роговицы и глаза человека

PRAGMA foreign_keys = ON;
PRAGMA encoding="UTF-8";

CREATE TABLE MutationType (
    MutationTypeName TEXT PRIMARY KEY
);

CREATE TABLE ThicknessChange (
    ThicknessChangeName TEXT PRIMARY KEY
);

CREATE TABLE NebulaType (
    NebulaTypeName TEXT PRIMARY KEY
);

CREATE TABLE RootType (
    RootTypeName TEXT PRIMARY KEY
);

CREATE TABLE MutationCornea (
    id INT PRIMARY KEY NOT NULL,
    name            TEXT NOT NULL,
    typeMutation    TEXT NOT NULL,
    thickness       TEXT,
    nebula          TEXT,
    root            TEXT,
    
    FOREIGN KEY(typeMutation) REFERENCES MutationType(MutationTypeName),
    FOREIGN KEY(thickness) REFERENCES ThicknessChange(ThicknessChangeName),
    FOREIGN KEY(nebula) REFERENCES NebulaType(NebulaTypeName),
    FOREIGN KEY(root) REFERENCES RootType(RootTypeName)
);

insert into MutationType values ('норма'), ('аномалия'), ('патология');

insert into ThicknessChange values ('увеличивается'), ('уменьшается'), ('не изменяется');

insert into NebulaType values ('нет'), ('без рубцов'), ('с рубцами');

insert into RootType values ('инфекция'), ('травма'), ('генетика'), ('вторичная'), ('не известна');

INSERT INTO MutationCornea VALUES
     (1, 'Поверхностный кератит', 'патология', 'не изменяется', 'без рубцов', 'инфекция'), 
	 (2, 'Глубокий кератит', 'патология', 'не изменяется', 'с рубцами', 'травма'),
     (3, 'Блефарит/Мейбомиит', 'патология', 'не изменяется', 'без рубцов', 'инфекция'),
     (4, 'Халязион', 'патология', 'не изменяется', 'нет', 'инфекция'),
     (5, 'Бактериальный конъюнктивит (негонококковый)', 'патология', 'не изменяется', 'без рубцов', 'инфекция'),
     (6, 'Гонококковый бактериальный конъюнктивит', 'патология', 'не изменяется', 'с рубцами', 'инфекция'),
     (7, 'Вирусный конъюнктивит', 'патология', 'не изменяется', 'без рубцов', 'инфекция'),
     (8, 'Хламидийный конъюнктивит', 'патология', 'не изменяется', 'без рубцов', 'инфекция'),
     (9, 'Вирусный конъюнктивит', 'патология', 'не изменяется', 'без рубцов', 'инфекция'),
     (10, 'Трахома', 'патология', 'не изменяется', 'с рубцами', 'инфекция'),
     (11, 'Контагиозный моллюск', 'патология', 'не изменяется', 'нет', 'инфекция'),
     (12, 'Деревянистый конъюнктивит', 'патология', 'увеличивается', 'с рубцами', 'генетика'),
     (13, 'Педикулез половой', 'патология', 'не изменяется', 'нет', 'инфекция'),
     (14, 'Окологландулярный синдром Парино', 'патология', 'увеличивается', 'с рубцами', 'инфекция'),
     (15, 'Офтальмия новорожденных', 'патология', 'не изменяется', 'с рубцами', 'инфекция'),
     (16, 'Аллергический конъюнктивит', 'патология', 'не изменяется', 'без рубцов', 'генетика'),
     (17, 'Атопический конъюнктивит', 'патология', 'не изменяется', 'без рубцов', 'генетика'),
     (18, 'Весенний конъюнктивит', 'патология', 'не изменяется', 'с рубцами', 'генетика'),
     (19, 'Кератоконъюнктивит', 'патология', 'увеличивается', 'с рубцами', 'травма'),
     (20, 'Синдром хлопающего века', 'аномалия', 'не изменяется', 'нет', 'генетика'),
     (21, 'Медикаментозный кератит', 'патология', 'не изменяется', 'нет', 'травма'),
     (22, 'Глазная розацеа', 'патология', 'не изменяется', 'нет', 'не известна'),
     (23, 'Пингвекула', 'патология', 'не изменяется', 'с рубцами', 'травма'),
     (24, 'Птеригиум', 'патология', 'уменьшается', 'с рубцами', 'травма'),
     (25, 'Псевдоптеригиум', 'патология', 'уменьшается', 'без рубцов', 'травма'),
     (26, 'Краевой кератит Фукса', 'патология', 'уменьшается', 'без рубцов', 'травма'),
     (27, 'Амилоидоз', 'патология', 'не изменяется', 'нет', 'не известна'),
     (28, 'Отложения кальция', 'патология', 'не изменяется', 'нет', 'не известна'),
     (29, 'Эпителиальный меланоз конъюнктивы', 'аномалия', 'не изменяется', 'нет', 'генетика'),
     (30, 'Окулодермальный меланоз (Невус Ота)', 'патология', 'не изменяется', 'нет', 'генетика'),
     (31, 'Невус', 'аномалия', 'не изменяется', 'нет', 'генетика'),
     (32, 'Первично приобретенный меланоз', 'патология', 'не изменяется', 'нет', 'не известна'),
     (33, 'Вторично приобретенный меланоз', 'патология', 'не изменяется', 'нет', 'генетика'),
     (34, 'Пиогенная гранулема', 'патология', 'не изменяется', 'нет', 'травма'),
     (35, 'Риноспоридиоз', 'патология', 'не изменяется', 'нет', 'инфекция'),
     (36, 'Эпибульбарный дермоид', 'патология', 'увеличивается', 'с рубцами', 'генетика'),
     (37, 'Липодермоид', 'патология', 'не изменяется', 'без рубцов', 'не известна'),
     (38, 'Наследственный доброкачественный интраэпителиальный дискератоз', 'патология', 'не изменяется', 'без рубцов', 'генетика'),
     (39, 'Сквамозная папиллома', 'патология', 'не изменяется', 'нет', 'инфекция'),
     (40, 'Конъюнктивальная интраэпителиальная неоплазия', 'патология', 'увеличивается', 'с рубцами', 'вторичная'),
     (41, 'Сквамозно-клеточная карцинома', 'патология', 'увеличивается', 'с рубцами', 'вторичная'),
     (42, 'Мукоэпидермальная карцинома', 'патология', 'увеличивается', 'с рубцами', 'вторичная'),
     (43, 'Карцинома сальных желез', 'патология', 'не изменяется', 'без рубцов', 'вторичная'),
     (44, 'Реактивная лимфоидная гиперплазия', 'патология', 'не изменяется', 'без рубцов', 'вторичная'),
     (45, 'Неходжкинская лимфома', 'патология', 'не изменяется', 'без рубцов', 'вторичная'),
     (46, 'Первичная коннъюнктивальная киста', 'аномалия', 'не изменяется', 'нет', 'не известна'),
     (47, 'Ятрогенная киста', 'патология', 'не изменяется', 'нет', 'травма'),
     (48, 'Телеангиэктазии', 'патология', 'не изменяется', 'нет', 'вторичная'),
     (49, 'Гематологические нарушения', 'патология', 'не изменяется', 'нет', 'вторичная'), 
     (50, 'Геморрагическая лимфангиэктазия', 'патология', 'не изменяется', 'нет', 'травма'),   
     (51, 'Капиллярная гемангиома', 'патология', 'не изменяется', 'нет', 'не известна'), 
     (52, 'Лимфангиома', 'патология', 'не изменяется', 'нет', 'не известна'), 
     (53, 'Саркома Капоши', 'патология', 'не изменяется', 'нет', 'вторичная'),
     (54, 'Энцефалотригеминальный ангиоматоз', 'патология', 'не изменяется', 'нет', 'вторичная'),
     (55, 'Микрокорнеа', 'аномалия', 'уменьшается', 'нет', 'генетика'),
     (56, 'Мегалокорнеа', 'аномалия', 'увеличивается', 'нет', 'генетика'),
     (57, 'Нанофтальм', 'аномалия', 'не изменяется', 'нет', 'генетика'),
     (58, 'Микрофтальм', 'аномалия', 'увеличивается', 'нет', 'генетика'),
     (59, 'Буфтальм', 'аномалия', 'уменьшается', 'без рубцов', 'генетика'),
     (60, 'Врожденная передняя стафилома/кератоэктазия', 'аномалия', 'увеличивается', 'с рубцами', 'инфекция'),
     (61, 'Склерокорнеа', 'аномалия', 'увеличивается', 'без рубцов', 'не известна'),
     (62, 'Плоская роговица', 'аномалия', 'увеличивается', 'без рубцов', 'не известна'),
     (63, 'Задний эмбриотоксон', 'аномалия', 'не изменяется', 'без рубцов', 'генетика'),
     (64, 'Аномалия Аксенфельда', 'аномалия', 'не изменяется', 'без рубцов', 'генетика'),
     (65, 'Аномалия Ригера', 'аномалия', 'не изменяется', 'без рубцов', 'генетика'),
     (66, 'Синдром Ригера', 'аномалия', 'не изменяется', 'без рубцов', 'генетика'),
     (67, 'Аномалия Питера', 'аномалия', 'не изменяется', 'без рубцов', 'генетика'),
     (68, 'Локализованный задний кератоконус', 'аномалия', 'увеличивается', 'без рубцов', 'генетика'),
     (69, 'Аниридия', 'аномалия', 'не изменяется', 'без рубцов', 'генетика'),
     (70, 'Кератоконус', 'патология', 'увеличивается', 'нет', 'генетика'),
     (71, 'Пеллюцидная маргинальная дегенерация', 'патология', 'уменьшается', 'без рубцов', 'генетика'),
     (72, 'Кератоглобус', 'патология', 'уменьшается', 'нет', 'не известна'),
     (73, 'Микроцистная дистрофия Когана', 'патология', 'уменьшается', 'без рубцов', 'вторичная'),
     (74, 'Дистрофия Меезмана', 'патология', 'уменьшается', 'без рубцов', 'генетика'),
     (75, 'Гранулярная дистрофия', 'патология', 'не изменяется', 'без рубцов', 'генетика'),
     (76, 'Решетчатая дистрофия', 'патология', 'не изменяется', 'без рубцов', 'генетика'),
     (77, 'Пятнистая дистрофия', 'патология', 'уменьшается', 'без рубцов', 'генетика'),
     (78, 'Дистрофия Авелино', 'патология', 'не изменяется', 'без рубцов', 'генетика'),
     (79, 'Кристаллическая дистрофия Шнайдера', 'патология', 'не изменяется', 'без рубцов', 'вторичная'),
     (80, 'Задняя полиморфная дистрофия', 'патология', 'не изменяется', 'без рубцов', 'генетика'),
     (81, 'Аркус роговицы', 'патология', 'уменьшается', 'без рубцов', 'вторичная'),
     (82, 'Белый лимбальный обруч Фогта', 'аномалия', 'не изменяется', 'нет', 'вторичная'),
     (83, 'Шагрень', 'патология', 'не изменяется', 'без рубцов', 'не известна'),
     (84, 'Полиморфная амилоидная дегенерация', 'патология', 'не изменяется', 'без рубцов', 'вторичная'),
     (85, 'Лентовидная кератопатия', 'патология', 'не изменяется', 'без рубцов', 'вторичная'),
     (86, 'Узелковая дегенерация Зальцмана', 'патология', 'не изменяется', 'с рубцами', 'вторичная'),
     (87, 'Сфероидная дегенерация', 'патология', 'не изменяется', 'без рубцов', 'травма'),
     (88, 'Липидная дегенерация', 'патология', 'не изменяется', 'без рубцов', 'инфекция'),
     (89, 'Кристаллическая кератопатия', 'патология', 'не изменяется', 'с рубцами', 'инфекция'),
     (90, 'Сидероз', 'патология', 'не изменяется', 'с рубцами', 'травма'),
     (91, 'Субэпителиальные инфильтраты', 'патология', 'не изменяется', 'без рубцов', 'инфекция'),
     (92, 'Химический/термический ожог', 'патология', 'не изменяется', 'с рубцами', 'травма'),
     (93, 'Инородные тела', 'патология', 'не изменяется', 'с рубцами', 'травма'),
     (94, 'Субконъюнктивальное кровоизлияние', 'патология', 'не изменяется', 'без рубцов', 'травма'),
     (95, 'Корнеосклеральный разрыв', 'патология', 'уменьшается', 'с рубцами', 'травма'),
     (96, 'Гифема', 'патология', 'не изменяется', 'с рубцами', 'травма')
     ;