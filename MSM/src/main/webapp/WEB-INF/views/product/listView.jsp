<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Goods List</title>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.10.1/css/mdb.min.css" rel="stylesheet">
<style>
      .md-pills .nav-link.active {
        color: #fff;
        background-color: #616161;
      }
      
      .card-img-top {
      	resize: both; /* 이미지 최대 사이즈에 적용 */
   		float: center; /* 가운데 정렬 */
   		max-width: 900px; /* 넓이를 지정 */
   		max-height: 170px; /* 높이를 지정 */
      }

</style>
</head>
<body>

<div class="container my-5">

  <!-- Section -->
  <section>
    <h3 class="font-weight-bold text-center dark-grey-text pb-2">New Arrival</h3>
    <hr class="w-header my-4">
    <p class="lead text-center text-muted pt-2 mb-5">You can find several product design by our professional team in
      this section.</p>
      		
    <!--First row-->
    <div class="row mb-5">
      <!--First column-->
      <div class="col-12">
        <!-- Nav tabs -->
        <ul class="nav md-pills flex-center flex-wrap mx-0" role="tablist">
          <li class="nav-item">
            <a class="nav-link active font-weight-bold text-uppercase" data-toggle="tab" href="#allList" role="tab">ALL</a>
          </li>
          <li class="nav-item">
            <a class="nav-link font-weight-bold text-uppercase" data-toggle="tab" href="#ringList" role="tab">RINGS</a>
          </li>
          <li class="nav-item">
            <a class="nav-link font-weight-bold text-uppercase" data-toggle="tab" href="#necklaceList" role="tab">NECKACES</a>
          </li>
          <li class="nav-item">
            <a class="nav-link font-weight-bold text-uppercase" data-toggle="tab" href="#earingList" role="tab">EARINGS</a>
          </li>
        </ul>
      </div>
      <!--First column-->
    </div>
    <!--First row-->
    
    <!--Tab panels-->
    <div class="tab-content mb-5">
      <!--ALL GOODS PANEL-->
      <div class="tab-pane fade show in active" id="allList" role="tabpanel">
        <!-- Grid row  -->
        <div class="row">
          <!-- Grid column A -->
          <div class="col-md-6 col-lg-3">
            <!-- Card1 Ring -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://blogfiles.naver.net/20150918_213/kudshop_1442512514663UeVJ9_JPEG/1.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name1</h5>
                <p class="card-text text-uppercase mb-3">RING</p>
              </div>
            </a>
            <!-- //Card1 -->

            <!-- Card2 Necklace -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="https://i.etsystatic.com/7353734/r/il/f366ff/924652814/il_570xN.924652814_cl1d.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name2</h5>
                <p class="card-text text-uppercase mb-3">Necklace</p>
              </div>
            </a>
            <!-- //Card2 -->
            
            <!-- Card3 Earing -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://www.chuu.co.kr/chuu-up/jyj/2018/180517/2/CU18051000001_d5.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name3</h5>
                <p class="card-text text-uppercase mb-3">Earing</p>
              </div>
            </a>
            <!-- //Card3 -->
          </div>
          <!-- //Grid column A -->

          <!-- Grid column B -->
          <div class="col-md-6 col-lg-3">
            <!-- Card1 Ring -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://blogfiles.naver.net/20150918_250/kudshop_1442507644498HBCzm_JPEG/5-1.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name4</h5>
                <p class="card-text text-uppercase mb-3">Ring</p>
              </div>
            </a>
            <!-- //Card1 -->

            <!-- Card2 Necklace -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="https://i.etsystatic.com/7353734/r/il/2d3d48/930966039/il_570xN.930966039_cx2f.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name5</h5>
                <p class="card-text text-uppercase mb-3">Necklace</p>
              </div>
            </a>
            <!-- //Card2 -->
            
            <!-- Card3 Earing -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://www.chuu.co.kr/chuu-up/jyj/2018/180517/2/CU18051000001_d3.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name6</h5>
                <p class="card-text text-uppercase mb-3">Earing</p>
              </div>
            </a>
            <!-- //Card3 -->
          </div>
          <!-- //Grid column B -->

          <!-- Grid column C -->
          <div class="col-md-6 col-lg-3">
            <!-- Card1 Ring -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://blogfiles.naver.net/20150602_96/kudshop_14332503433334YBku_PNG/Screen_Shot_2015-05-29_at_6.36.41_AM.png" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name7</h5>
                <p class="card-text text-uppercase mb-3">RING</p>
              </div>
            </a>
            <!-- //Card1 -->

            <!-- Card2 Necklace -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="https://img1.etsystatic.com/101/1/7961003/il_570xN.836639293_pvr7.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name8</h5>
                <p class="card-text text-uppercase mb-3">Necklace</p>
              </div>
            </a>
            <!-- //Card2 -->
            
            <!-- Card3 Earing -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://vivamoon.co.kr/web/upload/NNEditor/20180110/%EA%B7%80%EA%B1%B8%EC%9D%B4-%EB%94%94%ED%85%8C%EC%9D%BC_04_shop1_185757.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name9</h5>
                <p class="card-text text-uppercase mb-3">Earing</p>
              </div>
            </a>
            <!-- //Card3 -->
          </div>
          <!-- // Grid columnC -->
          
          <!-- Grid column D -->
          <div class="col-md-6 col-lg-3">
            <!-- Card1 Ring -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://blogfiles.naver.net/20150918_23/kudshop_14425125151783VGro_JPEG/4.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name10</h5>
                <p class="card-text text-uppercase mb-3">RING</p>
              </div>
            </a>
            <!-- //Card1 -->

            <!-- Card2 Necklace -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://www.uncommongoods.com/images/items/42100/42191_1_640px.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name11</h5>
                <p class="card-text text-uppercase mb-3">Necklace</p>
              </div>
            </a>
            <!-- //Card2 -->
            
            <!-- Card3 Earing -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://cherry07.img12.kr/product/170925_C708PWEA1/5.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name12</h5>
                <p class="card-text text-uppercase mb-3">Earing</p>
              </div>
            </a>
            <!-- //Card3 -->
          </div>
          <!-- // Grid column D -->          
        </div>
        <!-- // Grid row -->
      </div>
      <!--// All Goods Panel-->

      <!-- Ring Panel -->
      <div class="tab-pane fade" id="ringList" role="tabpanel">
        <!-- Grid row -->
        <div class="row">
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card1 Ring -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://blogfiles.naver.net/20150918_213/kudshop_1442512514663UeVJ9_JPEG/1.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name1</h5>
                <p class="card-text text-uppercase mb-3">RING</p>
              </div>
            </a>
            <!-- //Card1 -->
          </div>
          <!-- Grid column -->
          
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card2 Ring -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://blogfiles.naver.net/20150918_250/kudshop_1442507644498HBCzm_JPEG/5-1.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name2</h5>
                <p class="card-text text-uppercase mb-3">RING</p>
              </div>
            </a>
            <!-- //Card2 -->
          </div>
          <!-- Grid column -->
          
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card3 Ring -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://blogfiles.naver.net/20150602_96/kudshop_14332503433334YBku_PNG/Screen_Shot_2015-05-29_at_6.36.41_AM.png" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name3</h5>
                <p class="card-text text-uppercase mb-3">RING</p>
              </div>
            </a>
            <!-- //Card3 -->
          </div>
          <!-- Grid column -->
          
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card4 Ring -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://blogfiles.naver.net/20150918_23/kudshop_14425125151783VGro_JPEG/4.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name4</h5>
                <p class="card-text text-uppercase mb-3">RING</p>
              </div>
            </a>
            <!-- //Card4 -->
          </div>
          <!-- Grid column --> 
        </div>
        <!-- Grid row -->
      </div>
      <!-- RingPanel 2-->
      
      <!-- Necklace Panel 3 -->
      <div class="tab-pane fade" id="necklaceList" role="tabpanel">
        <!-- Grid row -->
        <div class="row">
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card1 Necklace -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="https://i.etsystatic.com/7353734/r/il/f366ff/924652814/il_570xN.924652814_cl1d.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name1</h5>
                <p class="card-text text-uppercase mb-3">Necklace</p>
              </div>
            </a>
            <!-- //Card1 -->
          </div>
          <!-- Grid column -->
          
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card2 Necklace -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="https://i.etsystatic.com/7353734/r/il/2d3d48/930966039/il_570xN.930966039_cx2f.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name2</h5>
                <p class="card-text text-uppercase mb-3">Necklace</p>
              </div>
            </a>
            <!-- //Card2 -->
          </div>
          <!-- Grid column -->
          
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card3 Necklace -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="https://img1.etsystatic.com/101/1/7961003/il_570xN.836639293_pvr7.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name3</h5>
                <p class="card-text text-uppercase mb-3">Necklace</p>
              </div>
            </a>
            <!-- //Card3 -->
          </div>
          <!-- Grid column -->
          
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card4 Necklace -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://www.uncommongoods.com/images/items/42100/42191_1_640px.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name4</h5>
                <p class="card-text text-uppercase mb-3">Necklace</p>
              </div>
            </a>
            <!-- //Card4 -->
          </div>
          <!-- Grid column --> 
        </div>
        <!-- Grid row -->
      </div>
      <!-- NecklacePanel 3-->
      
      <!-- Earing Panel 3 -->
      <div class="tab-pane fade" id="earingList" role="tabpanel">
        <!-- Grid row -->
        <div class="row">
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card1 Earing -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://www.chuu.co.kr/chuu-up/jyj/2018/180517/2/CU18051000001_d5.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name1</h5>
                <p class="card-text text-uppercase mb-3">Earing</p>
              </div>
            </a>
            <!-- //Card1 -->
          </div>
          <!-- Grid column -->
          
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card2 Earing -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://www.chuu.co.kr/chuu-up/jyj/2018/180517/2/CU18051000001_d3.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name2</h5>
                <p class="card-text text-uppercase mb-3">Earing</p>
              </div>
            </a>
            <!-- //Card2 -->
          </div>
          <!-- Grid column -->
          
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card3 Earing -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://vivamoon.co.kr/web/upload/NNEditor/20180110/%EA%B7%80%EA%B1%B8%EC%9D%B4-%EB%94%94%ED%85%8C%EC%9D%BC_04_shop1_185757.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name3</h5>
                <p class="card-text text-uppercase mb-3">Earing</p>
              </div>
            </a>
            <!-- //Card3 -->
          </div>
          <!-- Grid column -->
          
          <!-- Grid column -->
          <div class="col-md-6 col-lg-3">
            <!-- Card4 Earing -->
            <a class="card hoverable mb-4">
              <!-- Card image -->
              <img class="card-img-top" src="http://cherry07.img12.kr/product/170925_C708PWEA1/5.jpg" alt="Card image cap">
              <!-- Card content -->
              <div class="card-body">
                <h5 class="my-3">Goods Name4</h5>
                <p class="card-text text-uppercase mb-3">Earing</p>
              </div>
            </a>
            <!-- //Card4 -->
          </div>
          <!-- Grid column --> 
        </div>
        <!-- Grid row -->
      </div>
      <!-- EaringPanel 3-->
    </div>
    <!--Tab panels-->
  </section>
  <!-- Section -->
</div>



<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.10.1/js/mdb.min.js"></script>

</body>
</html>