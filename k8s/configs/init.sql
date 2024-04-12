CREATE SCHEMA IF NOT EXISTS `krampoline` DEFAULT CHARACTER SET utf8mb4;

GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
GRANT ALL ON krampoline.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

USE `krampoline`;

DROP TABLE IF EXISTS `sample_data`;
CREATE TABLE `sample_data` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `detail` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO sample_data (`id`,`detail`) VALUES ('1', 'Hello DKOS!');

drop table if exists `tour`
create table tour (
    `id`              int auto_increment primary key,
    `address`         varchar(255) null,
    `content`         text         null,
    `latitude`        double       null,
    `longitude`       double       null,
    `name`            varchar(255) null,
    `outline`         varchar(255) null,
    `speak_file_path` varchar(255) null,
    `script`          text         null
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

drop table if exists `near_tour`
create table `near_tour`
(
    `id`       int auto_increment
        primary key,
    `address`  varchar(255) null,
    `content`  varchar(255) null,
    `dis`      int          null,
    `img_path` varchar(255) null,
    `name`     varchar(255) null,
    `tour_id`  int          null,
    constraint FK2ipodpxkyb7byb051j8iakndh
        foreign key (tour_id) references tour (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

drop table if exists `image`
create table `image`
(
    `id`       int auto_increment
        primary key,
    `content`  text         null,
    `img_path` varchar(255) null,
    `tour_id`  int          null,
    constraint FKmbgj1irf3sy7672g02dedrea
        foreign key (tour_id) references tour (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (1, '제주시 봉개동 237-2번지, 명림로430', '제주 4·3 평화공원은 희생자들의 명예를 회복하고 제주도를 평화와 인권의 섬으로 만들기 위해 2008년 조성되었습니다. 평화공원에는 제주 4·3 평화기념관, 위령제단, 위령탑, 각명비, 행방불명인표석, 유해봉안관 등과 조형물들이 있으며, 매년 4월 3일에는 4·3 추념식이 열립니다.
', 33.4516599, 126.618983, '제주 4·3 평화공원', '제주도의 평화와 인권을 상징하며 4·3 사건 희생자들의 명예를 회복하기 위해 조성된 기념 공간입니다.', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/voice/43%ED%8F%89%ED%99%94%EA%B3%B5%EC%9B%90.mp3', '제주 4.3 평화공원이라... 그곳은 제주도민들의 아픔과 슬픔이 새겨진 곳이랍니다. 그곳은 제주 4·3사건의 희생자들을 기리고, 그들의 고통을 기억하기 위해 조성된 곳이랍니다.
1948년 4월 3일, 평화로웠던 제주도는 순식간에 전쟁터로 바뀌었어요. 그곳에서는 무고한 도민들이 불법적으로 살해당했어요. 그것은 마치 사냥같았지요, 사람들 도망가면 그을 쫓아가 총을 쏘았어요.
제주 4.3 평화공원은 그런 참혹한 역사를 기억하고, 더 이상 그런 일이 일어나지 않기를 바라는 마음에서 만들어진 곳이에요. 그곳에는 제주 4·3사건에 대한 다양한 자료와 함께 희생자들의 이름이 새겨진 기념비가 있습니다.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (2, '제주시 삼도2동 관덕로 19', '관덕정은 1448년에 군사훈련을 위해 세워진 곳으로, 후에는 공사 의논과 죄인 처벌 등 다양한 목적으로 사용되었습니다. 1947년 3·1절 기념대회 때, 경찰이 시위중인 군중에게 발포하면서 6명이 희생되고 8명이 부상한 3·1 발포사건이 이곳에서 발생했습니다. 이 사건은 이후 제주 4·3 사건으로 이어지는 민관총파업의 발단이 되었습니다. 해방 직후에는 관덕정에서 건국준비위원회인 건준청년동맹이 활동했으며, 이후 인민위원회사무실로 이동했습니다. 현재는 당시 건물들이 대부분 사라져 역사의 흔적을 찾기 어렵습니다. ', 33.513345, 126.521532, '관덕정', '1448년에 세워져 다양한 목적으로 사용되었으며, 1947년 3·1 발포사건 발생지로 제주 4·3 사건의 발단이 되었고, 현재는 역사적 흔적이 대부분 사라진 곳입니다.', null, '관덕정 그 이름만 들어도 가슴이 먹먹해집니다. 그 곳은 제주도 서귀포시에 위치한 곳으로, 아름다운 돌담과 고요한 연못, 그리고 우뚝 솟은 돌탑이 있는 곳이었습니다. 그런데 그 아름다운 풍경 뒤에는 비극이 숨어 있었죠.
1948년 4월 3일, 그날이 저희 제주도민들에게는 악몽과 같은 날이었습니다. 그날 아침, 저희 동네 사람들이 모여들었던 관덕정에서는 끔찍한 일이 벌어졌습니다. 그 곳에서는 수많은 도민들이 무고한 희생양이 되었고, 저희 가족들도 그 중 한 명이었습니다.
제 아버지는 그날 아침, 아무런 예고 없이 집을 나섰습니다. 그는 다시 돌아오지 못했어요. 그 후로 몇 달 동안 우리 집은 슬픔에 잠겼습니다. 제 아버지의 죽음은 우리 가족에게 큰 상처를 남겼고, 그 상처는 아직도 아물지 않았습니다.
그 때의 관덕정은 죽음의 공간이었습니다. 그곳에서는 무고한 사람들이 죽음을 당했고, 생존자들은 살아남은 것에 대한 죄책감에 시달렸습니다. 하지만 저희 제주도민들은 절망에 빠지지 않았습니다. 그 아픔을 견디며, 생존을 위해 힘을 모았습니다.
그 당시의 슬픔과 비통함을 말로 표현하기가 어렵습니다. 그저 가슴이 아프고, 눈물이 나오고, 속이 철렁철렁하던 기억만 남아있습니다. 그런데도 저희는 절대로 그 시절을 잊지 않습니다. 그것이 저희의 역사이고, 저희의 상처이기 때문입니다.
제 이야기를 들어주셔서 감사합니다. 그 힘든 시절을 잊지 않고, 저희의 아픔을 함께 나눠주셔서 감사합니다. 이제 저는 이 아픔을 간직하며, 저희의 역사를 후세에 전달하려 합니다.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (3, '제주특별자치도 서귀포시 안덕면 사계리', '세화리 다랑쉬굴은 제주 4.3 사건 당시 11명의 주민이 피신하여 생활하다가 군경토벌대에 의해 발견되어 학살당한 장소입니다. 굴 입구에 불을 피워 연기를 불어넣어 주민들을 고통스럽게 죽였습니다. 1992년에 이 굴에서 11구의 유해가 발견되어 제주 4.3 사건의 진상을 규명하는 데 중요한 계기가 되었습니다. 유해는 발견된 지 45일 후에 화장되어 바다에 뿌려졌고, 이후 다랑쉬 굴은 유물들을 내부에 남겨두고 입구를 콘크리트로 막아 봉합되었습니다.', 33.4675541, 126.8290305, '다랑쉬굴', '제주 4.3 사건 당시 11명의 주민이 피신해 생활하다가 군경에 의해 발견되어 학살된 장소로, 1992년 유해 발견을 통해 사건의 진상 규명에 중요한 역할을 한 곳입니다.', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/voice/1.mp3', '제주 4·3사건, 그건 우리 제주도의 흐린 역사 속에 남아있는 가장 큰 상처입니다. 그 상처의 중심에 있던 곳이 바로 \'다랑쉬굴\'이었습니다.다랑쉬굴, 그곳은 원래는 우리 제주 사람들이 농사를 짓던 평범한 동굴이었습니다. 그러나 그때 그것은 우리의 숨통이 되었죠. 사람들은 그곳을 피난처로 삼았습니다. 그 당시의 공포감과 두려움은 지금 생각해도 가슴이 웅크립니다.그날 밤, 별이 쏟아지는 밤하늘 아래 우리는 다랑쉬굴로 몰려갔습니다. 그곳에는 이미 우리 동네 사람들이 차곡차곡 모여 있었습니다. 모두가 두려움에 떨며, 숨을 죽이며 그 소리를 들었습니다. 총소리, 비명, 그리고 울음소리.아이고, 그날의 기억은 여전히 저의 가슴을 가르네요. 그 이후, 제주도는 우리의 눈물로 물들었습니다. 그런데도 우리 제주 사람들은 절망에 빠지지 않고 다시 일어났습니다. 우리는 우리의 아픔을 잊지 않고 그것을 힘으로 바꿔 살아가고 있습니다.그래서 이렇게 우리의 아픔을 이야기하려 합니다. 그 아픔이 오늘날의 우리를 만들었으니까요. 그래서 우리는 그 시기를 잊지 않고 기억하며, 더 나은 미래를 향해 나아가고 있습니다.제주 4·3사건은 우리의 역사 중 가장 어두운 시기였습니다. 그런데도 그 시기를 잊지 않고 기억하며, 우리는 더 나은 미래를 향해 나아가고 있습니다. 제주도의 아픔과 슬픔을 이해하시려면, 다랑쉬굴을 방문하셔서 그 시기의 기억을 직접 체험해 보시는 것을 권합니다.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (4, '제주시 화북 1동 4438', '1949년 1월 5일과 6일, 곤을동은 군인들에 의해 폐동이 되었습니다. 군인들이 마을을 포위하고 들어와 주민들을 수색하며, 젊은 사람들 10여 명을 고른 후 바닷가로 데려가 살해하였습니다. 이어서 마을의 주택들을 불태웠고, 이 과정은 다음 날에도 계속되었습니다. 젊은 주민들 12명을 추가로 모아 살해하며, 남아있던 집들도 모두 불태웠습니다. 이로써 67호가 넘는 집들이 한꺼번에 사라져 곤을동의 흔적은 사라졌습니다. 살아남은 주민들은 주변 마을로 옮겨져야 했습니다. 현재는 곤을동의 흔적이 별도봉 동편 기슭에 잘 남아있습니다.', 33.5215651, 126.5575536, '곤을동 옛터', '1949년 1월, 곤을동은 군인들에 의해 마을이 포위되어 주민들이 학살되고 집들이 불타 없어져, 살아남은 주민들이 이주해야 했으며 현재는 그 흔적이 별도봉 동편 기슭에 남아 있습니다.', null, '그 시절, 제주도 곤을동 이야기를 할게요. 아이고, 그때가 엊그제 같은디, 벌써 많은 해가 지났네. 1949년 1월 5일하고 6일, 그날들을 잊을 수가 없어요. 우리 마을 곤을동은 그날 군인들에 의해 온통 풍비박산이 났지 뭐예요.

군인들이 우르르 들이닥쳐서 마을을 에워싸고, 아주 집집마다 샅샅이 뒤졌어요. 그렇게 젊은이들 열 명 가까이 골라서 바닷가로 끌고 가더니 그 자리에서 목숨을 끊어버렸지 뭐예요. 그뿐만 아니라, 우리 집집마다 남아있던 건물들까지 죄다 불태워버리고 말았어요. 그리고 다음 날에도 이어져서, 또 젊은이들 열두 명을 더 데려가서 죽이고, 마지막 남은 집들도 전부 태워버렸지.

그날 이후로, 우리 곤을동은 마치 세상 끝난 것 같았어요. 67호가 넘는 집들이 한 순간에 사라지고, 살아남은 사람들은 어쩔 수 없이 주변 마을로 흩어져 살게 되었어요. 지금은 그곳에 곤을동의 흔적이 별도봉 동편 기슭에 남아있지. 그때를 떠올리면 지금도 가슴이 아려와요.

사람들이 이 이야기를 잊지 않았으면 해요. 그 슬픔과 비통함을 기억하고, 다시는 이런 일이 일어나지 않도록 해야지요. 우리 마을 사람들, 그리고 무고하게 목숨 잃은 이들을 위해서 말이죠.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (5, '제주시 조천읍 북촌3길 3', '제주 북촌리는 조천읍 동쪽 끝에 위치한 해변 마을로, 일제 강점기에 항일 운동을 한 인사들이 많았고, 해방 후에는 자치 조직이 활발했습니다. 하지만 사건들로 인해 군경의 주목을 받게 되었고, 1949년 1월 17일에는 북촌리에서 가장 큰 인명 피해를 낳은 4·3 사건 중 하나인 북촌리 학살이 발생해 500여 명의 주민이 희생되었으며, 거의 모든 집이 불타고 말았습니다. \'너븐숭이\'라 불리는 이곳에는 그들을 기리는 애기무덤이 20여기 있어, 그 당시의 참혹한 사건을 상기시켜 줍니다.', 33.54600879516443, 126.68875694274902, '너븐숭이 기념관', '조천읍에 위치한 해변 마을로, 4·3 사건 중 하나인 북촌리 학살로 500여 명의 주민이 희생되고 대부분의 집이 불타며, 그 희생을 기리는 애기무덤이 \'너븐숭이\'에 남아 있습니다.', null, '북촌리 이야기를 하자면 마음이 더욱 아려와요. 제주도 북촌리는 조천읍 동쪽 끝에 자리 잡은 해변 마을이지. 예전에 그곳은 항일 운동을 한 인사들이 많아서 일제 강점기 때부터 많은 일이 있었어요. 해방 후에는 자치 조직도 활발하게 움직였지.

그런데, 그래서인지 군경의 눈초리가 심해졌어요. 1949년 1월 17일, 그날이 제주 4·3 사건 중에서도 북촌리에 가장 큰 슬픔을 안긴 날이었지. 북촌리 학살이란 거, 그날 500명 가까운 마을 사람들이 하늘나라로 갔어요. 그리고 마을의 거의 모든 집들이 불타 없어졌지.

그 마을에 \'너븐숭이\'라고 불리는 곳이 있어. 거기엔 그날 희생된 이들을 기리는 애기무덤이 20여 기나 되어 있어요. 이 무덤들은 그 당시에 일어난 참혹한 사건들을 기억하게 해줘. 그 무덤 앞에 서면 마치 그날의 비극이 눈앞에 펼쳐지는 것 같아서, 가슴이 먹먹해져.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (6, '제주특별자치도 서귀포시 성산읍 고성리 224-1', '터진목은 서북청년단 특별중대 가 감자창고에 감금한 지역 주민들을 대상으로 총살을 자행한 곳입니다. 터진목의 지명은 \'터진 길목\'에서 유래했으며, 1940년대 초까지 육지처럼 드러났던 곳이었습니다. 이 지역은 수차례 군경 토벌로 인해 많은 주민이 희생되었고, 현재는 위령비가 세워져 희생자들을 기리고 있습니다.
1948년부터 1949년 6월까지 212명의 피해가 있었다고 전해지며, \'터진목\'이라는 이름은 그 시절 물때에 따라 길이 탁 트여서 생긴 이름입니다', 33.4489146, 126.9227327, '터진목', '1948년부터 1949년 6월까지 서북청년단 특별중대에 의해 212명의 지역 주민이 감자창고에 감금 후 총살된 장소로, \'터진 길목\'에서 유래한 이름을 가지며 현재는 희생자들을 기리는 위령비가 세워진 곳입니다.', null, '터진목 이야기를 들으니 마음이 무겁구먼. 그곳은 제주도에서 제주 4·3사건 때, 서북청년단 특별중대가 감자창고에 우리 동네 사람들을 감금하고, 많은 이들을 총살한 곳이여. 그때 그곳에선 우리 마을 사람들이, 어린것들부터 늙은이들까지, 모두 무서워하며 숨죽이고 있었지. 하늘만 쳐다보며, "언제 우리 차례가 올까" 하고 두려워했어.

저기 터진목에서는 212명이 넘는 우리 이웃들이 목숨을 잃었단다. \'터진목\'이라는 이름 자체가 그때 물때에 따라 길이 탁 트여서 생긴 이름인데, 이젠 그 이름만 들어도 그때의 아픈 기억이 몰려와. 나도 그 사건으로 인해 많은 것을 잃었고, 온통 억울하고 비참한 마음뿐이여.

지금은 시간이 많이 흘러서 나이가 들었지만, 그날의 기억은 여전히 선명해. 우리 마을 사람들이 당한 그 아픔, 그 비극을 잊지 말아야 해. 이제는 그곳에 위령비도 세워져서 희생자들을 기리고 있는데, 그 사람들의 넋이라도 잘 쉬었으면 좋겠네.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (7, '서귀포시 표선면 표선리 464-3', '한모살은 \'당캐\' 또는 \'표선 백사장\'으로 불리는 제주 표선면의 넓은 해안 모래사장을 말합니다. 이곳은 제주 4·3 사건 당시 표선면과 남원면 일대 주민들의 학살이 흔히 이루어진 장소였습니다. 특히 산간 마을에서 가족 단위로 피신한 이들이 많이 희생되었습니다.
1948년 12월에는 토산리 민 약 200여 명이 일주일 동안 학살당한 비극이 벌어졌고, 남로당 간부 조몽구의 가족까지 총살되는 참혹한 사건이 일어났습니다. 그리고 같은 달, 16명의 세화1리 청년들이 토벌에 나섰다가 일제히 희생되었다는 안타까운 기록도 있습니다. 표선면 사무소가 위치한 이곳 한모살에서는 군부대가 주둔하는 동안 수시로 주민들을 끌고와 총살을 집행한 것으로 전해집니다.
이제 한모살에는 표선민속촌과 표선면도서관이 자리 잡고 있어, 당시 학살의 흔적은 찾아볼 수 없습니다. 그러나 이곳의 슬픔과 고통, 그리고 희생은 잊혀져서는 안 될 중요한 역사입니다.', 33.32843020000001, 126.8365669, '한모살', '제주 표선면의 넓은 해안 모래사장으로, 제주 4·3 사건 당시 주민 학살이 자주 발생한 장소였으며, 현재는 표선민속촌과 표선면도서관이 위치해 있지만 그 슬픈 역사는 잊혀져서는 안 될 중요한 기억입니다.', null, ' 한모살 이야기를 하니 가슴이 아려온다. 한모살, 제주도 표선면에 있는 넓은 해안 모래사장이지. 제주 4·3사건 때, 표선면과 남원면 사람들이 그곳에서 많이 희생됐어. 특히 산간 마을에서 온 가족이 피신해 온 이들이 많이 죽었지.

1948년 12월에는 토산리 사람들 200여 명이 일주일 동안 학살당하는 거 있었어. 남로당 간부 조몽구의 가족까지 총살되는 끔찍한 일이 있었고, 같은 달에 세화1리 청년들 16명이 토벌 나갔다가 다 죽었다는 슬픈 소식도 있었어.

한모살에 군부대가 있을 때, 자주 주민들을 데려와 총살했다고 하네. 지금은 그곳에 표선민속촌하고 도서관이 있어서 그때 일의 흔적은 없지만, 그곳에서 겪은 슬픔과 고통, 그리고 희생은 우리가 절대 잊으면 안 될 역사야.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (8, '서귀포시 남원읍 중산간동로 6242-56', '제주도 남원읍 수망리에 위치한 현의합장묘는 1948년 4·3사건 때의 비극적인 사건과 관련된 유적입니다. 이곳은 토벌대의 초토화 작전으로 인해 많은 사람들이 삶을 잃었던 곳이며, 주민들은 산이나 돌담 밑으로 숨어들었습니다. 1949년에는 무장대가 토벌대를 무력화하려고 학교를 습격하였으나, 실패하였고 이로 인해 학교에서 수용 중이던 80여명의 주민들이 총살당하는 비극이 벌어졌습니다.
이 후 유족들은 수많은 시련 끝에 묘역을 가꾸었고, 2002년부터는 새로운 묘역을 마련하기 위한 기금을 모으기 시작했습니다. 2003년에는 이전 묘역에서 유해를 발굴하여 새로운 현의합장묘에 안장하였고, 그 이후에는 묘비와 표석을 세우고 관리실을 준공하였습니다. 현재는 매년 이곳에서 \'현의합장묘 영령 위령제\'를 봉행하고 있으며, 유족들에 의해 관리되고 있습니다. 이 곳은 제주 4·3사건의 비극적인 희생을 기리기 위한 중요한 공간으로, 그 역사적 가치를 알리고 보존하는 데 중요한 역할을 하고 있습니다.', 33.3274976, 126.7017718, '현의합장묘', '4·3사건 희생자들을 기리는 유적으로, 비극적인 사건 후 유족들이 묘역을 가꾸고 현재는 매년 위령제를 봉행하는 곳입니다.', null, '현의합장묘 이야기를 들으니 가슴이 찢어진다. 제주 남원읍 수망리에 있는데, 제주 4·3사건 당시에 토벌대의 초토화 작전으로 많은 우리 이웃들이 목숨을 잃었지. 사람들은 산이나 돌담 밑으로 숨어들어 생명을 부지했네.

1949년에는 무장대가 토벌대를 무력화하려고 학교를 습격했지만, 실패했어. 그 결과로 학교에서 수용 중이던 80여 명의 주민들이 총살당하는 비극이 일어났어. 나도 그 사건으로 인해 가족과 이웃을 잃었고, 말로 표현할 수 없는 슬픔과 고통을 겪었지.

그 뒤로 유족들이 여러 시련을 겪으며 묘역을 가꿨어. 2002년에는 새 묘역 마련을 위한 기금을 모으기 시작했고, 2003년에는 옛 묘역에서 유해를 발굴해 새로운 현의합장묘에 안장했지. 지금은 그곳에서 \'현의합장묘 영령 위령제\'를 매년 봉행하고 있어. 유족들이 애써서 관리하고 있어. 그곳은 제주 4·3사건의 슬픔을 기억하고, 그 비극적인 희생을 알리는 중요한 공간이 됐네. 우리의 아픔이 잊혀지지 않기를 바라며, 역사를 기억하는 게 얼마나 중요한지 늘 생각하게 되네.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (9, '서귀포시 남원읍 의귀리 1974-3번지', '송령이골은 1949년 1월 12일에 발생한 의귀국민학교 교전에서 전사한 무장대의 시신이 집단으로 매장된 곳입니다. 그날 군인 4명이 전사했지만, 그보다 많은 수의 무장대가 교전 중에 목숨을 잃었습니다. 이들의 시신은 초기에는 학교 옆에 방치되었다가, 나중에 송령이골로 이동하여 집단으로 매장되었습니다.
1948년 12월 26일부터 의귀국민학교에 군인이 주둔하면서 마을 사람들의 희생은 급격히 증가했습니다. 이에 대응하여 무장대는 학교에 수용된 주민들의 안전을 보장하고, 토벌대를 무력화시키려는 목표로 1949년 1월 12일 새벽에 의귀초등학교를 습격했습니다. 하지만 이 사실을 미리 알고 있던 2중대의 화력에 밀려 무장대는 큰 타격을 입고 퇴각했습니다. 이 사건은 학교에 수용 중이던 주민 60여명이 보복 살해당하는 계기 되었습니다.
이곳은 오랜 시간 동안 방치되었다가 2004년 5월에 생명평화 탁발순례단이 이곳을 찾아 벌초하고 표지판을 세우는 등 기리는 행사를 진행하였습니다.', 33.3154945, 126.7052674, '송령이골', '1949년 의귀국민학교 교전에서 전사한 무장대가 집단 매장된 곳으로, 오랜 방치 후 2004년 생명평화 탁발순례단에 의해 기려진 역사적 장소입니다.', null, '송령이골, 그곳은 마음이 무거워지는 곳이지. 1949년 1월 12일, 의귀국민학교 교전이 있었을 때 많은 무장대가 거기서 목숨을 잃었어. 군인들은 달랑 네 명이었는데, 무장대는 훨씬 많았지. 처음엔 학교 옆에 시신들을 그냥 놔뒀다가, 나중에는 송령이골로 옮겨서 거기다가 다 묻었어.

1948년 12월 26일부터 의귀국민학교에 군인들이 들어와서 주둔하기 시작하면서 우리 마을 사람들 희생이 늘기 시작했어. 무장대들이 학교에 갇힌 사람들 구하고, 토벌대 막으려고 1949년 1월 12일 새벽에 학교를 습격했는데, 거기에 있던 2중대가 미리 알고 있어서 무장대 큰 피해 보고 물러났지. 그 일로 학교에 있던 사람들 60여 명도 보복살해당했어.

그곳은 오랫동안 아무도 안 챙겨줬다가, 2004년 5월에 생명평화 탁발순례단이 와서 벌초하고 표지판 세우는 등 기리는 행사를 했어. 그날 일은 나한테도 깊은 아픔으로 남아있어. 그렇게 많은 사람들이 그날 거기서... 생각만 해도 마음이 아프네.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (10, '서귀포시 동홍동 칠십리로214번길 37', '서귀리는 서귀면을 넘어 산남 지역의 중심지로서 중요한 역할을 했습디다. 면사무소와 남제주군청이 있었던 곳이며, 심지어 서귀포경찰서도 서귀리에 위치해 있었습디다. 그래서 토벌이 강화되면서 토벌대의 주요 거점지가 되었습디다. 서귀면사무소에는 대대본부가 설치되었고, 군부대의 수용소는 수감자로 가득 찼습디다.
특히, 군부대 정보과에서 주민들을 고문하며 취조했던 농회창고는 악명이 높았습디다. 그리고 정방폭포에서는 매일같이 주민들이 죽어나갔습디다.
정방폭포 \'소남머리\'란 곳은 정보과에서 취조 받은 주민들 중에 즉결 처형 대상자들 대부분이 희생당한 곳이었습디다. 보통 \'정방폭포에서 희생당했다\'고 말하는 희생자 대부분이 사실은 이곳에서 총살당했습디다. \'소남머리\'라는 이름은 동산에 소나무가 많다는 뜻에서 붙여진 이름이었습디다.
서귀리와 서귀면, 중문면 이외에도 남원면, 안덕면, 대정면, 표선면의 주민들까지, 정방폭포에서 희생된 사람들은 삼남 지역 전체에 이르렀습디다.', 33.2448521, 126.5718032, '정방폭포', '산남 지역의 중심지로서, 토벌대의 거점이 되었고, 정보과의 고문 및 취조가 이루어진 농회창고와 정방폭포 \'소남머리\'에서 다수의 주민이 희생되었습니다.', null, '아이고, 서귀리 이야긴 참 서글픈 거여. 그곳은 서귀포에 중심지였지. 면사무소, 남제주군청, 심지어 경찰서까지 서귀리에 모여 있었어. 그래서 토벌이 심해질 때마다, 그곳이 토벌대들의 거점이 되었지.

서귀면사무소에는 대대본부가 들어서고, 군부대 수용소는 사람들로 가득 차 버렸어. 특히, 군부대 정보과에서는 농회창고에서 우리 주민들을 고문하고 취조했지. 그 악명이 하늘을 찌를 듯했어. 그리고, 정방폭포에서는 날마다 사람들이 죽어 나갔어.

정방폭포 \'소남머리\'란 곳, 거기가 아주 기억에 남아. 거기서 정보과에서 취조받던 사람들이 대부분 총살당했지. \'정방폭포에서 희생됐다\'는 말은 대부분 소남머리에서 일어난 일이었어. 그 이름이 \'소남머리\', 소나무 많던 동산에서 유래했다지.

서귀리뿐만 아니라 서귀면, 중문면, 남원면, 안덕면, 대정면, 표선면 주민들까지, 그 정방폭포에서 희생된 사람들은 삼남 지역 전체에 달했어. 그 끔찍했던 일들, 지금도 생생하게 기억나네.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (11, '제주특별자치도 서귀포시 대정읍 상모리 586-1', '한국전쟁 당시 보도연맹원과 반정부 혐의자들이 예비검속되어 모슬포경찰서에 의해 총살당했고, 이후 군경에 의해 희생자들의 시신 수습이 제한되었습니다. 6년 후에야 시신을 수습할 수 있었고, 이들을 모아 \'백조일손지지\'라는 묘역을 조성했습니다. 그러나 군경의 탄압은 계속되어 1961년에는 위령비가 파괴되었습니다. 이후 유족들은 비석조각들을 보존하고 훼손사건을 기리는 푯말을 세웠습디다.', 33.2197022, 126.2855422, '백조일손지지', '한국전쟁 당시 총살된 보도연맹원과 반정부 혐의자들의 시신이 6년 후 \'백조일손지지\' 묘역에 안장되었으나, 1961년 위령비가 파괴되고, 유족들이 훼손을 기리는 푯말을 세웠습니다.', null, '그 모슬포경찰서 이야기를 들으니 마음이 다 아프구먼. 한국전쟁 때, 보도연맹원들하고 반정부 혐의를 받은 사람들이 모슬포경찰서에서 총살당했었지. 그 시절은 참으로 어지러웠어.

희생자들의 시신 수습은 제대로 이루어지지 못했어. 육 년이 지난 후에야 겨우 시신을 거둬서 \'백조일손지지\'라는 묘역을 만들었지. 그런데 군경의 탄압은 끊이지 않아서, 1961년에는 그곳 위령비까지 파괴됐어. 이후로 유족들이 비석조각들을 모아서 보존하고, 그 훼손된 사건을 기리는 푯말을 세웠지.

그 시절, 우리가 겪었던 그 많은 아픔과 슬픔, 그걸 어찌 잊을 수 있겠어? 그런 일들이 있었다는 걸 기억해야지, 그래야 그 사람들의 희생이 헛되지 않을 거야.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (12, '제주시 한림읍 월령리 381, 월령1길 22', '한림읍 월령리는 천연기념물로 지정된 손바닥 선인장 자생지이며, 대부분의 주민들이 선인장을 키우는 우리나라 유일의 선인장 마을입니다. 이 마을에는 무명천 할머니라 불리는 진아영 할머니의 삶이 녹아있는 작은 집이 하나 있습니다. 4·3 사건이라는 한국현대사 최대의 비극 속에서 할머니는 평생을 남모르게 울음을 삼키며 살아왔습니다.
진아영 할머니는 4·3 사건 당시 오빠와 함께 농사를 지으며 살아가던 평범한 아낙이었습니다. 그러나 1949년 1월, 한림 주둔 2연대와 한림지서 경찰들에 의한 판포리 토벌 중에 경찰 토벌대의 총에 턱을 맞고 생을 마감하게 됩니다. 그 이후로 55년 동안 할머니는 무명천으로 턱을 가린 채 말을 할 수도 없고 음식도 제대로 먹지 못하는 지독한 삶을 살아왔습니다.
2008년 3월 25일에는 진아영 할머니의 생전의 집이 전시관으로 탈바꿈하여 공개되었습니다. 이는 \'진아영 할머니 삶터 보존위원회\'라는 시민단체가 진아영 할머니의 생전 모습을 복원하여 알리기 위한 노력입니다.', 33.3759582, 126.2146792, '진아영 할머니 삶터', '무명천 할머니로 알려진 진아영 할머니의 댁의 생전의 모습을 알리기 위한 공간입니다.', null, '예, 그 때 였어요... 온 마을이 선인장 천국이었지. 밭과 우영에도, 울담과 올래길에도 선인장이 무성하게 자라고 있었어요. 월령리라는 곳이었는데, 거기선 선인장이 특별한 의미를 갖고 있었죠. 진아영 할머니라는 분이 살고 있었어요. 그 분은 진짜... 한이 많은 삶을 살았지 뭐에요.

제주 4·3 사건 때문에, 그리고 그 뒤의 모든 일들 때문에, 할머니는 많이 고생하셨어요. 1949년에, 판포리에서, 경찰이 할머니를 무장대로 오해해서... 아, 그날을 생각하니 가슴이 아프네요. 할머니는 총에 맞고 쓰러졌어요. 그 후로 할머니는 무명천으로 턱을 가리고 살아야 했어요. 말도 제대로 못하고, 음식도 제대로 먹지 못했어요.

나중에 할머니의 집은 전시관으로 변했어요. 사람들이 그 집을 보존하기로 결심하고, 할머니의 삶을 알리기로 했죠. 월령리에서 할머니는 선인장 열매나 톳을 따다 팔면서 연명하셨어요. 그런데 씹을 수 없으니, 위장병과 영양실조에 시달렸지. 병원을 자주 가야만 했어요.

할머니는 제주 4·3 사건의 생생한 증거이자, 그 아픈 역사의 한 부분이었어요. 누군가는 이 사건을 잊을 수도 있겠지만, 우리 같은 사람들에게는... 그건 평생 잊을 수 없는 아픈 기억이에요. 할머니의 이야기를 통해, 사람들이 그 아픔을 조금이나마 알아줬으면 좋겠어요.

아, 그 시절... 정말 어려웠어요. 하지만 이런 이야기들을 통해, 우리가 겪은 것들이 잊혀지지 않기를 바래요.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (13, '제주시 애월읍 어음리 1391', '빌레못굴은 1949년 1월 16일, 토벌대와 민보단이 합동으로 수색작전을 벌인 결과로 발각되었습니다. 이 때 동굴 안에 숨어 있던 애월면 어음·납읍·장전리 주민 29명이 집단으로 학살당하였으며, 동굴 속에서 나오지 못해 굶어 죽은 아버지와 아들, 그리고 어머니와 딸 4명이 발견되었습니다. 이는 비극의 현장입니다.
당시 겨울이었으며, 김이 올라오는 것을 보고 동굴 입구를 찾아낸 토벌대는 굴 속에 숨어 있던 주민 29명을 집단으로 총살하였습니다.
희생된 사람들은 대부분 노약자들이었습니다. 또한 당시 토벌대가 서너살 난 어린이의 다리를 잡아 머리를 바위에 메쳐 죽였다는 이야기가 진압작전에 동원된 민보단원의 입을 통해 전해져 왔습니다.', 33.404328, 126.349773, '빌레못굴', '토벌대와 민보단의 합동 수색작전으로 애월면 주민 29명이 집단 학살되고, 일부는 굶주림으로 사망한 비극적인 사건이 발생한 장소입니다.', null, '아이고, 그때 그 일을 어찌 잊으리오. 제주 어음리 빌레못동굴, 그곳은 예전에는 우리 어렸을 때 뛰어놀던 곳이었지. 연못도 있고, 동굴도 신비로웠어. 그러나 4.3사건 당시, 그곳이 공포의 장소로 변했지. 1949년 1월 16일, 그날을 우리는 절대 잊을 수 없어.

토벌대와 민보단이 대대적인 수색 작전을 벌여서 빌레못동굴을 발견했다더군. 굴속에 숨어 있던 사람들을 그대로 잔혹하게 죽였다 하오. 그중에는 내 이웃도, 친구도 있었어. 젊은 강규남의 가족, 그 외 많은 이들이 그 자리에서 목숨을 잃었지.

가장 마음 아픈 건, 아이들이었어. 그 예쁜 남자아이가 어찌나 불쌍하던지... 발을 잡고 돌에 처박혀 죽었다 하더군. 애 어머니와 젖먹이 여동생은 동굴 안으로 숨었다가 굶어 죽었다지. 이런 일이 어찌 일어날 수 있나 싶어 마음이 찢어질 것 같았어.

내 가족도, 그날로 모든 걸 잃었지. 아버지, 어머니, 동생들... 다 그날로 사라졌어. 그 후로 나 혼자서 겨우겨우 살아가고 있지만, 그날의 아픔은 시간이 가도 잊혀지지 않아. 빌레못동굴, 그곳은 이제 관광지나 학술 연구지로만 남아있지만, 그곳에 얽힌 슬픔과 고통은 영원히 잊히지 않을 거야. 우리의 아픔, 우리의 슬픔을 기억해주길 바래.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (14, '제주시 애월읍 하귀1리 1130-1번지', '영모원은 일제강점기 동안 가장 많은 항일운동가를 배출하고, 4·3 사건 당시에도 엄청난 인명과 재산의 피해를 입었던 하귀리 주민들이 스스로 조성하였습니다. 이곳은 4·3 희생자의 신위를 한 자리에 모아 화해와 상생의 모델로 작용하고 있습니다. 또한, 4·3 사건 이후 동서 마을 간의 갈등을 해결하는데도 큰 역할을 하고 있습니다. 이는 제주도민의 평화 역량을 과시한 중요한 사례로 기록되고 있습니다.
하귀리 주민들은 "하귀발전협의회"를 중심으로 일제시기의 항일운동가와 4·3 희생자, 그리고 4·3 및 한국전쟁을 전후한 시기에 희생된 호국영령들을 한 곳에서 추모하기 위해 3년 동안 준비하여 2003년 5월 27일에 개막식을 가졌습니다. 이 영모원은 일제시기에 가장 많은 항일운동가를 배출하고, 4·3 사건 기간 동안 많은 희생을 입은 두 대표적인 마을 중 하나인 하귀에서 주민들이 스스로 준비하여 개설하였습니다.
요약하자면, 영모원은 일제 강점기와 4·3 사건 당시 희생된 사람들을 추모하기 위해 하귀리 주민들이 스스로 조성한 곳입니다. 이곳은 화해와 상생의 모델로 작용하며, 향후 다른 마을에서 비슷한 묘역을 개설하는 데 큰 영향을 미칠 것으로 보입니다.', 33.472205, 126.4182601, '영모원', '하귀리 주민들이 일제 강점기와 4·3 사건 희생자들을 추모하며 화해와 상생의 모델로 조성한 추모 공간입니다.', null, '아이고, 영모원이라는 곳 말인가? 하귀리 주민들이 모여서 만든 곳이지. 그곳은 우리 제주도의 아픈 역사를 담은 곳이여. 일제강점기 때부터 많은 항일 운동가들이 나왔고, 4·3 사건 때도 큰 피해를 겪었지. 그래서 영모원이라는 곳은 매우 의미가 깊어.

하귀리 사람들이 하귀발전협의회를 중심으로 모여서 일제 시기 항일운동가들과 4·3 희생자들, 그리고 한국전쟁을 전후한 호국영령들을 모셔 추모하기로 했어. 그들은 준비 끝에 2003년에 영모원을 열었지. 그곳에는 조천과 하귀 마을 사람들이 모여든 거야. 그리고 4·3 사건 때 희생된 사람들과 군경 희생자들을 모아 화해와 상생의 길을 모색했지.

그 영모원이야말로 우리 제주도민이 겪은 고통과 아픔을 기억하고, 평화로 나아가려는 의지를 보여주는 곳이지. 우리는 그곳을 통해 역사의 아픔을 기억하고, 더 나은 미래를 위한 화합을 도모해야 해. 그곳은 제주시에서 일주도로를 따라 하귀로 가서 하귀1리 신호등에서 좌회전하면 나와. 그곳을 찾아가는 길은 마치 과거를 돌아보는 여정 같아. 그리고 그 위쪽에는 광동이라는 잃어버린 마을도 있고, 조금 더 가면 자종이마을도 있지.

영모원이 있기 전에는 그 고통을 어디에 털어놓을 곳이 없었어. 하지만 지금은 거기가 있어서 우리는 과거를 기억하고, 그것을 통해 더 나은 내일을 위해 노력할 수 있어. 그곳은 단순한 묘역이 아니라, 우리 제주도의 화해와 평화, 그리고 상생의 상징이라고 할 수 있지.');
INSERT INTO tour (id, address, content, latitude, longitude, name, outline, speak_file_path, script) VALUES (15, '제주시 공항로 2 (제주시 용담동, 도두동 일대)', '제주국제공항은 제주4·3사건 당시 최대 민간인 학살터 중 하나로 알려져 있습니다. 제주4·3 당시 최소 700여 명이 학살된 것으로 파악되고 있으며, 아직도 활주로 밑에 희생된 유해가 잠들어 있는 것으로 추정됩니다. 이 곳에서는 1949년과 1950년에 주민들이 집단으로 학살당한 것으로 알려져 있습니다. 이후 2007년부터 2009년 사이에 유해발굴 작업이 이뤄져 380여 구의 유해를 발굴했으며, 그 중 130여 구의 유해가 가족에게 돌아갔습니다. 2018년에는 제주공항 인근 도두봉 근처에서 4구의 유해가 발굴되었습니다. 제주국제공항 내에는 아직도 많은 유해가 묻혀 있을 것으로 추정되고 있습니다.', 33.50823365736336, 126.48513562507326, '정뜨르 비행장', '현재 제주국제공항의 위치로, 제주4·3사건 당시 최대 민간인 학살터 중 한 곳 입니다. 지금까지도 많은 유해가 묻혀 있을 것으로 추정됩니다.', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/voice/%EC%A0%95%EB%9C%A8%EB%A5%B4%EB%B9%84%ED%96%89%EC%9E%A5.mp3', '어이, 젊은이, 들어주게. 제주국제공항 이야기를 들려줄게. 그때를 생각하니 아직도 마음이 아프네. 그곳은 원래 \'정뜨르 비행장\'이었어. 1940년대 초반에 일본이 만든 건데, 그때는 그저 자그마한 군용기 이착륙장이 전부였지.

그런데 제주 4·3 사건 때, 그곳은 최악의 학살터가 됐어. 무수한 양민들이 끌려와 그곳에서 학살당했지. 비행장 밑에 많은 4·3 영혼들이 잠들어 있어. 미군정과 군경토벌대가 많은 사람들을 재판한다는 구실로 끌고와서 학살한 뒤 거기에 매장해버렸다네.

사람들은 그곳을 항공편을 이용해 제주를 방문하는 관문으로만 알고 있어. 하지만 그 밑에는 우리 제주도민들의 고통과 슬픔이 묻혀 있는 거야. 도두리 김예봉 할아버지의 이야기를 들어봐. 그분이 목격한 것을 묘사했지. 사람들이 실려와서 구덩이에서 학살당했다고 해. 그때 그분은 이런 말을 했어, "사람들이 학살되어 묻힐 구덩이는 미리 파게 했어. 버스로 실려온 사람들을 옷을 벗겨 구덩이 가에 세운 다음에 민보단원들이 죽창과 철창으로 찔러 죽이고, 기관총으로 사격해버렸지."

미국은 제주도를 \'레드아일렌드\'로 규정하고, 무수한 도민들을 학살했어. 양민 백 명을 죽이면 게릴라 한 명이 끼여 있을 것이라고 생각했다네. 그렇게 학살된 주민들의 피로 학살터가 물들었고, 그 위에 아스팔트를 덮어 지금의 활주로가 되었지. 관광객을 맞이하는 활주로가 되었지만, 그곳에 묻힌 우리 제주도민들의 슬픔과 아픔을 잊어선 안 될 거야.');

INSERT INTO near_tour (id, address, content, dis, img_path, name, tour_id) VALUES (1, '제주특별자치도 제주시 관덕로 10', '제주 4.3 사건의 중심지', 2, 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/near_tour/%EB%8B%A4%EB%9E%91%EC%89%AC%EA%B5%B4_%EC%9D%B8%EA%B7%BC%EC%9C%A0%EC%A0%81%EC%A7%80_%EA%B4%80%EB%8D%95%EC%A0%95.png', '관덕정', 1);
INSERT INTO near_tour (id, address, content, dis, img_path, name, tour_id) VALUES (2, '제주특별자치도 제주시 새연교길', '제주 4.3 사건 당시 많은 제주도민들이 희생된 장소', 3, 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/near_tour/%EC%83%88%EC%97%B0%EA%B5%90.jpg', '새연교', 1);
INSERT INTO near_tour (id, address, content, dis, img_path, name, tour_id) VALUES (3, '제주특별자치도 제주시 오라로 2653', '제주 4.3 사건의 희생자를 기리는 공간', 2, 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/near_tour/%EB%8B%A4%EB%9E%91%EC%89%AC%EA%B5%B4_%EC%9D%B8%EA%B7%BC%EC%9C%A0%EC%A0%81%EC%A7%80_43%ED%8F%89%ED%99%94%EA%B3%B5%EC%9B%90.png', '제주 4.3 평화공원', 2);
INSERT INTO near_tour (id, address, content, dis, img_path, name, tour_id) VALUES (4, '제주특별자치도 제주시 새연교길', '제주 4.3 사건 당시 많은 제주도민들이 희생된 장소', 3, 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/near_tour/%EC%83%88%EC%97%B0%EA%B5%90.jpg', '새연교', 2);
INSERT INTO near_tour (id, address, content, dis, img_path, name, tour_id) VALUES (5, '제주특별자치도 제주시 오라로 2653', '제주 4.3 사건의 희생자를 기리는 공간', 10, 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/near_tour/%EB%8B%A4%EB%9E%91%EC%89%AC%EA%B5%B4_%EC%9D%B8%EA%B7%BC%EC%9C%A0%EC%A0%81%EC%A7%80_43%ED%8F%89%ED%99%94%EA%B3%B5%EC%9B%90.png', '제주 4.3 평화공원', 3);
INSERT INTO near_tour (id, address, content, dis, img_path, name, tour_id) VALUES (6, '제주특별자치도 제주시 관덕로 10', '제주 4.3 사건의 중심지', 8, 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/near_tour/%EB%8B%A4%EB%9E%91%EC%89%AC%EA%B5%B4_%EC%9D%B8%EA%B7%BC%EC%9C%A0%EC%A0%81%EC%A7%80_%EA%B4%80%EB%8D%95%EC%A0%95.png', '관덕정', 3);

INSERT INTO image (id, content, img_path, tour_id) VALUES (1, '각명비', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/43+%ED%8F%89%ED%99%94%EA%B3%B5%EC%9B%90/%EA%B0%81%EB%AA%85%EB%B9%84.png', 1);
INSERT INTO image (id, content, img_path, tour_id) VALUES (2, '귀천', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/43+%ED%8F%89%ED%99%94%EA%B3%B5%EC%9B%90/%EA%B7%80%EC%B2%9C.png', 1);
INSERT INTO image (id, content, img_path, tour_id) VALUES (3, '모녀의 기념조각', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/43+%ED%8F%89%ED%99%94%EA%B3%B5%EC%9B%90/%EB%AA%A8%EB%85%80%EC%9D%98+%EA%B8%B0%EB%85%90%EC%A1%B0%EA%B0%81.png', 1);
INSERT INTO image (id, content, img_path, tour_id) VALUES (4, '위령탑', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/43+%ED%8F%89%ED%99%94%EA%B3%B5%EC%9B%90/%EC%9C%84%EB%A0%B9%ED%83%91.png', 1);
INSERT INTO image (id, content, img_path, tour_id) VALUES (5, '관덕정 내부 모습', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EA%B4%80%EB%8D%95%EC%A0%95/%EA%B4%80%EB%8D%95%EC%A0%95+%EB%82%B4%EB%B6%80+%EB%AA%A8%EC%8A%B5.jpg', 2);
INSERT INTO image (id, content, img_path, tour_id) VALUES (6, '관덕정 야경', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EA%B4%80%EB%8D%95%EC%A0%95/%EA%B4%80%EB%8D%95%EC%A0%95+%EC%95%BC%EA%B2%BD.jpg', 2);
INSERT INTO image (id, content, img_path, tour_id) VALUES (7, '관덕정 전경', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EA%B4%80%EB%8D%95%EC%A0%95/%EA%B4%80%EB%8D%95%EC%A0%95+%EC%A0%84%EA%B2%BD.png', 2);
INSERT INTO image (id, content, img_path, tour_id) VALUES (8, '제주목 전시관', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EA%B4%80%EB%8D%95%EC%A0%95/%EC%A0%9C%EC%A3%BC%EB%AA%A9+%EC%A0%84%EC%8B%9C%EA%B4%80.jpg', 2);
INSERT INTO image (id, content, img_path, tour_id) VALUES (9, '다랑쉬굴 안내판', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%8B%A4%EB%9E%91%EC%89%AC%EA%B5%B4/%EB%8B%A4%EB%9E%91%EC%89%AC%EA%B5%B4+%EC%95%88%EB%82%B4%ED%8C%90.png', 3);
INSERT INTO image (id, content, img_path, tour_id) VALUES (10, '다랑쉬굴 전경', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%8B%A4%EB%9E%91%EC%89%AC%EA%B5%B4/%EB%8B%A4%EB%9E%91%EC%89%AC%EA%B5%B4+%EC%A0%84%EA%B2%BD.png', 3);
INSERT INTO image (id, content, img_path, tour_id) VALUES (11, '다랑쉬굴', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%8B%A4%EB%9E%91%EC%89%AC%EA%B5%B4/%EB%8B%A4%EB%9E%91%EC%89%AC%EA%B5%B4.png', 3);
INSERT INTO image (id, content, img_path, tour_id) VALUES (12, '곤을동 입구 모습', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EA%B3%A4%EC%9D%84%EB%8F%99/%EA%B3%A4%EC%9D%84%EB%8F%99+%EC%9E%85%EA%B5%AC+%EB%AA%A8%EC%8A%B5.jpg', 4);
INSERT INTO image (id, content, img_path, tour_id) VALUES (13, '곤을동 입구', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EA%B3%A4%EC%9D%84%EB%8F%99/%EA%B3%A4%EC%9D%84%EB%8F%99+%EC%9E%85%EA%B5%AC.jpg', 4);
INSERT INTO image (id, content, img_path, tour_id) VALUES (14, '곤을동 전경 사진', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EA%B3%A4%EC%9D%84%EB%8F%99/%EA%B3%A4%EC%9D%84%EB%8F%99+%EC%A0%84%EA%B2%BD+%EC%82%AC%EC%A7%84.jpg', 4);
INSERT INTO image (id, content, img_path, tour_id) VALUES (15, '곤을동 표지석', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EA%B3%A4%EC%9D%84%EB%8F%99/%EA%B3%A4%EC%9D%84%EB%8F%99+%ED%91%9C%EC%A7%80%EC%84%9D.jpg', 4);
INSERT INTO image (id, content, img_path, tour_id) VALUES (16, '너븐숭이 위령비', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%84%88%EB%B8%90%EC%88%AD%EC%9D%B4+%EA%B8%B0%EB%85%90%EA%B4%80/%EB%84%88%EB%B8%90%EC%88%AD%EC%9D%B4+%EC%9C%84%EB%A0%B9%EB%B9%84.jpg', 5);
INSERT INTO image (id, content, img_path, tour_id) VALUES (17, '너븐숭이', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%84%88%EB%B8%90%EC%88%AD%EC%9D%B4+%EA%B8%B0%EB%85%90%EA%B4%80/%EB%84%88%EB%B8%90%EC%88%AD%EC%9D%B4.jpg', 5);
INSERT INTO image (id, content, img_path, tour_id) VALUES (18, '성산읍 위령공원', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%ED%84%B0%EC%A7%84%EB%AA%A9/%EC%84%B1%EC%82%B0%EC%9D%8D+%EC%9C%84%EB%A0%B9%EA%B3%B5%EC%9B%90.jpg', 6);
INSERT INTO image (id, content, img_path, tour_id) VALUES (19, '터진목 표지석', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%ED%84%B0%EC%A7%84%EB%AA%A9/%ED%84%B0%EC%A7%84%EB%AA%A9+%ED%91%9C%EC%A7%80%EC%84%9D.jpg', 6);
INSERT INTO image (id, content, img_path, tour_id) VALUES (20, '터진목', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%ED%84%B0%EC%A7%84%EB%AA%A9/%ED%84%B0%EC%A7%84%EB%AA%A9.jpg', 6);
INSERT INTO image (id, content, img_path, tour_id) VALUES (21, '한모살 안내판', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%ED%95%9C%EB%AA%A8%EC%82%B4/%ED%95%9C%EB%AA%A8%EC%82%B4+%EC%95%88%EB%82%B4%ED%8C%90.jpg', 7);
INSERT INTO image (id, content, img_path, tour_id) VALUES (22, '현의합장묘 구묘역', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%ED%98%91%EC%9D%98%ED%95%A9%EC%9E%A5%EB%AC%98/%ED%98%84%EC%9D%98%ED%95%A9%EC%9E%A5%EB%AC%98+%EA%B5%AC%EB%AC%98%EC%97%AD-2.jpg', 8);
INSERT INTO image (id, content, img_path, tour_id) VALUES (23, '현의합장묘 구묘역', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%ED%98%91%EC%9D%98%ED%95%A9%EC%9E%A5%EB%AC%98/%ED%98%84%EC%9D%98%ED%95%A9%EC%9E%A5%EB%AC%98+%EA%B5%AC%EB%AC%98%EC%97%AD-3.jpg', 8);
INSERT INTO image (id, content, img_path, tour_id) VALUES (24, '현의합장묘 구묘역', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%ED%98%91%EC%9D%98%ED%95%A9%EC%9E%A5%EB%AC%98/%ED%98%84%EC%9D%98%ED%95%A9%EC%9E%A5%EB%AC%98+%EA%B5%AC%EB%AC%98%EC%97%AD.jpg', 8);
INSERT INTO image (id, content, img_path, tour_id) VALUES (25, '송령이골', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%86%A1%EB%A0%B9%EC%9D%B4%EA%B3%A8/%EC%86%A1%EB%A0%B9%EC%9D%B4%EA%B3%A8.jpg', 9);
INSERT INTO image (id, content, img_path, tour_id) VALUES (26, '유골방치 터', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%86%A1%EB%A0%B9%EC%9D%B4%EA%B3%A8/%EC%9C%A0%EA%B3%A8%EB%B0%A9%EC%B9%98+%ED%84%B0.jpg', 9);
INSERT INTO image (id, content, img_path, tour_id) VALUES (27, '정방폭포', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%A0%95%EB%B0%A9%ED%8F%AD%ED%8F%AC/%EC%A0%95%EB%B0%A9%ED%8F%AD%ED%8F%AC-2.jpg', 10);
INSERT INTO image (id, content, img_path, tour_id) VALUES (29, '정방폭포', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%A0%95%EB%B0%A9%ED%8F%AD%ED%8F%AC/%EC%A0%95%EB%B0%A9%ED%8F%AD%ED%8F%AC.jpg', 10);
INSERT INTO image (id, content, img_path, tour_id) VALUES (28, '정방폭포', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%A0%95%EB%B0%A9%ED%8F%AD%ED%8F%AC/%EC%A0%95%EB%B0%A9%ED%8F%AD%ED%8F%AC-3.jpg', 10);
INSERT INTO image (id, content, img_path, tour_id) VALUES (30, '백손일손영령 위령제', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%B0%B1%EC%86%90%EC%9D%BC%EC%86%90%EC%A7%80%EC%A7%80/%EB%B0%B1%EC%86%90%EC%9D%BC%EC%86%90%EC%98%81%EB%A0%B9+%EC%9C%84%EB%A0%B9%EC%A0%9C.jpg', 11);
INSERT INTO image (id, content, img_path, tour_id) VALUES (31, '백조일손지묘', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%B0%B1%EC%86%90%EC%9D%BC%EC%86%90%EC%A7%80%EC%A7%80/%EB%B0%B1%EC%A1%B0%EC%9D%BC%EC%86%90%EC%A7%80%EB%AC%98.jpg', 11);
INSERT INTO image (id, content, img_path, tour_id) VALUES (32, '백조일손지지 위령비', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%B0%B1%EC%86%90%EC%9D%BC%EC%86%90%EC%A7%80%EC%A7%80/%EB%B0%B1%EC%A1%B0%EC%9D%BC%EC%86%90%EC%A7%80%EC%A7%80+%EC%9C%84%EB%A0%B9%EB%B9%84.jpg', 11);
INSERT INTO image (id, content, img_path, tour_id) VALUES (33, '내부 모습', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%A7%84%EC%95%84%EC%98%81+%ED%95%A0%EB%A8%B8%EB%8B%88+%EC%82%B6%ED%84%B0/%EB%82%B4%EB%B6%80+%EB%AA%A8%EC%8A%B5.jpg', 12);
INSERT INTO image (id, content, img_path, tour_id) VALUES (34, '무명천 할머니길', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%A7%84%EC%95%84%EC%98%81+%ED%95%A0%EB%A8%B8%EB%8B%88+%EC%82%B6%ED%84%B0/%EB%AC%B4%EB%AA%85%EC%B2%9C+%ED%95%A0%EB%A8%B8%EB%8B%88%EA%B8%B8.jpg', 12);
INSERT INTO image (id, content, img_path, tour_id) VALUES (35, '진아영 할머니 집터', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%A7%84%EC%95%84%EC%98%81+%ED%95%A0%EB%A8%B8%EB%8B%88+%EC%82%B6%ED%84%B0/%EC%A7%84%EC%95%84%EC%98%81+%ED%95%A0%EB%A8%B8%EB%8B%88+%EC%A7%91%ED%84%B0.jpg', 12);
INSERT INTO image (id, content, img_path, tour_id) VALUES (36, '빌레못굴 안내판', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%B9%8C%EB%A0%88%EB%AA%BB%EA%B5%B4/%EB%B9%8C%EB%A0%88%EB%AA%BB%EA%B5%B4+%EC%95%88%EB%82%B4%ED%8C%90.jpg', 13);
INSERT INTO image (id, content, img_path, tour_id) VALUES (37, '빌레못굴 입구', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%B9%8C%EB%A0%88%EB%AA%BB%EA%B5%B4/%EB%B9%8C%EB%A0%88%EB%AA%BB%EA%B5%B4+%EC%9E%85%EA%B5%AC.jpg', 13);
INSERT INTO image (id, content, img_path, tour_id) VALUES (38, '빌레못굴', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EB%B9%8C%EB%A0%88%EB%AA%BB%EA%B5%B4/%EB%B9%8C%EB%A0%88%EB%AA%BB%EA%B5%B4.png', 13);
INSERT INTO image (id, content, img_path, tour_id) VALUES (39, '영모원', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%98%81%EB%AA%A8%EC%9B%90/%EC%98%81%EB%AA%A8%EC%9B%90.jpeg', 14);
INSERT INTO image (id, content, img_path, tour_id) VALUES (40, '제주국제공항(정뜨르비행장) 활주로', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%A0%95%EB%9C%A8%EB%A5%B4+%EB%B9%84%ED%96%89%EC%9E%A5/%EC%A0%9C%EC%A3%BC%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD(%EC%A0%95%EB%9C%A8%EB%A5%B4%EB%B9%84%ED%96%89%EC%9E%A5)+%ED%99%9C%EC%A3%BC%EB%A1%9C.jpg', 15);
INSERT INTO image (id, content, img_path, tour_id) VALUES (41, '제주국제비행장', 'https://neokdeuri.s3.ap-northeast-2.amazonaws.com/tour/%EC%A0%95%EB%9C%A8%EB%A5%B4+%EB%B9%84%ED%96%89%EC%9E%A5/%EC%A0%9C%EC%A3%BC%EA%B5%AD%EC%A0%9C%EB%B9%84%ED%96%89%EC%9E%A5.jpeg', 15);
