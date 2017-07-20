<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Document</title>
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<link href="css/PersonalInfo_bootstrap.min.css" rel="stylesheet">
<link href="css/PersonalInfo_cropper.min.css" rel="stylesheet">
<link href="css/PersonalInfo_sitelogo.css" rel="stylesheet">
<script src="js/PersonalInfo_cropper.min.js"></script>
<script src="js/PersonalInfo_sitelogo.js"></script>
<script src="js/PersonalInfo_bootstrap.min.js"></script>
</head>
<body>
	<div class="ibox-content">
		<div class="row">
			<div class="col-md-6" id="crop-avatar">
				<div title="" class="avatar-view"
					data-original-title="Change Picture">
					<img alt="点击更换头像" class = "avator" src="img/1.jpg" height="180px" width="180px" vertical-aligh="middle">
				</div>
				<div class="userName">
					<label class = "userName">用户：</label>
				</div>
			</div>
		</div>
	</div>

	<div tabindex="-1" class="modal fade" id="avatar-modal" role="dialog"
		aria-hidden="true" aria-labelledby="avatar-modal-label"
		style="display: none;">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<form class="avatar-form" action="{{url('admin/upload-logo')}}"
					enctype="multipart/form-data" method="post">
					<div class="modal-header">
						<button class="close" type="button" data-dismiss="modal">×</button>
						<h4 class="modal-title" id="avatar-modal-label">Change Logo
							Picture</h4>
					</div>
					<div class="modal-body">
						<div class="avatar-body">
							<div class="avatar-upload">
								<input name="avatar_src" class="avatar-src" type="hidden">
								<input name="avatar_data" class="avatar-data" type="hidden">
								<label for="avatarInput">图片上传</label> <input name="avatar_file"
									class="avatar-input" id="avatarInput" type="file">
							</div>
							<div class="row">
								<div class="col-md-9">
									<div class="avatar-wrapper"></div>
								</div>
								<div class="col-md-3">
									<div class="avatar-preview preview-lg">
										<img src="img/1.jpg">
									</div>
									<div class="avatar-preview preview-md">
										<img src="img/1.jpg">
									</div>
									<div class="avatar-preview preview-sm">
										<img src="img/1.jpg">
									</div>
								</div>
							</div>
							<div class="row avatar-btns">
								<div class="col-md-9">
									<div class="btn-group">
										<button title="Rotate -90 degrees" class="btn" type="button"
											data-option="-90" data-method="rotate">
											<i class="fa fa-undo"></i> 向左旋转
										</button>
									</div>
									<div class="btn-group">
										<button title="Rotate 90 degrees" class="btn" type="button"
											data-option="90" data-method="rotate">
											<i class="fa fa-repeat"></i> 向右旋转
										</button>
									</div>
								</div>
								<div class="col-md-3">
									<button class="btn btn-success btn-block avatar-save"
										type="submit">
										<i class="fa fa-save"></i> 保存修改
									</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div tabindex="-1" class="loading" role="img" aria-label="Loading"></div>
</body>
</html>