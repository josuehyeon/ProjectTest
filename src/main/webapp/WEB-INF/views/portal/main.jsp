<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title><style>
*{margin:0;padding:0;}
ul,li{list-style:none;}
.slide{height:400px;overflow:hidden;}
.slide ul{position:relative;height:100%;z-index: 1;}
.slide li{position:absolute;left:0;right:0;top:0;bottom:0;opacity:0;animation:fade 8s infinite;z-index: 1;}
.slide li:nth-child(1){animation-delay:0s; z-index: 1;}
.slide li:nth-child(2){background:#faa;animation-delay:2s; z-index: 1;}
.slide li:nth-child(3){background:#afa;animation-delay:4s; z-index: 1;}
.slide li:nth-child(4){background:#aaf;animation-delay:6s; z-index: 1;}
 /* 100 / 8 = 12.5 */
@keyframes fade {
  0% {opacity:0;}
  5% {opacity:1;}
  25% {opacity:1;}
  30% {opacity:0;}
  100% {opacity:0;}
}
  </style>
</head>
<body>
<div class="slide">
  <ul style="width: 100%">
    <li><img src="/resources/common/images/meme4.jpg" style="width: 100%; height: 100%; object-fit: cover;"></li>
    <li><img src="/resources/common/images/testmeme.jsp" style="width: 100%; height: 100%; object-fit: cover;"></li>
    <li></li>
    <li></li>
  </ul>
</div>
<div class="ly-container">
        <div class="ly-inner">
          <!-- 지식 공동체 -->
          <div class="intro-box">
            <p class="intro-title">미래를 개척하는 지식공동체</p>
            <div class="intro-list">
              <!-- 각 컨텐츠 -->
              <div class="round">
                <p class="title">글로벌<br>융합인재 양성</p>
              </div>
              <!-- 각 컨텐츠 -->
              <div class="round">
                <p class="title">혁신적 지식<br>생태계 구축</p>
              </div>
              <!-- 각 컨텐츠 -->
              <div class="round">
                <p class="title">지식기반<br>사회적 가치 창출</p>
              </div>
              <!-- 각 컨텐츠 -->
              <div class="round">
                <p class="title">지속가능한<br>대학발전 기반 구축</p>
              </div>
            </div>
          </div>

          <div class="content-wrap">
            <div class="content">
              <!-- 인재양성 -->
              <p class="content-title">글로벌 <br class="only-desktop show-tablet">융합인재 양성</p>
              <div class="text">
                <p class="common-smalltitle">창의성 및 인성교육 강화를 위한 자율적이고 융합적인 교육체계</p>
                <p class="desc">전공 간 벽을 낮추는 융합 L자형 교육체계 도입과 삶의 핵심적 주제에 대한 학제적 탐구와 비판적이고 창의적인 사고와 심층적 토론을 통해 협력적 실천 능력 배양을 목표로 다양한 학문적 접근 기회를 제공합니다. 학생자율교육과정, 학생설계전공과 융합 주제 강좌의 심층 있는 토론을 통하여 다양한 관점을 상호보완 할 수 있도록 도와줍니다.</p>
                <p class="common-smalltitle">인성 및 가치관 함양을 위한 독서 세미나</p>
                <p class="desc">동서양 고전을 심층적으로 읽어 인간 삶의 문제를 성찰하고 이를 통해 인류 공동체의 바람직한 일원으로서의 자질을 함양하는 수업입니다. 이 과정을 통해 학생들은 자율적인 교양인으로 살아갈 수 있는 자생력을 키웁니다.</p>
              </div>
              <!-- 가치창출 -->
              <p class="content-title">혁신적 지식 <br class="only-desktop show-tablet">생태계 구축</p>
              <div class="text">
                <p class="common-smalltitle">데이터사이언스와 전문분야 지식을 갖춘 디지털 혁신인재 양성, ‘데이터사이언스 대학원’</p>
                <p class="desc">모든 학문에 데이터사이언스 기반 교육을 제공하는 전 세계 학계의 흐름에 따라 데이터사이언스 전문대학원 신설을 통해 해당 분야에 대한 공통적이고 표준화된 교육과정을 개발함으로써 새로운 교육 모델을 제시하고 있습니다. 글로벌 시대에 선제적으로 대응할 수 있도록 학문 전분야에 경계를 뛰어넘는 초학제적 연구의 허브(hub)성격을 지향합니다.</p>
                <p class="common-smalltitle">미래선도 중점 학문분야의 연구역량 집중, 10-10 프로젝트</p>
                <p class="desc">세계학문 발전에 공헌할 수 있는 미래선도 중점 학문분야를 서울대학교가 집중 지원하여 다양한 학문분야가 세계 10위권으로 진입하고 선도적인 우수 연구역량을 갖출 수 있도록 지원하는 프로그램입니다. 이를 통해 서울대학교의 연구역량은 학교 및 국내에만 국한되지 않고 세계선도 학문 가치를 창출하는 연구중심대학의 모습을 더 확고히 할 것입니다.</p>
              </div>
              <!-- 공동체 -->
              <p class="content-title">지식기반<br class="only-desktop show-tablet">사회적 가치 창출</p>
              <div class="text">
                <p class="common-smalltitle">나눔의 선순환 및 국내외 사회공헌활동을 통한 사회 속의 대학 구현</p>
                <p class="desc">다양한 사회공헌활동 발굴을 통해 나눔을 실천하고 봉사하는 인재를 양성합니다. 교육과 연계한 사회공헌 참여를 통해 공헌활동 체험의 기회를 제공하고 사회에 폭넓은 기여를 할 수 있습니다. 이처럼 다양한 활동을 통해 학생들은 자원봉사, 세계시민, 인권의 개념을 알아가면서 다양성을 이해하게 되며 냉철한 이성과 따뜻한 가슴을 가진 ‘샤눔형(서울대+나눔)’ 인재로 성장합니다.</p>
                <p class="common-smalltitle">지식 공유와 환원의 다양한 지식 나눔 프로그램</p>
                <p class="desc">대학이 보유하고 있는 우수 강의를 온라인 강좌로 개발하여 운영합니다.(K- MOOC, SNUon, edX) 온라인으로 지식 콘텐츠를 공유함으로써 지식 보급을 통한 일반 대중의 지적 욕구를 충족시키며 사회적 책무를 수행합니다. 지식뿐 만 아니라 음악과 미술 등 대학의 문화 프로그램을 학내 구성원과 지역사회 주민에게 개방함으로써 나눔 문화를 확산시키고 국민의 대학으로 자리매김하고 있습니다. </p>
              </div>
              <!-- 구축 -->
              <p class="content-title">지속가능한 <br class="only-desktop show-tablet">대학발전 기반 구축 </p>
              <div class="text">
                <p class="common-smalltitle">미래형 스마트 멀티캠퍼스 구축</p>
                <p class="desc">제4차 산업혁명을 선도하고 혁신 성장 동력을 확보하기 위한 글로벌 R&amp;D 캠퍼스가 열립니다. 무인이동체(자동차, 선박, 항공) 분야를 구축하여 미래 성장 동력을 창출합니다. <br>신개념 ICT를 통한 캠퍼스 혁신을 통해서 미래 교육환경 변화에 대응하고 에너지 절약을 지향하는 친환경 스마트 캠퍼스를 구축해 나갑니다.</p>
                <p class="common-smalltitle">대학혁신시스템 구축</p>
                <p class="desc">급속한 사회변화에 따라 요구되는 대학의 혁신을 체계적이고 종합적으로 추진하기 위해 대학혁신센터를 설립하였습니다.<br>대학혁신센터는 학내외 데이터를 분석하고 중장기 대학 정책방향에   대한 연구를 통해 서울대학교 뿐만 아니라 국가 고등교육의 미래를 중장기적으로 고민하는 싱크탱크(Think-Tank) 역할을 수행할 것입니다.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
</body>
</html>