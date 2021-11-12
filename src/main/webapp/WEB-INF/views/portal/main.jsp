
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
.nt{width: 90%; text-align: left; margin-top: 30px;}
section {column-width: 35em;background: #ffffff;padding: 5em 24em;}
  </style>
</head>
<body>
<div class="slide">
  <ul style="width: 100%">
    <li><img src="/resources/common/images/meme4.jpg" style="width: 100%; height: 100%; object-fit: cover;"></li>
    <li><img src="/resources/common/images/testmeme.jsp" style="width: 100%; height: 100%; object-fit: cover;"></li>
    <li><img src="/resources/common/images/testmeme.jsp" style="width: 100%; height: 100%; object-fit: cover;"></li>
    <li><img src="/resources/common/images/testmeme.jsp" style="width: 100%; height: 100%; object-fit: cover;"></li>
  </ul>
</div>
<div class="ly-container">
	<div class="row">
		<div class="col-11">
			<h2 class="nt" style="font-family: 'Lora', serif; ">━━━━━━━━━━━━━━━━━━━━ Jesus university Notice</h2>
		</div>
		<div>
				<section>
					<h2>Title</h2>
					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
						Quos fugiat dolor velit, voluptatum vel enim consectetur eligendi
						molestias quaerat magnam voluptatibus corrupti eos quae
						praesentium voluptate tempora, provident voluptatem voluptates
						tenetur odio perspiciatis quisquam eum? Consequuntur quaerat earum
						natus minima soluta non quam temporibus beatae, explicabo
						repudiandae nihil? Eaque obcaecati, nisi laudantium rem
						consectetur eos quas. A quaerat libero ipsam, dolor quas rem est
						suscipit nemo accusamus corrupti, quisquam ex tenetur sed.
						Voluptas, veniam veritatis aperiam quos, optio quo nihil, iusto
						inventore illum porro quae id. Similique reiciendis dolorem
						debitis quia dignissimos ea fugit aut! Saepe vel accusantium et
						adipisci! Soluta reprehenderit quidem odio vel a labore officiis
						quisquam libero ipsum. Nobis, natus voluptatum consequatur officia
						ipsa tempora aut veritatis cumque aperiam beatae velit! Non veniam
						aliquid at aut iste odit error, omnis rerum commodi odio voluptas,
						ex sunt, tempore laborum natus aspernatur unde autem enim nesciunt
						suscipit dolorum. Fugiat expedita eos saepe sapiente, recusandae
						distinctio placeat corporis, pariatur id dolorum libero asperiores
						illum laborum obcaecati ad quia ullam non porro magni accusamus
						est nulla soluta magnam! Quae obcaecati autem officiis. Natus
						minima ab, accusamus a quia in, praesentium vel eligendi ratione,
						esse et sit commodi! Quis id magnam vero! atus aspernatur unde
						autem enim nesciunt suscipit dolorum. Fugiat expedita eos saepe
						sapiente , recusandae distinctio placeat corporis, pariatur id
						dolorum libero asperiores illum laborum obcaecati ad quia ullam
						non porro magni accusamus est nulla soluta magnam! Quae obcaecati
						autem officiis. Natus minima ab, accusamus a quia in, praesentium
						vel eligendi ratione, esse et sit commodi! Quis id magnam vero!</p>
				</section>
			</div>
	</div>        
</div>
</body>
</html>