/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.14-MariaDB : Database - ssgDb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssgDb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssgDb`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(100) NOT NULL,
  `body` text NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `recommend` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  `likesCount` int(10) unsigned NOT NULL,
  `commentsCount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

/*Data for the table `article` */

insert  into `article`(`id`,`regDate`,`updateDate`,`title`,`body`,`hit`,`recommend`,`memberId`,`boardId`,`likesCount`,`commentsCount`) values 
(1,'2020-12-17 13:12:03','2021-01-12 11:42:07','자유 게시판 첫 글','자유 게시판 첫 내용',12,0,1,1,0,1),
(2,'2020-12-17 13:12:03','2021-01-12 11:42:07','공지사항 게시판 첫 글','공지사항 게시판 첫 내용',0,0,1,2,0,1),
(3,'2020-12-17 13:12:03','2021-01-12 11:42:08','자바#1 변수#1 숫자','\r\n# 자바\r\n<br>\r\n## 변수#1 숫자\r\n- 자바에서 변수는 자료형(데이터형)을 갖는다\r\n- 자료형은 정수형, 실수형, 문자, 문자열, 불린 등있다\r\n- 자바에서 따옴표 없는 숫자는 그대로 숫자로 인식한다\r\n- +, -, *, / 등 키보드에 있는 기호로 사칙연산이 가능하다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nSystem.out.printf(\" 5 + 3 \");\r\nSystem.out.printf(\" 2.5 + 3.7 \");\r\nSystem.out.printf(\" 2 * 5 \");\r\n```\r\n## 결과 \r\n - 8\r\n - 6.2\r\n - 10',4,0,1,3,0,1),
(4,'2020-12-17 16:17:50','2021-01-12 11:42:08','자바#2 변수#2 문자','# 자바\r\n<br>\r\n## 변수#2 문자\r\n- 문자형 변수에는 문자(Character)와 문자열(String)이 있다\r\n- 문자는 한 글자, 스트링은 문자 여럿을 의미한다\r\n- 문자는 작은 따옴표, 문자열은 큰 따옴표로 감싸야 한다\r\n- 공백이 포함된다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nSystem.out.printf(\'쌀\');\r\nSystem.out.printf(\"흰 쌀 밥\");\r\nSystem.out.printf(\'치킨\');\r\nSystem.out.printf(\"맥\");\r\n```\r\n## 결과\r\n - 쌀\r\n - 흰 쌀 밥\r\n - 에러\r\n - 맥\r\n<br>\r\n## 부연\r\n - 문자열을 작은 따옴표로 감싸면 에러가 난다\r\n - 문자를 큰 따옴표로 감싸는 건 에러가 나지 않는다\r\n - 한 글자도 문자열이 될 수 있다',0,0,1,3,0,0),
(5,'2020-12-18 10:29:46','2021-01-12 11:42:08','자바#3 변수#3 그 외','# 자바\r\n<br>\r\n## 변수#3 그 외\r\n- 큰 따옴표를 문자열에 넣기 위해서는 역슬래시를 사용해야 한다\r\n- \\n을 쓰면 문자열에 줄바꿈을 삽입할 수 있다\r\n- 숫자를 더하는 것처럼 문자열끼리도 더하기가 가능하다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nSystem.out.printf(\"\"Waaaaaaaagh!!\"\");\r\nSystem.out.printf(\"그\\n님\\n티\\n\");\r\nSystem.out.printf(\"치킨\"+\"맥주\"+\"=치맥\");\r\n```\r\n## 결과\r\n - \"Waaaaaaaagh!!\"\r\n - 그\r\n - 님 \r\n - 티\r\n - 치킨맥주=치맥',0,0,1,3,0,0),
(6,'2020-12-18 10:31:49','2021-01-12 11:42:08','자바#4 변수#4 배경지식#1 정수','# 자바\r\n<br>\r\n## 변수#4 배경지식#1 정수\r\n- 변수에는 문자, 숫자 등 데이터를 담을 수 있다\r\n- 일반적으로 명령어가 끝났을 때는 세미콜론(;)을 사용한다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nint a;\r\na = 2;\r\nSystem.out,printf(a+1);\r\n```\r\n## 결과\r\n - 3\r\n<br>\r\n## 부연\r\n- int a는 a를 정수형 변수로 선언한 것이다\r\n- a = 2는 정수형 변쉐 a에 정수 2를 할당한 것이다\r\n- a(=2)에 + 1한 값을 출력하므로 결과가 3이 나온다\r\n- 정수형 변수는 주로 int가 쓰이지만 더 큰 값을 저장할 수 있는 long도 있다',0,0,1,3,0,0),
(7,'2020-12-18 11:18:42','2021-01-12 11:42:09','자바#5 변수#5 배경지식#2 실수','# 자바\r\n<br>\r\n## 변수#5 배경지식#2 실수\r\n- 실수는 float, double로 선언할 수 있다\r\n- 1은 정수이고 1.1은 실수이며 두 형식은 완전히 별개로 취급된다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nint a;\r\na = 2.2;\r\nSystem.out,printf(a+1.1);\r\n```\r\n## 결과\r\n - 에러\r\n<br>\r\n## 부연\r\n- 자료형에 맞지 않는 데이터를 할당할 경우 에러가 발생한다',3,0,1,3,0,1),
(8,'2020-12-21 22:21:33','2021-01-12 11:42:09','자바#6 변수#6 배경지식#3 문자열','# 자바\r\n<br>\r\n## 변수#6 배경지식#2 문자열\r\n- 자료형에는 문자를 담기 위한 String이 있다\r\n- String은 덧셈 기호로 문자열을 합칠 수 있다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nString str = \"맥주 한 캔 땡긴다\";\r\na = 2.2;\r\nSystem.out,printf(str + a);\r\n```\r\n## 결과\r\n - 맥주 한 캔 땡긴다2.2\r\n## 부연\r\n- 문자열형 변수에 숫자를 더할 경우 숫자가 그대로 문자열에 추가된다\r\n- 숫자 - > 문자열로는 치환이 가능하다\r\n- 반대는 성립하지 않는다',0,0,1,3,0,0),
(9,'2020-12-22 09:41:24','2021-01-12 11:42:09','자바#7 주석','# 자바\r\n<br>\r\n## 주석\r\n- 주석은 // 코드, /* 코드 */ 식으로 사용된다\r\n- 주석에 포함된 코드는 활성화되지 않는다\r\n- 코딩 설명을 위해 쓰이며, 일시적으로 코드를 비활성화하기 위해서도 쓰인다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nString str = \"난 치킨\";\r\nString not = \"안\";\r\nString like = \"좋아해\";\r\n\r\n// str = str + not;\r\nstr = str + like;\r\n\r\nSystem.out,printf(str);\r\n```\r\n## 결과\r\n - 난 치킨 좋아해\r\n## 부연\r\n- ctl + / 단축키로 커서가 있는 줄의 코드를 주석 처리할 수 있다\r\n- ctl + shift + / 단축키로 드래그된 코드를 전부 주석처리할 수 있다',0,0,1,3,0,0),
(10,'2020-12-22 09:51:05','2021-01-12 11:42:10','자바#8 데이터 타입#1','# 자바\r\n<br>\r\n## 데이터 타입#1 데이터 크기\r\n- 데이터 크기의 최소 단위는 0과 1로 이루어진 bit이다\r\n- byte는 bit*8의 크기를 가진다\r\n- byte부터는 각 1024배씩 커지면서 크기 단위가 정해진다\r\n- kilo, mega, giga, tera, peta, exa ... byte로 이어진다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\n8 bit = 1 byte\r\n8,192 bit = 1024 byte = 1 kilobyte \r\n8,388,608 bit = 1024kilobyte = 1megabyte\r\n...\r\n...\r\n```\r\n## 결과\r\n - ...\r\n## 부연\r\n- byte 단위부터는 1024 배 커질 때마다 용량의 단위가 바뀐다',0,0,1,3,0,0),
(11,'2020-12-22 10:05:12','2021-01-12 11:42:10','자바#9 데이터 타입#2','# 자바\r\n<br>\r\n## 데이터 타입#2 정수형 데이터\r\n- 정수형 데이터는 byte(1 byte), short(2 byte), int(4 byte), long(8 byte) 등이 있다\r\n- 원칙적으로는 각 상황에 맞게 적절한 정수형 데이터를 사용하면 좋다\r\n- 실질적으로는 속도도 느리지 않고 큰 수까지 표현할 수 있는 int가 범용적으로 쓰인다\r\n\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\n...\r\n```\r\n## 결과\r\n ...\r\n## 부연\r\n- int는 -2,147,483,648~2,147,483,647, 약 21억까지 표현할 수 있다\r\n- long은 -9,223,372,036,854,775,808 ~ 9,223,372,036,854,775,807, 약 900경까지 표현할 수 있다\r\n- 실수형의 경우 float은 4 byte, double은 8 byte까지 표현 가능하다',0,0,1,3,0,0),
(12,'2020-12-22 10:20:17','2021-01-12 11:42:10','자바#10 데이터 타입#3','# 자바\r\n<br>\r\n## 데이터 타입#3 상수와 데이터 타입\r\n- 상수는 변수의 반대 의미로, 변하지 않는 값을 의미한다\r\n- int a = 2; 에서의 2가 상수이다.\r\n- 변수의 byte, short, int, long 처럼 상수에도 데이터 타입이 있다.\r\n- 정수는 기본적으로 int형이며 실수는 double형이다\r\n- 각 상수 뒤에 .F, L을 붙이거나 앞에 (float), (long)을 붙여서 형식을 지정해줄 수 있다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nint a = 2;  // a는 변수, 2는 상수이다\r\n2 = 5; // 상수인 2에는 다른 값인 5를 할당할 수 없으므로 에러가 난다\r\nfloat = 2.2; // double을 float형으로 치환할 수 없다는 에러가 난다\r\n```\r\n## 결과\r\n ...\r\n## 부연\r\n- 데이터 타입에 따른 에러는 각 타입을 따로 지정해주는 방식으로 해결할 수도 있다',0,0,1,3,0,0),
(13,'2020-12-23 09:17:53','2021-01-12 11:42:11','자바#11 자료형 변환','# 자바\r\n<br>\r\n## 자료형 변환\r\n- 같은 값이라도 자료형 별로 bit는 다르게 저장된다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nint a = 200;\r\nfloat b = 200.0;\r\n```\r\n## 결과 \r\na bit == 00000000 00000000 00000000 11001000\r\nb bit == 01000011 01001000 00000000 00000000\r\n\r\n## 부연\r\n- 데이터의 손실이 없다면 자동 형 변환이 일어난다\r\n- int a = 2; float b = a; .. b == 2;\r\n- 위의 경우는 정수형 -> 실수형으로 변환하는 과정에서 데이터 손실이 없기 때문에 자동적으로 자료형이 변한다\r\n- 반대로 float을 int에 대입할 경우 에러가 난다\r\n- 형 변환 규칙\r\n- byte -> shot, char -> int -> long -> float -> double\r\n- 자동 형 변환이 일어나지 않는 경우도 데이터 앞에 (int)를 붙이는 것과 같은 방식으로 명시적 형 변환도 가능하다',0,0,1,3,0,0),
(14,'2020-12-23 09:28:35','2021-01-12 11:42:11','자바#12 연산자','# 자바\r\n<br>\r\n## 연산자\r\n- 연산자에는 대입, 산술, 비교, 논리 연산자 등이 있다\r\n- 산술 연산자는 + - * / % 등이 있다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nint a = 10;\r\n\r\na = a + 10;\r\nSystem.out.println(a);\r\n\r\na = a - 10;\r\nSystem.out.println(a);\r\n\r\na = a * 10;\r\nSystem.out.println(a);\r\n\r\na = a / 10;\r\nSystem.out.println(a);\r\n\r\na = a % 10;\r\nSystem.out.println(a);\r\n\r\nString b = \"와\"\r\nString c = \"우\"\r\n\r\nSystem.out.println(b + c);\r\n```\r\n## 결과 \r\n20\r\n10\r\n100\r\n10\r\n1\r\n와우\r\n\r\n## 부연\r\n- 더하기 연산자는 문자열과 문자열을 합칠 때도 사용할 수 있다\r\n- 정수 나누기 연산 시 실수 부분은 버려진다 (3 / 10 == 3.3333... ) -> 3\r\n- 정수를 실수로 나눌 경우 자동 형 변환이 일어나고 자료형이 실수가 된다 -> 3.333...',0,0,1,3,0,0),
(15,'2020-12-23 09:36:20','2021-01-12 11:42:11','자바#13 단항 연산자','# 자바\r\n<br>\r\n## 단항 연산자\r\n- 단항 연산자는 항이 하나인 연산자이다\r\n- -3, +2 등 양수 및 음수 표현이 가능하다\r\n- a++, b-- 등 값을 1씩 더하거나 뺄 수 있다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nint a = 10;\r\n\r\nSystem.out.println(a++);\r\n\r\nSystem.out.println(++a);\r\n\r\nSystem.out.println(--a);\r\n\r\nSystem.out.println(a--);\r\n\r\nSystem.out.println(a);\r\n```\r\n## 결과 \r\n10\r\n12\r\n11\r\n11\r\n10\r\n\r\n## 부연\r\n- ++, --와 같은 단항 연산자는 항의 앞 뒤 모두 자리할 수 있다\r\n- 항의 앞에 자리할 경우 연산 후 println이 실행된다\r\n- 항의 뒤에 자리할 경우 println 실행 후 연산이 일어난다',4,0,1,3,0,0),
(16,'2020-12-29 18:29:25','2021-01-12 11:42:11','자바#14 Boolean','# 자바\r\n<br>\r\n## Boolean\r\n- Boolean은 참과 거짓을 의미하는 데이터 타입이다\r\n- bool이라고도 부른다\r\n- true, false 두 가지의 값을 갖는다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\nboolean a = true;\r\nboolean b = false;\r\nif( a ){\r\nSystem.out.println(\"a는 참이다\");\r\n}\r\nif( b ){\r\nSystem.out.println(\"b는 참이다\");\r\n}\r\n```\r\n## 결과 \r\n- a는 참이다\r\n\r\n## 부연\r\n- 없음',0,0,1,3,0,1),
(17,'2020-12-29 18:32:44','2021-01-12 11:42:12','자바#15 비교 연산자','# 자바\r\n<br>\r\n## 비교 연산자\r\n- 주어진 값들이 같은지, 다른지, 큰지, 작은지 등을 구분하는 연산자\r\n- 참true, 거짓false 중 하나의 결과를 가진다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\n\r\nint a = 10;\r\nint b = 20;\r\n\r\nif( a == b ){\r\nSystem.out.println(\"a와 b는 같다\");\r\n}else if( a != b ){\r\nSystem.out.println(\"a와 b는 다르다\");\r\n}\r\n\r\nif( a >= b ){\r\nSystem.out.println(\"a는 b보다 크거나 같다\");\r\n}else if( a < b ){\r\nSystem.out.println(\"a는 b보다 작다\");\r\n}\r\n\r\n```\r\n## 결과 \r\n- a와 b는 다르다\r\n- a는 b보다 작다\r\n\r\n## 부연\r\n- 관계 연산자라고도 부른다',25,0,1,3,1,2),
(18,'2021-01-08 12:13:21','2021-01-12 11:42:12','자바#16 조건문','# 자바\r\n<br>\r\n## 조건문\r\n- if( 조건 ) { 실행할 코드 }\r\n- 특정 조건 하에서만 코드가 실행되게 설계할 수 있다\r\n- else if, else를 뒤이어 붙일 수 있다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\n\r\nif ( true ) {\r\n	System.out.println(\"Ture\");\r\n}\r\n\r\nif ( false ) {\r\n	System.out.println(\"False\");\r\n}\r\n\r\n```\r\n## 결과 \r\n- Ture\r\n<br>\r\n\r\n### 예시 #2\r\n<br>\r\n```java\r\n\r\nint a = 5;\r\nint b = 10;\r\n\r\nif ( a > b ) {\r\n	System.out.println(\"a는 b보다 크다\");\r\n}\r\n\r\nelse {\r\n	System.out.println(\"a는 b보다 작다\");\r\n}\r\n\r\n```\r\n## 결과 \r\n- a는 b보다 작다\r\n\r\n## 부연\r\n- else if는 선행하는 if문의 조건이 만족되지 않을 때만 실행된다\r\n- else는 선행하는 if, else if의 조건이 전부 만족되지 않을 때 실행된다',0,0,1,3,0,0),
(19,'2021-01-12 11:41:58','2021-01-12 11:42:12','자바#17 논리 연산자','# 자바\r\n<br>\r\n## 논리 연산자\r\n- 값의 참, 거짓에 대한 연산자\r\n- 두 논리 값을 연산해 결과를 도출해낸다\r\n- &&는 값 모두가 참일 때만 참이 된다\r\n- ||는 값 중 하나라도 참일 때만 참이 된다\r\n- !는 값이 반대가 된다\r\n<br>\r\n### 예시\r\n<br>\r\n```java\r\n\r\nboolean A true;\r\nboolean B false;\r\nboolean C true;\r\nboolean D false;\r\n\r\nif ( A && B ) {\r\n	System.out.println(\"예문 1\");\r\n}\r\n\r\nif ( A && C ) {\r\n	System.out.println(\"예문 2\");\r\n}\r\n\r\nif ( B && C ) {\r\n	System.out.println(\"예문 3\");\r\n}\r\n\r\nif ( A || B ) {\r\n	System.out.println(\"예문 4\");\r\n}\r\n\r\nif ( A || C ) {\r\n	System.out.println(\"예문 5\");\r\n}\r\n\r\nif ( B || D ) {\r\n	System.out.println(\"예문 6\");\r\n}\r\n\r\n```\r\n## 결과 \r\n- 예문 2\r\n- 예문 4\r\n- 예문 5\r\n<br>\r\n\r\n## 부연\r\n- boolean 자료형 외에도 참 거짓을 구하는 연산에는 적용할 수 있다',0,0,1,3,0,0);

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(100) NOT NULL,
  `code` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `board` */

