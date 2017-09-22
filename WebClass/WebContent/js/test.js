		$(document).ready(
				function() {
					$('#loginForm').submit(
							function(event) {
								//submit이 자동으로 되는 기능을 막기
								event.preventDefault();
								//id pwd 가져오기
								//		 document.getElementById("id").value
								var id = $('#id').val();
								var pwd = $('#pwd').val();
								console.log(id, pwd);

								//서버로 post 전송
								$.post("/WebClass/Login", {
									"id" : id,
									"pwd" : pwd
								}, function(data) {
									//alert(data.form.id+"님 로그인 되었습니다.	");
									var myModal = $('#myModal');
									myModal.modal();
									myModal.find('.modal-body').text(
											data.id + "님 로그인 되었습니다.");
								});
							});
				});
		//간단하게 쓰기
		function goTop() {
			$("body").animate({
				scrollTop : 0
			}, 500);
		}

		$(document).ready(
				function() {
					$('#Form').submit(
							function(event) {
								//submit이 자동으로 되는 기능을 막기
								event.preventDefault();
								//id pwd 가져오기
								//			 document.getElementById("id").value
								var Username = $('#Username').val();
								console.log(Username);

								//서버로 post 전송
								$.post("/WebClass/Login", {
									"Username" : Username,
								}, function(data) {
									//alert(data.form.id+"님 로그인 되었습니다.	");
									var myModal = $('#myModal');
									myModal.modal();
									myModal.find('.modal-body').text(
											data.id + "님 회원가입 되었습니다.");
								});
							});

				});