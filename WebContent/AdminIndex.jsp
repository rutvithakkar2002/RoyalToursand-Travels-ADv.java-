<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Index</title>

<jsp:include page="AdminCss.jsp"></jsp:include>



</head>
<body>

	<div class="container-scroller">
		<jsp:include page="AdminHeader.jsp"></jsp:include>


		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_settings-panel.html -->
			<div class="theme-setting-wrapper">
				<div id="settings-trigger">
					<i class="ti-settings"></i>
				</div>
				<div id="theme-settings" class="settings-panel">
					<i class="settings-close ti-close"></i>
					<p class="settings-heading">SIDEBAR SKINS</p>
					<div class="sidebar-bg-options selected" id="sidebar-light-theme">
						<div class="img-ss rounded-circle bg-light border me-3"></div>
						Light
					</div>
					<div class="sidebar-bg-options" id="sidebar-dark-theme">
						<div class="img-ss rounded-circle bg-dark border me-3"></div>
						Dark
					</div>
					<p class="settings-heading mt-2">HEADER SKINS</p>
					<div class="color-tiles mx-0 px-4">
						<div class="tiles success"></div>
						<div class="tiles warning"></div>
						<div class="tiles danger"></div>
						<div class="tiles info"></div>
						<div class="tiles dark"></div>
						<div class="tiles default"></div>
					</div>
				</div>
			</div>
			<div id="right-sidebar" class="settings-panel">
				<i class="settings-close ti-close"></i>
				<ul class="nav nav-tabs border-top" id="setting-panel"
					role="tablist">
					<li class="nav-item"><a class="nav-link active" id="todo-tab"
						data-bs-toggle="tab" href="#todo-section" role="tab"
						aria-controls="todo-section" aria-expanded="true">TO DO LIST</a></li>
					<li class="nav-item"><a class="nav-link" id="chats-tab"
						data-bs-toggle="tab" href="#chats-section" role="tab"
						aria-controls="chats-section">CHATS</a></li>
				</ul>
				<div class="tab-content" id="setting-content">
					<div class="tab-pane fade show active scroll-wrapper"
						id="todo-section" role="tabpanel" aria-labelledby="todo-section">
						<div class="add-items d-flex px-3 mb-0">
							<form class="form w-100">
								<div class="form-group d-flex">
									<input type="text" class="form-control todo-list-input"
										placeholder="Add To-do">
									<button type="submit"
										class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
								</div>
							</form>
						</div>
						<div class="list-wrapper px-3">
							<ul class="d-flex flex-column-reverse todo-list">
								<li>
									<div class="form-check">
										<label class="form-check-label"> <input
											class="checkbox" type="checkbox"> Team review meeting
											at 3.00 PM
										</label>
									</div> <i class="remove ti-close"></i>
								</li>
								<li>
									<div class="form-check">
										<label class="form-check-label"> <input
											class="checkbox" type="checkbox"> Prepare for
											presentation
										</label>
									</div> <i class="remove ti-close"></i>
								</li>
								<li>
									<div class="form-check">
										<label class="form-check-label"> <input
											class="checkbox" type="checkbox"> Resolve all the low
											priority tickets due today
										</label>
									</div> <i class="remove ti-close"></i>
								</li>
								<li class="completed">
									<div class="form-check">
										<label class="form-check-label"> <input
											class="checkbox" type="checkbox" checked> Schedule
											meeting for next week
										</label>
									</div> <i class="remove ti-close"></i>
								</li>
								<li class="completed">
									<div class="form-check">
										<label class="form-check-label"> <input
											class="checkbox" type="checkbox" checked> Project
											review
										</label>
									</div> <i class="remove ti-close"></i>
								</li>
							</ul>
						</div>
						<h4 class="px-3 text-muted mt-5 fw-light mb-0">Events</h4>
						<div class="events pt-4 px-3">
							<div class="wrapper d-flex mb-2">
								<i class="ti-control-record text-primary me-2"></i> <span>Feb
									11 2018</span>
							</div>
							<p class="mb-0 font-weight-thin text-gray">Creating component
								page build a js</p>
							<p class="text-gray mb-0">The total number of sessions</p>
						</div>
						<div class="events pt-4 px-3">
							<div class="wrapper d-flex mb-2">
								<i class="ti-control-record text-primary me-2"></i> <span>Feb
									7 2018</span>
							</div>
							<p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
							<p class="text-gray mb-0 ">Call Sarah Graves</p>
						</div>
					</div>
					<!-- To do section tab ends -->
					<div class="tab-pane fade" id="chats-section" role="tabpanel"
						aria-labelledby="chats-section">
						<div
							class="d-flex align-items-center justify-content-between border-bottom">
							<p
								class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
							<small
								class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 fw-normal">See
								All</small>
						</div>
						<ul class="chat-list">
							<li class="list active">
								<div class="profile">
									<img src="images/faces/face1.jpg" alt="image"><span
										class="online"></span>
								</div>
								<div class="info">
									<p>Thomas Douglas</p>
									<p>Available</p>
								</div> <small class="text-muted my-auto">19 min</small>
							</li>
							<li class="list">
								<div class="profile">
									<img src="images/faces/face2.jpg" alt="image"><span
										class="offline"></span>
								</div>
								<div class="info">
									<div class="wrapper d-flex">
										<p>Catherine</p>
									</div>
									<p>Away</p>
								</div>
								<div class="badge badge-success badge-pill my-auto mx-2">4</div>
								<small class="text-muted my-auto">23 min</small>
							</li>
							<li class="list">
								<div class="profile">
									<img src="images/faces/face3.jpg" alt="image"><span
										class="online"></span>
								</div>
								<div class="info">
									<p>Daniel Russell</p>
									<p>Available</p>
								</div> <small class="text-muted my-auto">14 min</small>
							</li>
							<li class="list">
								<div class="profile">
									<img src="images/faces/face4.jpg" alt="image"><span
										class="offline"></span>
								</div>
								<div class="info">
									<p>James Richardson</p>
									<p>Away</p>
								</div> <small class="text-muted my-auto">2 min</small>
							</li>
							<li class="list">
								<div class="profile">
									<img src="images/faces/face5.jpg" alt="image"><span
										class="online"></span>
								</div>
								<div class="info">
									<p>Madeline Kennedy</p>
									<p>Available</p>
								</div> <small class="text-muted my-auto">5 min</small>
							</li>
							<li class="list">
								<div class="profile">
									<img src="images/faces/face6.jpg" alt="image"><span
										class="online"></span>
								</div>
								<div class="info">
									<p>Sarah Graves</p>
									<p>Available</p>
								</div> <small class="text-muted my-auto">47 min</small>
							</li>
						</ul>
					</div>
					<!-- chat tab ends -->
				</div>
			</div>


			<jsp:include page="AdminSidebar.jsp"></jsp:include>

			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-sm-12">
							<div class="home-tab">
								<div
									class="d-sm-flex align-items-center justify-content-between border-bottom">
									<ul class="nav nav-tabs" role="tablist">
										<li class="nav-item"><a class="nav-link active ps-0"
											id="home-tab" data-bs-toggle="tab" href="#overview"
											role="tab" aria-controls="overview" aria-selected="true">Overview</a>
										</li>
										<li class="nav-item"><a class="nav-link" id="profile-tab"
											data-bs-toggle="tab" href="#audiences" role="tab"
											aria-selected="false">Audiences</a></li>
										<li class="nav-item"><a class="nav-link" id="contact-tab"
											data-bs-toggle="tab" href="#demographics" role="tab"
											aria-selected="false">Demographics</a></li>
										<li class="nav-item"><a class="nav-link border-0"
											id="more-tab" data-bs-toggle="tab" href="#more" role="tab"
											aria-selected="false">More</a></li>
									</ul>
									<div>
										<div class="btn-wrapper">
											<a href="#" class="btn btn-otline-dark align-items-center"><i
												class="icon-share"></i> Share</a> <a href="#"
												class="btn btn-otline-dark"><i class="icon-printer"></i>
												Print</a> <a href="#" class="btn btn-primary text-white me-0"><i
												class="icon-download"></i> Export</a>
										</div>
									</div>
								</div>
								<div class="tab-content tab-content-basic">
									<div class="tab-pane fade show active" id="overview"
										role="tabpanel" aria-labelledby="overview">
										<div class="row">
											<div class="col-sm-12">
												<div
													class="statistics-details d-flex align-items-center justify-content-between">
													<div>
														<p class="statistics-title" style="color: Green; font-size: 20px;">Total Customers Inquiry</p>
														<h3  class="rate-percentage">${totalusers}</h3>
													</div>
													<div>
														<p class="statistics-title" style="color: Green; font-size: 20px;">Total Packages</p>
														<h5 class="rate-percentage">${totalpackages}</h5>
														
													</div>
													<div>
														<p class="statistics-title" style="color: Green; font-size: 20px;">Total Services</p>
														<h3 class="rate-percentage">${totalservices}</h3>
														
													</div>
													
													
													
												</div>
											</div>
										</div>
									
										<div class="row">
											<div class="col-lg-8 d-flex flex-column">
												<div class="row flex-grow"></div>


												<div class="row flex-grow">
													<div class="col-md-6 col-lg-6 grid-margin stretch-card">
														<div class="card card-rounded">
															<div class="card-body card-rounded">
																<h4 class="card-title  card-title-dash">Recent
																	Events</h4>
																<div class="list align-items-center border-bottom py-2">
																	<div class="wrapper w-100">
																		<p class="mb-2 font-weight-medium">Change in
																			Directors</p>
																		<div
																			class="d-flex justify-content-between align-items-center">
																			<div class="d-flex align-items-center">
																				<i class="mdi mdi-calendar text-muted me-1"></i>
																				<p class="mb-0 text-small text-muted">Mar 14,
																					2019</p>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="list align-items-center border-bottom py-2">
																	<div class="wrapper w-100">
																		<p class="mb-2 font-weight-medium">Other Events</p>
																		<div
																			class="d-flex justify-content-between align-items-center">
																			<div class="d-flex align-items-center">
																				<i class="mdi mdi-calendar text-muted me-1"></i>
																				<p class="mb-0 text-small text-muted">Mar 14,
																					2019</p>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="list align-items-center border-bottom py-2">
																	<div class="wrapper w-100">
																		<p class="mb-2 font-weight-medium">Quarterly
																			Report</p>
																		<div
																			class="d-flex justify-content-between align-items-center">
																			<div class="d-flex align-items-center">
																				<i class="mdi mdi-calendar text-muted me-1"></i>
																				<p class="mb-0 text-small text-muted">Mar 14,
																					2019</p>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="list align-items-center border-bottom py-2">
																	<div class="wrapper w-100">
																		<p class="mb-2 font-weight-medium">Change in
																			Directors</p>
																		<div
																			class="d-flex justify-content-between align-items-center">
																			<div class="d-flex align-items-center">
																				<i class="mdi mdi-calendar text-muted me-1"></i>
																				<p class="mb-0 text-small text-muted">Mar 14,
																					2019</p>
																			</div>
																		</div>
																	</div>
																</div>

																<div class="list align-items-center pt-3">
																	<div class="wrapper w-100">
																		<p class="mb-0">
																			<a href="#" class="fw-bold text-primary">Show all
																				<i class="mdi mdi-arrow-right ms-2"></i>
																			</a>
																		</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="col-md-6 col-lg-6 grid-margin stretch-card">
														<div class="card card-rounded">
															<div class="card-body">
																<div
																	class="d-flex align-items-center justify-content-between mb-3">
																	<h4 class="card-title card-title-dash">Activities</h4>
																	<p class="mb-0">20 finished, 5 remaining</p>
																</div>
																<ul class="bullet-line-list">
																	<li>
																		<div class="d-flex justify-content-between">
																			<div>
																				<span class="text-light-green">Ben Tossell</span>
																				assign you a task
																			</div>
																			<p>Just now</p>
																		</div>
																	</li>
																	<li>
																		<div class="d-flex justify-content-between">
																			<div>
																				<span class="text-light-green">Oliver Noah</span>
																				assign you a task
																			</div>
																			<p>1h</p>
																		</div>
																	</li>
																	<li>
																		<div class="d-flex justify-content-between">
																			<div>
																				<span class="text-light-green">Jack William</span>
																				assign you a task
																			</div>
																			<p>1h</p>
																		</div>
																	</li>
																	<li>
																		<div class="d-flex justify-content-between">
																			<div>
																				<span class="text-light-green">Leo Lucas</span>
																				assign you a task
																			</div>
																			<p>1h</p>
																		</div>
																	</li>
																	<li>
																		<div class="d-flex justify-content-between">
																			<div>
																				<span class="text-light-green">Thomas Henry</span>
																				assign you a task
																			</div>
																			<p>1h</p>
																		</div>
																	</li>
																	<li>
																		<div class="d-flex justify-content-between">
																			<div>
																				<span class="text-light-green">Ben Tossell</span>
																				assign you a task
																			</div>
																			<p>1h</p>
																		</div>
																	</li>
																	<li>
																		<div class="d-flex justify-content-between">
																			<div>
																				<span class="text-light-green">Ben Tossell</span>
																				assign you a task
																			</div>
																			<p>1h</p>
																		</div>
																	</li>
																</ul>
																<div class="list align-items-center pt-3">
																	<div class="wrapper w-100">
																		<p class="mb-0">
																			<a href="#" class="fw-bold text-primary">Show all
																				<i class="mdi mdi-arrow-right ms-2"></i>
																			</a>
																		</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-4 d-flex flex-column">
												<div class="row flex-grow">
													<div class="col-12 grid-margin stretch-card">
														<div class="card card-rounded">
															<div class="card-body">
																<div class="row">
																	<div class="col-lg-12">
																		<div
																			class="d-flex justify-content-between align-items-center">
																			<h4 class="card-title card-title-dash">Todo list</h4>
																			<div class="add-items d-flex mb-0">
																				<!-- <input type="text" class="form-control todo-list-input" placeholder="What do you need to do today?"> -->
																				<button
																					class="add btn btn-icons btn-rounded btn-primary todo-list-add-btn text-white me-0 pl-12p">
																					<i class="mdi mdi-plus"></i>
																				</button>
																			</div>
																		</div>
																		<div class="list-wrapper">
																			<ul class="todo-list todo-list-rounded">
																				<li class="d-block">
																					<div class="form-check w-100">
																						<label class="form-check-label"> <input
																							class="checkbox" type="checkbox"> Lorem
																							Ipsum is simply dummy text of the printing <i
																							class="input-helper rounded"></i>
																						</label>
																						<div class="d-flex mt-2">
																							<div class="ps-4 text-small me-3">24 June
																								2020</div>
																							<div class="badge badge-opacity-warning me-3">Due
																								tomorrow</div>
																							<i class="mdi mdi-flag ms-2 flag-color"></i>
																						</div>
																					</div>
																				</li>
																				<li class="d-block">
																					<div class="form-check w-100">
																						<label class="form-check-label"> <input
																							class="checkbox" type="checkbox"> Lorem
																							Ipsum is simply dummy text of the printing <i
																							class="input-helper rounded"></i>
																						</label>
																						<div class="d-flex mt-2">
																							<div class="ps-4 text-small me-3">23 June
																								2020</div>
																							<div class="badge badge-opacity-success me-3">Done</div>
																						</div>
																					</div>
																				</li>
																				<li>
																					<div class="form-check w-100">
																						<label class="form-check-label"> <input
																							class="checkbox" type="checkbox"> Lorem
																							Ipsum is simply dummy text of the printing <i
																							class="input-helper rounded"></i>
																						</label>
																						<div class="d-flex mt-2">
																							<div class="ps-4 text-small me-3">24 June
																								2020</div>
																							<div class="badge badge-opacity-success me-3">Done</div>
																						</div>
																					</div>
																				</li>
																				<li class="border-bottom-0">
																					<div class="form-check w-100">
																						<label class="form-check-label"> <input
																							class="checkbox" type="checkbox"> Lorem
																							Ipsum is simply dummy text of the printing <i
																							class="input-helper rounded"></i>
																						</label>
																						<div class="d-flex mt-2">
																							<div class="ps-4 text-small me-3">24 June
																								2020</div>
																							<div class="badge badge-opacity-danger me-3">Expired</div>
																						</div>
																					</div>
																				</li>
																			</ul>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>



											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


					<div class="row">
											<div class="col-lg-4 d-flex flex-column">
												<div class="row flex-grow">
													
													<div class="col-md-6 col-lg-12 grid-margin stretch-card">
														<div class="card card-rounded">
															<div class="card-body">
																<div class="row">
																	<div class="col-sm-6">
																		<div
																			class="d-flex justify-content-between align-items-center mb-2 mb-sm-0">
																			<div class="circle-progress-width">
																				<div id="totalVisitors"
																					class="progressbar-js-circle pr-2"></div>
																			</div>
																			<div>
																				<p class="text-small mb-2">Total Visitors</p>
																				<h4 class="mb-0 fw-bold">26.80%</h4>
																			</div>
																		</div>
																	</div>
																	<div class="col-sm-6">
																		<div
																			class="d-flex justify-content-between align-items-center">
																			<div class="circle-progress-width">
																				<div id="visitperday"
																					class="progressbar-js-circle pr-2"></div>
																			</div>
																			<div>
																				<p class="text-small mb-2">Visits per day</p>
																				<h4 class="mb-0 fw-bold">9065</h4>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

				<jsp:include page="AdminFooter.jsp"></jsp:include>
			</div>
		</div>
	</div>

	<jsp:include page="AdminJs.jsp"></jsp:include>

</body>
</html>