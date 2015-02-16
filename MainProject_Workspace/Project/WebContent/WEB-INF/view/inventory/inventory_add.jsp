<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="row">
  <div id="breadcrumb" class="col-xs-12"><a href="#" class="show-sidebar"><i class="fa fa-bars">		</i></a>
    <ol class="breadcrumb pull-left">
      <li><a href="#">비품관리</a></li>
      <li><a href="#">발주</a></li>
    </ol>
  </div>
</div>
<div class="row">
  <div class="col-xs-12">
    <!-- padding xs 12-->
    <div class="box">
      <div class="box-header">
        <div class="box-name"><i class="fa fa-newspaper-o"></i><span>발주신청</span></div>
        <div class="box-icons"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a><a class="expand-link"><i class="fa fa-expand"></i></a><a class="close-link"><i class="fa fa-times"></i></a></div>
        <div class="no-move"></div>
      </div>
      <div class="box-content">
        <div class="row">
          <div class="col-xs-6 col-sm-2">
            <button onclick="inventory_add()" class="btn btn-primary btn-block btn-xs">추가</button>
          </div>
          <div class="col-xs-6 col-sm-2">
            <button onclick="inventory_remove()" class="btn btn-primary btn-block btn-xs">제거</button>
          </div>
          <div class="col-xs-12 col-sm-offset-6 col-sm-2">
            <button class="btn btn-primary btn-block btn-xs">신청</button>
          </div>
        </div>
        <table class="table beauty-table table-hover">
          <thead>
            <tr>
              <th>상품번호</th>
              <th>품명</th>
              <th>색상</th>
              <th>수량</th>
              <th>단가</th>
              <th>금액</th>
              <th>비고 (사용용도)</th>
            </tr>
          </thead>
          <tbody id="inventory_add_list">
            <tr>
              <td>
                <input type="text" value="123-456"/>
              </td>
              <td>
                <input type="text" value="소화기"/>
              </td>
              <td>
                <input type="text" value="빨강"/>
              </td>
              <td>
                <input type="text" value="30"/>
              </td>
              <td>
                <input type="text" value="100000"/>
              </td>
              <td>
                <input type="text" value="10000000"/>
              </td>
              <td>
                <input type="text" value="구석구석 비치"/>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