insert  into `board`(`id`,`regDate`,`updateDate`,`name`,`code`) values 
(1,'2020-12-17 13:12:03','2020-12-17 13:12:03','FREE','free'),
(2,'2020-12-17 13:12:03','2020-12-17 13:12:03','NOTICE','notice'),
(3,'2020-12-17 13:12:03','2020-12-17 13:12:03','IT','it');

/*Table structure for table `ga4DataPagePath` */

DROP TABLE IF EXISTS `ga4DataPagePath`;

CREATE TABLE `ga4DataPagePath` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `pagePath` char(100) NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pagePath` (`pagePath`)
) ENGINE=InnoDB AUTO_INCREMENT=602 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ga4DataPagePath` */

insert  into `ga4DataPagePath`(`id`,`regDate`,`updateDate`,`pagePath`,`hit`) values 
(390,'2021-01-06 20:29:59','2021-01-06 20:29:59','/article_detail_7.html',3),
(547,'2021-01-09 14:46:26','2021-01-09 14:46:26','/article_detail_15.html',4),
(548,'2021-01-09 14:46:26','2021-01-09 14:46:26','/article_detail_3.html',4),
(592,'2021-01-12 11:42:14','2021-01-12 11:42:14','/',279),
(593,'2021-01-12 11:42:14','2021-01-12 11:42:14','/article_list_it_1.html',160),
(594,'2021-01-12 11:42:14','2021-01-12 11:42:14','/index.html',106),
(595,'2021-01-12 11:42:14','2021-01-12 11:42:14','/article_search.html',70),
(596,'2021-01-12 11:42:14','2021-01-12 11:42:14','/article_list_free_1.html',43),
(597,'2021-01-12 11:42:14','2021-01-12 11:42:14','/article_list_notice_1.html',39),
(598,'2021-01-12 11:42:14','2021-01-12 11:42:14','/article_detail_17.html',25),
(599,'2021-01-12 11:42:14','2021-01-12 11:42:14','/stat.html',22),
(600,'2021-01-12 11:42:14','2021-01-12 11:42:14','/?dummy=123123123234234',15),
(601,'2021-01-12 11:42:14','2021-01-12 11:42:14','/article_detail_1.html',12);

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `loginId` char(100) NOT NULL,
  `loginPw` char(100) NOT NULL,
  `name` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `member` */

insert  into `member`(`id`,`regDate`,`updateDate`,`loginId`,`loginPw`,`name`) values 
(1,'2020-12-17 13:12:03','2020-12-17 13:12:03','admin','admin','관리자');

/*Table structure for table `recommend` */

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `recommend` tinyint(1) NOT NULL,
  `articleId` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `recommend` */

/*Table structure for table `reply` */

DROP TABLE IF EXISTS `reply`;

CREATE TABLE `reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `body` text NOT NULL,
  `articleId` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `reply` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
