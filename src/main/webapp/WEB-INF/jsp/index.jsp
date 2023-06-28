<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 아임포트 결제모듈 사용 https://portone.io/korea/ko -->
<html lang="en">
<head>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>

    <script>
        var IMP = window.IMP;
        IMP.init("imp32810272");

        function requestPay() {
            IMP.request_pay(
                {
                    pg: "html5_inicis", <!--PG사 코드표 참조-->
                    pay_method: "card", <!--card로 동일-->
                    merchant_uid: "4", <!--매번 실행할 때마다 다른 값을 입력해야함(주문번호는 고유값)-->
                    name: "당근 10kg",
                    amount: 10,
                    buyer_email: "mjhwang34@naver.com",
                    buyer_name: "황민주",
                    buyer_tel: "010-4947-1323",
                    buyer_addr: "서울특별시 강남구 삼성동",
                    buyer_postcode: "123-456",
                },
                function (rsp){
                    if (rsp.success) {
                        console.log(rsp);
                    } else {
                        console.log(rsp);
                        alert(`결제에 실패하였습니다. 에러 내용: ${rsp.error_msg}`);
                    }
                }
            );
        }
    </script>
    <meta charset="UTF-8" />
    <title>Sample Payment</title>
</head>
<body>
<button onclick="requestPay()">결제하기</button>
</body>
</html>