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
.slide li:nth-child(1){background:#ffa;animation-delay:0s; z-index: 1;}
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
</body>
</html>