<!-- 신청상태-->
<div class="row">
  <div class="col-xs-12">
    <!-- padding xs 12-->
    <div class="box">
      <div class="box-header">
        <div class="box-name"><i class="fa fa-newspaper-o"></i><span>신청상태</span></div>
        <div class="box-icons"><a class="collapse-link"><i class="fa fa-chevron-up"></i></a><a class="expand-link"><i class="fa fa-expand"></i></a><a class="close-link"><i class="fa fa-times"></i></a></div>
        <div class="no-move"></div>
      </div>
      <div id="accordion" class="box-content">
        <!-- 헤더는 이름과 진행정도를 담음-->
        <div class="accordion-header">
          <!-- 한 행의 12칸 가르기-->
          <div class="col-xs-12">
            <div class="col-xs-12 col-sm-4"><span class="itemName">비품 A 외 20개</span></div>
            <div class="col-xs-12 col-sm-8">
              <div class="progress progress-striped active">
                <div role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuerow="20" style="width:20%" class="progress-bar progress-bar-info"><span>대기중</span></div>
              </div>
            </div>
          </div>
        </div>
        <div>
          <div class="row">
            <div class="col-xs-12 col-sm-3">상태 : 반려됨</div>
            <div class="col-xs-12 col-sm-3">확인자 : 김민철</div>
            <div class="col-xs-12 col-sm-3">반려사유 : 쓸데없이 많음</div>
            <div class="col-xs-12 col-sm-3"><a href="#" style="text-align:right;" class="cancel">취소</a></div>
          </div>
          <table class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th>상품번호</th>
                <th>품명</th>
                <th>색상</th>
                <th>수량</th>
                <th>단가</th>
                <th>금액</th>
                <th>비고 (사용용도)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>123-456</td>
                <td>소화기</td>
                <td>빨강</td>
                <td>30</td>
                <td>100000</td>
                <td>10000000</td>
                <td>구석구석 비치</td>
              </tr>
            </tbody>
          </table>
        </div>
        <!-- 헤더는 이름과 진행정도를 담음-->
        <div class="accordion-header">
          <!-- 한 행의 12칸 가르기-->
          <div class="col-xs-12">
            <div class="col-xs-12 col-sm-4"><span class="itemName">비품 A 외 20개</span></div>
            <div class="col-xs-12 col-sm-8">
              <div class="progress progress-striped active">
                <div role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuerow="40" style="width:40%" class="progress-bar progress-bar-info"><span>확인됨</span></div>
              </div>
            </div>
          </div>
        </div>
        <div>
          <div class="row">
            <div class="col-xs-12 col-sm-3">상태 : 반려됨</div>
            <div class="col-xs-12 col-sm-3">확인자 : 김민철</div>
            <div class="col-xs-12 col-sm-3">반려사유 : 쓸데없이 많음</div>
            <div class="col-xs-12 col-sm-3"><a href="#" style="text-align:right;" class="cancel">취소</a></div>
          </div>
          <table class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th>상품번호</th>
                <th>품명</th>
                <th>색상</th>
                <th>수량</th>
                <th>단가</th>
                <th>금액</th>
                <th>비고 (사용용도)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>123-456</td>
                <td>소화기</td>
                <td>빨강</td>
                <td>30</td>
                <td>100000</td>
                <td>10000000</td>
                <td>구석구석 비치</td>
              </tr>
            </tbody>
          </table>
        </div>
        <!-- 헤더는 이름과 진행정도를 담음-->
        <div class="accordion-header">
          <!-- 한 행의 12칸 가르기-->
          <div class="col-xs-12">
            <div class="col-xs-12 col-sm-4"><span class="itemName">비품 A 외 20개</span></div>
            <div class="col-xs-12 col-sm-8">
              <div class="progress progress-striped active">
                <div role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuerow="60" style="width:60%" class="progress-bar progress-bar-info"><span>주문됨</span></div>
              </div>
            </div>
          </div>
        </div>
        <div>
          <div class="row">
            <div class="col-xs-12 col-sm-3">상태 : 반려됨</div>
            <div class="col-xs-12 col-sm-3">확인자 : 김민철</div>
            <div class="col-xs-12 col-sm-3">반려사유 : 쓸데없이 많음</div>
            <div class="col-xs-12 col-sm-3"><a href="#" style="text-align:right;" class="cancel">취소</a></div>
          </div>
          <table class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th>상품번호</th>
                <th>품명</th>
                <th>색상</th>
                <th>수량</th>
                <th>단가</th>
                <th>금액</th>
                <th>비고 (사용용도)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>123-456</td>
                <td>소화기</td>
                <td>빨강</td>
                <td>30</td>
                <td>100000</td>
                <td>10000000</td>
                <td>구석구석 비치</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
<style>div.accordion-header{overflow:hidden;}</style>
<script>
  // 인벤토리 행의 추가, 제거
  // http://stackoverflow.com/questions/171027/add-table-row-in-jquery
  function inventory_add() {
    var addstr = "";
    addstr += "<tr>"
      +"<td><input type='text' value=''></td>"
      +"<td><input type='text' value='품명'></td>"
      +"<td><input type='text' value=''></td>"
      +"<td><input type='text' value='1'></td>"
      +"<td><input type='text' value=''></td>"
      +"<td><input type='text' value=''></td>"
      +"<td><input type='text' value=''></td>"
      +"</tr>";
    $('#inventory_add_list tr:last').after(addstr);
  }
  function inventory_remove() {
    var cnt = $('#inventory_add_list tr').size();
    if (cnt > 1) {
      var last = $('#inventory_add_list tr:last');
      if (last != null) {
        $(last).remove();
      }
    }
  }
  $(document).ready(function() {

    // 아코디언 로드
    $("#accordion").accordion({
      header: $(".accordion-header"),
      collapsible: true,
      active: false
    });

    // 박스에 드래그 / 드롭 적용
    WinMove();

  });
</script>

