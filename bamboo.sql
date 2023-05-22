-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: bamboo
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wdate` varchar(50) NOT NULL DEFAULT '',
  `view` int NOT NULL DEFAULT '0',
  `content` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(100) NOT NULL,
  `id` int NOT NULL DEFAULT '1',
  `nick` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES ('S220328','🔨','2023 / 05 / 17 / 11 / 24',4,'Dangggggggg','S220328!@#',1,'Developer');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `comments` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idC` int NOT NULL,
  `nick` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'S220328','2023/05/17 / 11:24','😎',1,'Developer'),(1,'S220411','2023/05/17 / 13:13','danggggggg',2,'nibba');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idl`
--

DROP TABLE IF EXISTS `idl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idl` (
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idl`
--

LOCK TABLES `idl` WRITE;
/*!40000 ALTER TABLE `idl` DISABLE KEYS */;
INSERT INTO `idl` VALUES (1);
/*!40000 ALTER TABLE `idl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg`
--

DROP TABLE IF EXISTS `msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msg` (
  `no` varchar(20) DEFAULT NULL,
  `m_f` varchar(20) DEFAULT NULL,
  `m_t` varchar(20) DEFAULT NULL,
  `m_d` varchar(40) DEFAULT NULL,
  `m_txt` varchar(20000) DEFAULT NULL,
  `id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg`
--

LOCK TABLES `msg` WRITE;
/*!40000 ALTER TABLE `msg` DISABLE KEYS */;
INSERT INTO `msg` VALUES ('0','임국진','차정민','2023-05-15','내용 내일 16일(화)은 외부 손님(사우디아라비아) 60여명이 우리학교에 와서 IT 기기 관련 수업 등을 참관하실 예정입니다. 항상 예의바른 9기이지만 내일도 외부 손님 보시면 인사 잘하고~ 복장도 잘 갖춰입어 주시면 감사하겠습니다~ 정복은 아니여도 되지만 교복 바르게 입어주시고, 인사도 씩씩하게 해주시면 감사하겠습니다. 우리는 9기다! 우리는 아름다운 내일을 만든다! 감사합니다^^','S220328'),('1','한재희','차정민','2023-05-15','내용 징계활동일지 오늘 중으로 제출해주세요.','S220328'),('2','정원교','차정민','2023-05-15','내용 정원교님의 기프티콘이 도착했습니다.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n운동과 건강 수업 설문 하십시오늘 꼭 하십시오늘 하지 않으면 찾아갑니다합께 해봅시다같이 파이팅!\n\n\n\n\n\n ','S220328'),('3','이정석','차정민','2023-05-15','내용 [e-Icon 세계대회 참여학생 모집(~5.23까지 이정석t에게 쪽지)]\n\n안녕하세요.\nIT교사 이정석입니다.\n\ne-Icon 세계대회와 관련하여 참여학생을 모집합니다.\n\n1. 대회 : e-Icon(http://e-icon.or.kr/ko/)\n2. 팀원 : 2명\n3. 신청\n - 신청방법 : 이정석 교사에게 큰사넷 쪽지\n - 신청내용 : 대표학생이 2명의 학번(나이스 5자리) 이름 제출\n - 제출기한 : ~5.23(화)\n\n수업시간에 이야기했던 것 처럼 영어가능통한자, 앱개발이 가능한자 여야 합니다. 선생님께 신청한다고 모두 가능한 것은 아니며, 선생님이 개별 면담을 진행할 예정입니다. \n\n감사합니다.','S220328'),('4','진요한','차정민','2023-05-12','내용 충남삼성고 학생들에게 안내합니다. \n학교를 늘 깔끔하게 정리해주시는 분들로 부터 요청이 왔는데요.\n라커위, 주변에 불필요한 물건들이 너무 많아 정리가 어렵다고 하십니다.\n\n오늘과 주말을 이용해 불필요한 물건들을 정리하시고,\n정리가 안될경우 학생생활부와 연계해서 싹 정리할 예정입니다.\n선생님들이 정리하는 경우에는 서로 불편한 일들이 발생할 수 있기에\n자발적으로 정리를 요청합니다.\n\n한 주도 수고 많았어요-^^ 좋은 주말 보내길 바랍니다.','S220328'),('5','윤용철','차정민','2023-05-12','내용 안녕하세요. IT 윤용철 선생님입니다.\n\n본 메시지는 2023STAC 대회 참가자들에 대한 리마인드 메시지입니다.\n\n2023STAC 대회 미 참여자에게는 해당사항이 없습니다.\n\n2023STAC 개발팀 접수가 이번주 일요일(5월 14일까지)입니다.\n\n개발팀으로 대회에 참여를 희망하는 학생은 시한 시간에 늦어지지 않도록 \n\n대회 접수를 해 주시길 바랍니다. ','S220328'),('6','이세은','차정민','2023-05-12','내용 2023학년도 미술수업 설문조사~~\n\nhttps://naver.me/xqoFkOCC\n\n2학기 미술수업에 여러분의 내용을 반영할 예정이니 꼭 참여해주세요~~ :)\n\n ','S220328'),('7','이은모','차정민','2023-05-11','내용 이은모 선생님이 CB05호 스터디룸3의 장소사용 신청을 승인 하였습니다.','S220328'),('8','이은모','차정민','2023-05-11','내용 이은모 선생님이 CB03호 스터디룸1의 장소사용 신청을 반려하였습니다.','S220328'),('9','이경민','차정민','2023-05-10','내용 안녕하세요. 과학조교 이경민입니다.\n금일 신청서 제출은 13:30에 이미 마감되었으며, 지도교사 선생님 및 학과장님 서명이 없어 반려되었습니다.','S220328'),('10','김상일','차정민','2023-05-09','내용 안녕하세요 또래상담 동아리에서 프로젝트와 관련된 설문조사를 진행하려고 합니다.\n오래걸리지 않는 설문이니 많은 참여 부탁드립니다^^ \n\nhttps://forms.gle/65wbwfAmQ8PHnRWX9','S220328'),('11','최혜림','차정민','2023-05-09','내용 [레전드 페스티벌 설문] 참여하지 않은 학생은 바로 참여 바랍니다.\n인원수에 따라 강의실을 변경하며 참여하지 않은 학생의 자리가 없을 수 있습니다.','S220328'),('12','한재희','차정민','2023-05-09','내용 안녕하세요 학생생활안전부 한재희선생님입니다\n징계 활동 일지를 금일 16시 30분까지 제출해주세요.','S220328'),('13','임국진','차정민','2023-05-09','내용 안녕하세요~ 삼성고 4기 졸업생 부탁으로 안내드립니다.\n\n아래 글 읽어보시고~ 설문에 도움을 주고 싶은 학생만\n해당 링크에 들어가셔서 설문 부탁드립니다.\n\n(연구 윤리에 따라 본인이 희망하는 경우만 참여하시면 됩니다)\n\n설문에 참여한 경우 10명을 추첨하여 이디야 커피 쿠폰을 준다고 하니 참고하시기 바랍니다.\n\n----------------설문내용-------------------------------------\n안녕하십니까? 본 연구는 코로나19가 대인관계 및 학업, 정서의 측면에서 청소년의 학교생활 적응에 끼친 영향에 대해 조사하는 연구입니다. 본 설문지에 정답은 없으며, 여러분의 솔직한 답변을 부탁드립니다. 10분 정도 소요되며 설문을 통해 얻어진 개인정보는 조사 목적 및 과제 수행 외에는 사용되지 않으며 연구가 종료된 후 완전히 폐기될 예정입니다. 또한, 귀중한 시간을 내어 설문에 응해주신 분들을 대상으로 추첨을 통해 이디야 아이스티 기프티콘을 보내드릴 예정입니다. 추첨에 사용되는 개인정보 또한 추첨 목적 외에는 사용되지 않으며, 이후 완전히 폐기됩니다. 귀중한 시간을 내어 설문에 참여해주셔서 감사드립니다.\n\n-대전대학교 사회복지학과 박윤정 외 3인-\n\n\nhttps://forms.gle/sx9nbDzyTwaEoD5D9\n\n\n설문에 도움을 주실분은 위 링크에 가셔서 설문에 응답 부탁드립니다~\n\n감사합니다!!!','S220328'),('14','인재관','차정민','2023-05-08','내용 [인재관 생활규정위반 안내]\n\n안녕하세요. 인재관 운영지원실입니다.\n \n차정민 학생은 5월 7일 <점호 이후 타호실 이동> 사유로 적발되어 규정위반 대상자가 되었습니다.\n \n1. 위반 사항 : 점호 이후 타호실 이동\n2. 적용 규정 : 관찰쪽지 1회\n \n1회 위반 - 관찰쪽지 1회 / 2회 위반 - 관찰쪽지 1회+학부모 통보 / 3~5회회 위반 - 2,4,영구 퇴사규정 적용되므로 기숙사 규정에 대한 준수의식 가지고 생활 부탁드립니다.','S220328'),('15','최유진','차정민','2023-05-08','내용 최유진 선생님이 관찰쪽지를 발급하였습니다.','S220328'),('16','정소희','차정민','2023-05-07','내용 [5월 8일 월요일부터 독서 수업시간 수행평가 있음] 안녕하세요? 오랜만입니다. \n4월 마지막주에 안내한 바와 같이 5월 8일부터 수행평가가 있습니다. \n타이핑할 수 있는 Tab이나 노트북, 서평할 책을 반드시 가지고 와야합니다. 수행평가 1-2차시에는 300자 이내로 독서활동지를 쓰는 시간이 있습니다. \n이 쪽지는 정소희선생님 독서 분반 친구들 페메나 카톡으로 널리널리 알려주면 좋겠습니다. ','S220328'),('17','이강희','차정민','2023-05-02','내용 안녕하세요^^ 역사교사 이강희입니다.\n역사란 무엇인가 행사에 많은 참여바랍니다. (상세 내용은 학생게시판에 올라가 있습니다.)\n책소개 영상은\nhttps://drive.google.com/drive/folders/1HKaYuj7cThPuPIhnv16YcU1Z5M7qQ96K?usp=sharing\n여기서 시청할 수 있고 아직 안 올라온 영상들도 차차 업로드 될 예정입니다!','S220328'),('18','이정석','차정민','2023-05-02','내용 [정보과학 논술수행평가 주소 안내]\n안녕하세요.\nIT교사 이정석입니다.\n\n정보과학 논술수행평가 주소를 아래와 같이 드립니다.\n\n수행평가는 오늘 수업시간 중에 작성완료하시면 됩니다. 제출기한은 점수에 해당하니 시간을 엄수해주세요!!\n\nhttps://forms.gle/csVUExqKU6cBMqY49','S220328'),('19','한재희','차정민','2023-05-01','내용 안녕하세요 학생생활안전부 한재희 선생님입니다  : )\n교내 봉사 활동이 종료되면 일지 밑에 있는 담당자 확인 서명을 받아서\n저에게 제출해주세요.\n종료되는 즉시 확인 서명을 받고 제출하세요 ^^\n감사합니다.','S220328'),('0','이현경(영어)','김현준','2022-11-10','내용 이현경(영어) 선생님이 C103 갤럭시홀의 장소사용 신청을 승인 하였습니다.','S220411'),('1','수신인','김현준','2022-11-10','내용 안재원 선생님이 2022-11-10부터 2022-11-10까지의 장소사용을 일괄 신청하였습니다. (동일한 날짜/시간에 예약되어 있던 경우 일괄 자동 취소 됩니다.)','S220411'),('2','진요한','김현준','2022-11-10','내용 기숙사 거주 학생 및 3학년들에게 안내합니다.\n\n내일(11일,금) N동 1층 충무관 쪽 로비에서 고3 수능 응원 음악회가 진행됩니다.\n버스킹 형식으로 진행되며, 누구든 관람이 가능합니다.\n\n단, 원활한 행사 진행을 위해 1층 로비에 캐리어 및 귀가 짐을 두지 않길 협조드립니다.\n해당 구역에 차단봉을 통해 표시가 되어 있으니 해당 구역 안쪽에는\n짐을 두지 않도록 해 주세요.\n\n많이 구경 오세요-^^\n\n그동안 수고 많았고, 즐거운 귀가길 되길 소원합니다.','S220411'),('3','윤용철','김현준','2022-11-10','내용 안녕하세요. IT 윤용철 선생님입니다. \n\nIT 편집부에 대한 문의가 많아 쪽지 전송합니다. \n\nIT 편집부는 IT 디플로마 과정 학생들의 학생회 역할을 수행하는 조직입니다. \n\n선생님과 함께 IT 디플로마에서 개최되는 모든 행사를 IT 편집부에서 준비하고 진행합니다. \n\n생기부에서 IT 편집부에서 활동한 내용을 기록해주기도 합니다. \n\nIT 편집부에 관심이 있는 학생들은 아래 링크에 접속하여 설문 작성 후 제출 해 주시기 바랍니다.\n\nhttps://docs.google.com/forms/d/e/1FAIpQLSdAsVCJTrUSa6FGOeXCAI6rT2xAfHKF_tzJTQLfA8kDL4PvlQ/viewform','S220411'),('4','이현경(영어)','김현준','2022-11-10','내용 여러분 안녕하세요! \n\n오늘 EP1 일본어 더빙 * 중국 문화 발표 행사 참여 안내입니다. \n일시 및 장소 : 오늘(10일) 저녁 7시 10분~7시 15분까지 갤럭시홀 입실 및 착석 부탁합니다. \n                    7시 20분에 행사가 시작 되니 착석시간을 꼭 지켜주세요. \n주요 사항 \n1. 오늘 저녁시간 전까지 갤럭시홀로 장소이동 신청을 해주세요. 이현경 선생님에게 승인요청!\n2. 온라인 활동지 작성을 할 예정이니 태블릿PC등 작성 도구가 있으면 도움이 됩니다. \n3. (중요)오늘 발표와 더빙 영상, 인터뷰, 질의 응답은 우리 큰사인들이 열심히 준비하여 선보는 \n것인 만큼 응원하는 마음과 관람 에티켓을 가지고 와 주세요! \n\n잠시후 만나요!','S220411'),('5','수신인','김현준','2022-11-10','내용 안녕하세요 1학년부에서 전달합니다.\n\n오늘(10일, 목) 면학실 불시 점검을 실시했습니다.\n\n정리정돈 미실시 학생 명단은 담임선생님께 보내드렸고\n\n내일 오전 중에 재점검을 하겠으니 내일 점검 시 정리정돈 되어 있지 않은 학생들에게는\n\n관찰쪽지를 보내드리겠습니다.\n\n오늘도 빠이팅입니다.','S220411'),('6','임국진','김현준','2022-11-10','내용 (SDC 홍보관 견학) 설문에 참여해주세요~ 이미 작성하신 분은 패스해주세요~\n\n\n안녕하세요~ 1학년부 임국진입니다~\n\nSDC 견학 이후 일주일 안에 큰사넷-교과외설문에 가셔서 \n\n느낀점 및 소감(200자 이상)을 작성해 주시면 감사하겠습니다~~\n\n설문에 응답을 해주셔야 디플로마 진로직업체험 1시간이 인정될 수 있습니다.\n\n아직 작성 못하신 분은 바로 가셔서 작성 부탁드려요~\n(생기부 작성 시 참고자료로 사용 될 수 있으니 성실하게 작성 부탁드립니다)\n\n감사합니다~\n\n\n ','S220411'),('7','수신인','김현준','2022-11-09','내용 안재원 선생님이 A402의 장소사용 신청을 승인 하였습니다.','S220411'),('8','윤용철','김현준','2022-11-09','내용 안녕하세요. IT 윤용철 선생님입니다. \n\nIT 디플로마 과정 편집부에서 9기 신입생을 모집한다고 합니다. \n\nIT 디플로마 편집부에 관심이 있는 학생은 아래의 링크에 접속하여 설문에 응답 후 제출 해 주세요.\n\nhttps://docs.google.com/forms/d/e/1FAIpQLSdAsVCJTrUSa6FGOeXCAI6rT2xAfHKF_tzJTQLfA8kDL4PvlQ/viewform','S220411'),('9','맹사랑','김현준','2022-11-09','내용 [1학년] 2022년 2학기 자율탐구활동 중간점검 관련\n(9기 전체 학생들에게 보내는 메시지이니, 대표학생 외에는 스킵해주세요.)\n\n자율탐구활동 중간점검을 큰사넷 설문을 통해 \'11/11(금)\'까지 진행합니다. \n대상: 자율탐구활동 대표 학생(1인인 경우, 1인이 곧 대표)\n - 중간점검 설문은 대표 학생만 참여해주세요.\n기간 내에 중간점검 설문에 참여하지 않을 경우, \"중도 포기\"로 간주합니다.\n따라서 기간 내에 반드시 중간점검 설문에 참여해주세요.\n\n기타 관련 문의는 맹사랑T에게 쪽지 or 1학년부(c408)로 방문해주세요.\n ','S220411'),('10','윤용철','김현준','2022-11-08','내용 오늘 소프트웨어 과제연구발표회에 \n\n참여하는 학생들은 필히 필기구를 지참하시길 바랍니다.','S220411'),('11','이현경(영어)','김현준','2022-11-08','내용 일본어 더빙 상영회·중국문화 탐구 발표회 방청 신청 안내 \n\n2022 외국어과 마지막 행사인 일본어 더빙 상영회·중국문화 탐구 발표회를 소개합니다. \n자세한 내용은 학생공지사항을 참고해 주세요. \n \n1. 방청 대상: 전교생(1, 2, 3학년)중 신청자\n \n2. 세부 내용\n \n방청 신청 : 현재~11월 9일(수)까지. 큰사넷 설문조사\n \n행사 장소 및 일시 : 갤럭시홀에서 11월 10일(목) EP1\n \n참고 사항 : 동영상 제출자, 발표자, 참관자는 활동지를 참고하여 학교생활기록부의 자율활동 or 진로활동에 활동 내용을 기록할 수 있음.\n(참관자는 활동지를 반드시 제출해야 근거 자료로 활용해 생활기록부에 기록 가능함)\n*행사 관련 궁금한 사항은 외국어과(N202) 배선옥, 신주영 선생님께 문의 바랍니다.\n \n ','S220411'),('12','전호영','김현준','2022-11-08','내용 안녕하세요 교육과정센터에서 알려드립니다.\n\n금일 1차 수강신청이 7교시에  큰사넷에서 진행됩니다.\n\n반드시 참여하여 주시길바랍니다!!','S220411'),('13','수신인','김현준','2022-11-07','내용 안녕하세요 1학년부에서 안내합니다\n11월 23일(수)에 시행되는 11월 학력평가를 대비하고자 \n11월 14(월)~15일(화) 원격수업 기간 이틀 동안\nET 16:50부터(100분간) 모의고사를 개최하고자 합니다.\n응시 희망 학생은 아래 링크에 접속해서 접수해 주길 바랍니다. https://forms.gle/mENtJtwkewho6Vc4A\n더불어 줌으로 접속하지 못하더라도\n2020년 11월 시행된 모의고사 문제지를 원하는 학생은 \n전형진 T에게 쪽지 보내주길 바랍니다. \n해당일 모의고사 시행 방법은 각자의 집에서 줌 접속 후 시간에 맞춰\n모의고사를 치루는 방식입니다.\n문의는 1학년부 전형진 T에게 해주길 바랍니다.','S220411'),('14','양병문','김현준','2022-11-07','내용 안녕하세요. 교육과정 담당교사 양병문입니다.\n\n오늘(월) 7교시에는 수강신청 교육이 있습니다.\n\nhttps://youtu.be/BVIEfxtfpSI\n\n이 링크로 접속하셔서 시청해주기 바랍니다.\n\n이후 일정\n1차 수강신청 : 11월 8일 ~ 11월 11일\n2차 수강신청 : 2회고사 끝나는 날 \n\n* 오늘 3개년 수강신청 계획서에 대한 피드백을 전달 받을 텐데요. \'다시 작성\' 하라는 메시지나 코디와 상담하라는 메시지를 받은 학생은 수강 신청 전에 꼭 코디 선생님과 상담해 주세요.','S220411'),('15','이지현','김현준','2022-11-04','내용 1학년 학생들에게 안내합니다.\n\n다음 링크로 들어가서 설문조사에 참여하시기 바랍니다.\n\nhttps://docs.google.com/forms/d/1UWEvaBIUdyfgClQ3RN0oivlV7DvzqWUqlT8IUm9Iufs/prefill','S220411'),('16','임지현','김현준','2022-11-04','내용 1학년 학생 대상 진학교육 안내 (11/04 금요일 7교시)\n\n안녕하세요. 아래와 같이 1학년 대상 진학교육이 진행될 예정입니다.\n6교시 종료 후 갤럭시홀로 모여주세요.\n\n일시 : 11월 04일 금요일 7교시(15:30~16:20)\n장소 : 갤럭시홀\n내용 : 학생부종합전형에 대한 이해','S220411'),('17','인재관','김현준','2022-11-04','내용 인재관 선생님이 관찰쪽지를 발급하였습니다.','S220411'),('18','수신인','김현준','2022-11-03','내용 안재원 선생님이 A402의 장소사용 신청을 승인 하였습니다.','S220411'),('19','수신인','김현준','2022-11-03','내용 안재원 선생님이 A402의 장소사용 신청을 승인 하였습니다.','S220411');
/*!40000 ALTER TABLE `msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(100) NOT NULL,
  `nick` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES ('S220328','S220328!@#','Developer'),('S220411','Guswns@06','nibba');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 12:24:30
