<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/bootstrap.css">
<script src="js/bootstrap.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<meta charset="ISO-8859-1">
<style>
.animated{
height:60%;
align:center;
display: block;
margin-left: auto;
margin-right: auto;
margin-top:0px;

}

.btn.btn-add{
background-color:  #46df5b   ; /* Green */
  border: none;
  color: white;
  text-decoration: none;
  font-size: 16px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  text-align: center;
  font-size: 25px;

}

.btn-add:hover{
box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.button-container-div {
            text-align: center;
            border: 0px solid coral;
            
        }
</style>
<title>Hotel Management System</title>
</head>
<body>
<div class="hero-image">
	<div class="hero-text">
		<h1>Hotel Management System</h1>
	</div>
</div>

<!-- Navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Home</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						Rooms & Offers </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">Rooms</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Rooms Offer</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						Foods </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">Online Order</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Reservation</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-bs-toggle="dropdown" aria-expanded="false">
						Event </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="#">Weddings</a></li>
						<li><hr class="dropdown-divider"></li>
						<li><a class="dropdown-item" href="#">Meetings</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link" href="#"
					tabindex="-1" aria-disabled="true">Register</a></li>
				<li class="nav-item"><a class="nav-link" href="#"
					tabindex="-1" aria-disabled="true">LogIn</a></li>
			</ul>
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-success" type="submit">Search</button>
			</form>


		</div>
	</div>
</nav>
<!-- END Navigation bar -->


<svg class="animated" id="freepik_stories-self-confidence" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 500" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs"><style>svg#freepik_stories-self-confidence:not(.animated) .animable {opacity: 0;}svg#freepik_stories-self-confidence.animated #freepik--hand-4--inject-38 {animation: 1.5s Infinite  linear heartbeat;animation-delay: 0s;}svg#freepik_stories-self-confidence.animated #freepik--hand-3--inject-38 {animation: 1.5s Infinite  linear heartbeat;animation-delay: 0s;}svg#freepik_stories-self-confidence.animated #freepik--hand-2--inject-38 {animation: 1.5s Infinite  linear heartbeat;animation-delay: 0s;}svg#freepik_stories-self-confidence.animated #freepik--hand-1--inject-38 {animation: 1.5s Infinite  linear heartbeat;animation-delay: 0s;}svg#freepik_stories-self-confidence.animated #freepik--Character--inject-38 {animation: 1.5s Infinite  linear floating;animation-delay: 0s;}            @keyframes heartbeat {                0% {                    transform: scale(1);                }                10% {                    transform: scale(1.1);                }                30% {                    transform: scale(1);                }                40% {                    transform: scale(1);                }                50% {                    transform: scale(1.1);                }                60% {                    transform: scale(1);                }                100% {                    transform: scale(1);                }            }                    @keyframes floating {                0% {                    opacity: 1;                    transform: translateY(0px);                }                50% {                    transform: translateY(-10px);                }                100% {                    opacity: 1;                    transform: translateY(0px);                }            }        </style><g id="freepik--background-simple--inject-38" style="transform-origin: 244.595px 226.828px 0px;" class="animable"><path d="M477.68,276.66s-.07-140.93-75.55-208.24C335.5,9,243.77-3.07,182.17,65.64c-21.95,24.48-48.49,50-76.06,67.1-30.9,19.18-67,27.94-88.07,91.44s11.54,156.63,59.32,189.6,122.65,20.72,187,6.93S472.07,451.54,477.68,276.66Z" style="fill: rgb(64, 123, 255); transform-origin: 244.595px 226.828px 0px;" id="elfivbcja66ue" class="animable"></path><g id="elas3z87pdha"><path d="M477.68,276.66s-.07-140.93-75.55-208.24C335.5,9,243.77-3.07,182.17,65.64c-21.95,24.48-48.49,50-76.06,67.1-30.9,19.18-67,27.94-88.07,91.44s11.54,156.63,59.32,189.6,122.65,20.72,187,6.93S472.07,451.54,477.68,276.66Z" style="fill: rgb(255, 255, 255); opacity: 0.7; transform-origin: 244.595px 226.828px 0px;" class="animable"></path></g></g><g id="freepik--Shadow--inject-38" style="transform-origin: 248.26px 459.1px 0px;" class="animable"><g id="el7qy89gk9glb"><ellipse cx="248.26" cy="459.1" rx="153.39" ry="18.71" style="opacity: 0.16; transform-origin: 248.26px 459.1px 0px;" class="animable"></ellipse></g></g><g id="freepik--Sunburst--inject-38" style="transform-origin: 244.507px 226.837px 0px;" class="animable"><g id="elv9hi5hkwp2s"><path d="M402.13,68.41a216.26,216.26,0,0,0-33.95-24.89l-99.82,150L404,70.13C403.39,69.55,402.77,69,402.13,68.41ZM312.8,21.81A142.4,142.4,0,0,0,265.47,20l2.89,173.51ZM208.18,42.46a150.64,150.64,0,0,0-26,23.18q-4.06,4.55-8.35,9.12l94.54,118.77Zm-81.89,76.22a243.68,243.68,0,0,1-20.17,14.06C91.15,142,75,148.87,59.85,160.68l208.51,32.85ZM11.89,256.81c-1.83,27.07,3.3,56.37,13.23,82.87L268.36,193.53Zm256.47-63.28L94.71,423.36c25.26,11,55.63,13,87.1,10.58Zm0,0,8.26,225.28c17.85-1.91,39.65-1.32,62.23-2.29ZM463.3,349.63,268.36,193.53,420.14,398.14C437.81,388.25,453,373.06,463.3,349.63ZM471.55,215,268.36,193.53l209.13,75.73A432,432,0,0,0,471.55,215Zm-32.91-99.68L268.36,193.53l188.15-37.68A263.68,263.68,0,0,0,438.64,115.32Z" style="opacity: 0.07; transform-origin: 244.507px 226.837px 0px;" class="animable"></path></g></g><g id="freepik--hand-4--inject-38" style="transform-origin: 423.264px 334.727px 0px;" class="animable"><path d="M444.6,335.28s-10.79-3.65-14-5.88-11.42-10.47-13.33-16.82A97.43,97.43,0,0,1,414,294.65c-.48-4.92-2.54-6.19-5.56-2.38s-4,10-3.17,14,3.33,8.57,3,9.37-.8,2.38-.8,2.38-9.68-1.11-15.07-2.38-9.68-1.75-10,.79.79,6.51,1.11,9.21,4.44,14.6,6.51,17.29a33.59,33.59,0,0,0,5.07,5.72c1.27.95,1.27,1.74,4.29,2.06a69.8,69.8,0,0,1,7.62,1.11c1.11.32,2.22,1.43,7.46,1.27a79.77,79.77,0,0,0,9.83-.95L440,358Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 413.471px 324.022px 0px;" id="elcnbo109cn6q" class="animable"></path><polygon points="439.52 332.26 433.01 360.51 443.65 364.79 449.04 335.44 439.52 332.26" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 441.025px 348.525px 0px;" id="elg28wc7rowni" class="animable"></polygon><polygon points="466.32 337.66 445.55 332.58 437.93 366.22 466.2 379.41 466.32 376.86 466.32 337.66" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 452.125px 355.995px 0px;" id="el0aa7uqol1r7n" class="animable"></polygon><path d="M406.83,319.41S405.4,328,405.4,330s4.44,7.62,6,7.93" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 408.4px 328.67px 0px;" id="el29ckhnjhw38" class="animable"></path><path d="M403.65,341s2.23.79,1.59,2.7-5.4,4.6-7.62,5.87-3,1.11-5.55-.32a6.86,6.86,0,0,1-3.18-3.81,32.77,32.77,0,0,0,4.77-.47Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 397.123px 345.715px 0px;" id="el2tlt5918o29" class="animable"></path><path d="M385.4,336.86s0,7.3,1.75,7.94a14.18,14.18,0,0,0,5.24.95c1.11-.16,8.57-2.7,10-3.65s2.86-3,2.07-4.92l-.8-1.9a43.92,43.92,0,0,1-7.3.63c-4,0-10.63-1.27-11.11-.79S385.4,336.86,385.4,336.86Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 394.878px 340.381px 0px;" id="elfae7361qecq" class="animable"></path><path d="M383,327a2.07,2.07,0,0,0-.95,1.91c0,1.43-1.9,5.71.32,7.14s9.2,2.54,10.63,2.54,9.84-3,10.63-3.33.8-3.18.48-4.29-3.17-1.43-3.17-1.43S388.74,329.25,383,327Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 392.8px 332.795px 0px;" id="elf8tfhe0l90v" class="animable"></path><path d="M387.15,317.34s5.08,3.81,6,4.13l7.78,2.7s1,.47,1,2.38a3.43,3.43,0,0,1-3,3.33c-1.58.32-7.3,1.27-9.36.48a64.7,64.7,0,0,1-8.09-4.76c-1.43-1-1.59-2.23-.8-4a46.45,46.45,0,0,0,1.75-5.24" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 391.069px 323.513px 0px;" id="eltjba7vexp3a" class="animable"></path></g><g id="freepik--hand-3--inject-38" style="transform-origin: 403.704px 101.971px 0px;" class="animable"><path d="M413,89.88s-10.91,3.31-14.78,3.35-15.39-1.87-20.63-5.93a96.81,96.81,0,0,1-13.14-12.64c-3.25-3.73-5.67-3.56-5.91,1.29s2.59,10.44,5.55,13.21,7.69,5,7.9,5.86.74,2.4.74,2.4-8.52,4.73-13.65,6.83-8.89,4.22-7.67,6.47,4.43,4.83,6.26,6.84,12.11,9.28,15.36,10.28a33.9,33.9,0,0,0,7.45,1.69c1.59,0,2,.68,4.69-.81a66.09,66.09,0,0,1,6.84-3.53c1.09-.39,2.64-.13,6.8-3.31a79.58,79.58,0,0,0,7.45-6.5l16.2-4.37Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 386.819px 100.875px 0px;" id="elpd1vp0gut7g" class="animable"></path><polygon points="407.1 90.38 418.25 117.14 429.39 114.44 416.69 87.42 407.1 90.38" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 418.245px 102.28px 0px;" id="eljiob1qrr9f" class="animable"></polygon><polygon points="432.04 79.18 412.19 87.13 425.57 118.92 456.23 113.2 454.85 111.06 432.04 79.18" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 434.21px 99.05px 0px;" id="eln9m0ic2pcv" class="animable"></polygon><path d="M373,99s3.83,7.8,5,9.48,8,3.61,9.52,2.94" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 380.26px 105.278px 0px;" id="el8jyfccmzk2" class="animable"></path><path d="M383,118.35s2.27-.65,2.86,1.27-1.71,6.88-2.78,9.21-1.8,2.66-4.7,3a6.81,6.81,0,0,1-4.8-1.25,31.7,31.7,0,0,0,3.6-3.16Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 379.768px 125.061px 0px;" id="elcctiixhj8n" class="animable"></path><path d="M365.77,125.61s4.24,5.94,6,5.44a14.35,14.35,0,0,0,4.82-2.27c.81-.78,5.4-7.18,6-8.79s.57-4.11-1.18-5.2l-1.75-1.09a44.23,44.23,0,0,1-5.57,4.77c-3.23,2.3-9.39,5.15-9.5,5.81S365.77,125.61,365.77,125.61Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 373.763px 122.39px 0px;" id="el4qu34cidh6h" class="animable"></path><path d="M358.1,119a2.09,2.09,0,0,0,.34,2.11c.83,1.16,1.77,5.75,4.41,5.62s9-3.29,10.13-4.12,6.24-8.18,6.71-8.9-1.21-3-2.11-3.76-3.41.69-3.41.69S364,117.48,358.1,119Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 368.862px 118.231px 0px;" id="elfkscxy863vv" class="animable"></path><path d="M355.83,108.72s6.34.14,7.3-.15,7.9-2.33,7.9-2.33,1.05-.17,2.16,1.38a3.41,3.41,0,0,1-.52,4.46c-1.1,1.19-5.19,5.28-7.33,5.84a65.34,65.34,0,0,1-9.36.84c-1.71,0-2.58-.89-3-2.77a46.88,46.88,0,0,0-1.63-5.27" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 362.57px 112.497px 0px;" id="elbzxays4zlng" class="animable"></path></g><g id="freepik--hand-2--inject-38" style="transform-origin: 85.1898px 331.142px 0px;" class="animable animator-active"><path d="M63.84,331.69s10.79-3.65,14-5.87S89.23,315.34,91.13,309a96.54,96.54,0,0,0,3.34-17.93c.47-4.92,2.54-6.19,5.55-2.38s4,10,3.17,14-3.33,8.57-3,9.36.79,2.38.79,2.38,9.68-1.11,15.08-2.38,9.68-1.75,10,.79-.8,6.51-1.11,9.21-4.45,14.6-6.51,17.3a33.39,33.39,0,0,1-5.08,5.71c-1.27,1-1.27,1.75-4.28,2.06a72,72,0,0,0-7.62,1.11c-1.11.32-2.22,1.43-7.46,1.27a79.8,79.8,0,0,1-9.84-.95l-15.71,5.87Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 94.9785px 320.442px 0px;" id="elrwslpho20l" class="animable"></path><polygon points="68.92 328.67 75.42 356.92 64.79 361.21 59.39 331.85 68.92 328.67" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 67.405px 344.94px 0px;" id="elek7p1j25hag" class="animable"></polygon><polygon points="42.11 334.07 62.88 328.99 70.5 362.63 42.24 375.82 42.11 373.27 42.11 334.07" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 56.305px 352.405px 0px;" id="el0ofdlbi389c" class="animable"></polygon><path d="M101.61,315.82s1.43,8.57,1.43,10.63-4.45,7.62-6,7.94" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 100.04px 325.105px 0px;" id="elns5piu9f0l" class="animable"></path><path d="M104.78,337.4s-2.22.8-1.59,2.7,5.4,4.6,7.62,5.87,3,1.11,5.56-.32a6.78,6.78,0,0,0,3.17-3.8,31.43,31.43,0,0,1-4.76-.48Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 111.309px 342.115px 0px;" id="elulpx4jcy6qk" class="animable"></path><path d="M123,333.28s0,7.3-1.74,7.93a14,14,0,0,1-5.24,1c-1.11-.16-8.57-2.69-10-3.65s-2.86-3-2.06-4.92l.79-1.9a43.92,43.92,0,0,0,7.3.63c4,0,10.63-1.27,11.11-.79S123,333.28,123,333.28Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 113.534px 336.841px 0px;" id="elxntb8wjp61" class="animable"></path><path d="M125.41,323.44a2,2,0,0,1,1,1.9c0,1.43,1.91,5.71-.31,7.14S116.84,335,115.41,335s-9.84-3-10.63-3.33-.79-3.18-.47-4.29,3.17-1.42,3.17-1.42S119.7,325.66,125.41,323.44Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 115.642px 329.22px 0px;" id="eljkzddsp8bq8" class="animable"></path><path d="M121.29,313.76s-5.08,3.8-6,4.12-7.78,2.7-7.78,2.7-1,.48-1,2.38a3.42,3.42,0,0,0,3,3.33c1.59.32,7.3,1.27,9.37.48A64.21,64.21,0,0,0,127,322c1.43-.95,1.59-2.22.79-4a47.14,47.14,0,0,1-1.74-5.24" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 117.39px 319.918px 0px;" id="el4o8m08b8cmd" class="animable"></path></g><g id="freepik--hand-1--inject-38" style="transform-origin: 84.8606px 111.465px 0px;" class="animable"><path d="M75.57,99.38s10.9,3.31,14.78,3.35,15.38-1.87,20.63-5.93a96.81,96.81,0,0,0,13.14-12.64c3.25-3.73,5.67-3.56,5.9,1.29s-2.59,10.44-5.54,13.21-7.7,5-7.9,5.86-.74,2.4-.74,2.4,8.52,4.72,13.65,6.83,8.89,4.21,7.67,6.46-4.43,4.83-6.26,6.84-12.11,9.29-15.36,10.29a33.9,33.9,0,0,1-7.45,1.69c-1.59,0-2,.68-4.69-.82a71.62,71.62,0,0,0-6.84-3.53c-1.09-.38-2.64-.13-6.81-3.3a80.2,80.2,0,0,1-7.44-6.5l-16.2-4.37Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 101.751px 110.374px 0px;" id="el4kiv5j4992x" class="animable"></path><polygon points="81.46 99.88 70.31 126.64 59.17 123.94 71.87 96.92 81.46 99.88" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 70.315px 111.78px 0px;" id="elk4iy3accqij" class="animable"></polygon><polygon points="56.52 88.68 76.37 96.63 62.99 128.42 32.33 122.7 33.71 120.55 56.52 88.68" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 54.35px 108.55px 0px;" id="el416vs8qwraq" class="animable"></polygon><path d="M115.53,108.45s-3.83,7.8-5,9.47-8,3.61-9.52,3" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 108.27px 114.742px 0px;" id="elgaom6x1ohbu" class="animable"></path><path d="M105.55,127.85s-2.27-.65-2.86,1.27,1.71,6.88,2.78,9.2,1.8,2.66,4.7,3a6.87,6.87,0,0,0,4.8-1.25,31.7,31.7,0,0,1-3.6-3.16Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 108.782px 134.555px 0px;" id="el3qesu1slq0b" class="animable"></path><path d="M122.79,135.11s-4.25,5.94-6,5.44a14.06,14.06,0,0,1-4.82-2.28c-.81-.77-5.4-7.18-6-8.78s-.56-4.12,1.19-5.2l1.75-1.09a42.87,42.87,0,0,0,5.57,4.76c3.23,2.31,9.39,5.16,9.5,5.82S122.79,135.11,122.79,135.11Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 114.804px 131.89px 0px;" id="elv8263izufen" class="animable"></path><path d="M130.45,128.49a2.07,2.07,0,0,1-.33,2.11c-.83,1.16-1.78,5.75-4.41,5.62s-9-3.29-10.13-4.12-6.25-8.18-6.71-8.9,1.2-3,2.11-3.76,3.41.68,3.41.68S124.51,127,130.45,128.49Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 119.697px 127.721px 0px;" id="elpb5eg3zq2ng" class="animable"></path><path d="M132.73,118.22s-6.35.14-7.31-.15-7.89-2.34-7.89-2.34-1-.16-2.16,1.39a3.42,3.42,0,0,0,.51,4.46c1.11,1.18,5.2,5.28,7.34,5.84a63.85,63.85,0,0,0,9.36.83c1.71.06,2.58-.88,2.95-2.76a47.29,47.29,0,0,1,1.63-5.28" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 125.964px 121.989px 0px;" id="elz0ra2uj4t5n" class="animable"></path></g><g id="freepik--Character--inject-38" style="transform-origin: 269.073px 260.352px 0px;" class="animable"><path d="M222,244.35s-7,30.66-7.28,45.08.52,66.39.79,77.54,5.17,47.34,5.17,50.6.82,9.52.82,9.52l-2.18,11.7a45.51,45.51,0,0,1-6.8,4.35c-4.9,2.72-10.61,6.26-12.24,8.16h0a1.89,1.89,0,0,0,.74,3,20.65,20.65,0,0,0,6.06,1.37c4.62.27,12.24.27,16.32-.82s7.35-4.62,9.25-6l1.91-1.36.27,3a25.91,25.91,0,0,0,2.72-.55,25.23,25.23,0,0,0,5.71-2.44s.27-4.63.27-7.35-1.36-7.62-1.63-8.7,0-10.89-.81-14.15-1.36-2.45-1.91-8.43,4.35-62.58,4.08-64.21S250.18,294,250.18,294s13.75,64,18.1,76.25,6.53,35.91,6.53,37.55,2.45,20.94,3.54,23.67,4.08,11.15,4.08,11.15,4.35,6.53,6.25,9.79,8.44,6,13.33,6.8,8.71,1.09,9-5.44-2.17-10.88-6.26-13.87-4.89-5.71-4.89-5.71a81.15,81.15,0,0,0,0-12c-.55-4.63-3.54-8.17-3.81-17.69s-2.18-59.58-3.81-67.47-3.78-60.67-3.51-68-.69-27.81-.69-27.81l-66.24-.75Z" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 255.425px 350.047px 0px;" id="el83ytgmmpag" class="animable"></path><path d="M248,134.74s-10.11,6-17.27,9.54-15.9,5.6-16.79,7.61-16.34,34.93-19.25,39.4-9.85,13.21-8.51,18.13,6.94,11.64,10.52,11.2,10.75-2.47,13.66-7.61,9.85-21.72,9.85-21.72,1.12,15.45.89,23.06-.22,13.88-.67,17.68-2.46,8.51-1.57,9.85,2,2.69,3.14,2.47,17.91-.45,23-.23,28.43,0,33.36.23,9.18-2.24,9.62-3.14,1.35-2.24.9-7.16.45-19.92,1.79-25.74,9.4-28.21,9.4-28.21,21.27,16.79,25.75,18.13,16.56-.67,20.59-5.59,5.37-8.74,2.91-12.09-11.42-6.49-20.82-16.57-13-14.77-19.47-17.91-19.7-7.38-22.84-8.73-4-2-6-2.91-6.72-2.68-15.45-2.91A45.16,45.16,0,0,0,248,134.74Z" style="fill: rgb(64, 123, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 268.283px 187.947px 0px;" id="elq5w8vx63c7" class="animable"></path><path d="M215.69,175.43c.31,1.08,4.51,15.86,4.51,15.86L214,179" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 217.1px 183.36px 0px;" id="elewyfgayyq7" class="animable"></path><path d="M300.11,180.1c-.93,0-9.73-5-9.73-5" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 295.245px 177.6px 0px;" id="el9iff97575ro" class="animable"></path><path d="M285.9,174.51s3.55,4.63,6.64,5.55" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 289.22px 177.285px 0px;" id="el0a0n6bidi967" class="animable"></path><path d="M246.74,148.47l2.81,10.61s-8.9,44.49-10.3,52a113.3,113.3,0,0,0-1.72,13.73l7.8,15.45,9.84-16.7s-.94-21.07-1.25-37.92.31-25,.15-25.44,9.84-7.81,9.84-7.81,5.77-6.4,6.08-7.49-4.05.31-5,1.25a8.91,8.91,0,0,1-7.8,1.87c-4.06-.78-9.37-5.3-10.15-3.12A5.91,5.91,0,0,0,246.74,148.47Z" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 253.768px 192.286px 0px;" id="el5a6mynkw3o7" class="animable"></path><path d="M253.45,130.37c-.47.31-4.21,1.25-5.46,4.37s-7.65,17.48-9.52,19.82,1.09,1.4,3.59-.16,4.68-7.64,6.08-5,5.47,3.74,5.47,3.74,8.42-1.56,10.3-2.81a27,27,0,0,0,3.59-3s7.18,10.77,9.2,11.7,2.35-.62,2.5-2.34a128.76,128.76,0,0,1,3.59-18.57c2-6.71-1.87-8.9-4.37-11.7s-5.31-.94-8.11-.63S253.45,130.37,253.45,130.37Z" style="fill: rgb(64, 123, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 260.612px 142.104px 0px;" id="elfp5lxyqqacf" class="animable"></path><path d="M249.17,82.31s-4.88,7.41-4,9.21.9,4.16,0,5.42a7.59,7.59,0,0,0-1.63,6c.36,3.07-1.44,18.6,1.27,20.41a24.84,24.84,0,0,0,5.59,2.71s3.07,26,4.16,25.28S271.2,134.69,273,131.25s4-8.3,4-8.3,6.14-11.74,9.75-16.62,7.77-13.9,6.51-18.6-7.77-8.13-10.84-10.66-1.08-8.3-5.42-11.19-9.57-3.61-13-2.35-3.61,4-7.77,1.26-8.12-5.41-14.44-2.34-7.59,13.9-3.8,16.79S249.17,82.31,249.17,82.31Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 264.675px 106.217px 0px;" id="el354xmnu29ek" class="animable"></path><path d="M282.4,77.07c-3.07-2.52-1.08-8.3-5.42-11.19s-9.57-3.61-13-2.35-3.61,4-7.77,1.26-8.12-5.41-14.44-2.34-7.59,13.9-3.8,16.79,11.2,3.07,11.2,3.07,5.42-2.53,9-4.51,11.74,1.26,13.18,2.53-.72.36-1.08,2.7,4.15,6.15,6.14,8-.36,3.07-.9,5.42,1.62,3.25,2.89,2.35,5.23-6,6.68-3.07,3.61,7.22-.36,10.29-6.87,2.35-6.87,2.35-1.29,7.82,2.46,8.43a116.83,116.83,0,0,1,6.39-10.42c3.62-4.87,7.77-13.9,6.51-18.6S285.47,79.6,282.4,77.07Z" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 264.64px 88.9401px 0px;" id="elgtbpjsf5mh" class="animable"></path><path d="M258.92,91.88a8.81,8.81,0,0,1,3.61-.54" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.5px; transform-origin: 260.725px 91.602px 0px;" id="el1ux4xmjgc29" class="animable"></path><path d="M249.68,93.66a10,10,0,0,0-2.56.92" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.5px; transform-origin: 248.4px 94.12px 0px;" id="elq2r24hhf59d" class="animable"></path><path d="M249.74,88.73a5.89,5.89,0,0,1,.53,4c-.59,2-6.18,6.37-6.11,7.22s3.28,2.63,3.22,3.35-.26,1.91-.26,1.91" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 247.284px 96.97px 0px;" id="el42swh2x9v5w" class="animable"></path><ellipse cx="261.96" cy="92.93" rx="1.18" ry="1.45" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.5px; transform-origin: 261.96px 92.93px 0px;" id="el0j9zg2s42k44" class="animable"></ellipse><path d="M259.66,95.3a14.62,14.62,0,0,1,5-1.12" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 262.16px 94.74px 0px;" id="elcmvtp6n03t" class="animable"></path><path d="M255.49,86.6s3.87-3.59,6.87-2.87,4.14,3.61,3.66,3.62-2-2.22-3.64-2.39-2.81.61-4.23,1.33S255.86,87.51,255.49,86.6Z" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.5px; transform-origin: 260.808px 85.4923px 0px;" id="elr4pn6xbh05d" class="animable"></path><path d="M250,89.45a1.77,1.77,0,0,0-2.24-1.38c-1.77.27-3.11,3.49-2.57,3.45s1.13-2.07,2.51-2.26S250,91.23,250,89.45Z" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.5px; transform-origin: 247.534px 89.7593px 0px;" id="elhybui2xc1eq" class="animable"></path><path d="M247,109.29s2.83-.33,6.51-.79,8.86-1.18,9.72-3.81a9.9,9.9,0,0,0,.65-4" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 255.445px 104.99px 0px;" id="el9fg0t152v7a" class="animable"></path><path d="M261.89,100.49a11.27,11.27,0,0,1,3.22.2" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 263.5px 100.571px 0px;" id="elk1u59fz0nkb" class="animable"></path><path d="M277.05,113.47a9.75,9.75,0,0,1-4,6c-3.28,2.09-27.37,4.48-26.57,4.78s3.93,1.8,3.93,1.8l.94,8.55a57.72,57.72,0,0,1,12.55-8.46C271.88,122,276.86,120.63,277.05,113.47Z" style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.5px; transform-origin: 261.755px 124.035px 0px;" id="el6xnnw2loib" class="animable"></path><path d="M290.49,230.24s-4.48-.22-5.6-.44-4.7-3.59-6.27-3.36-4.47,3.36-5.59,6-1.57,4-1.57,4-4,3.58-2,6,4.26,1.57,4.26,1.57,1.34,2.24,3.13,2.46a37.82,37.82,0,0,0,4,.23,10.52,10.52,0,0,0,3.58.45,8.21,8.21,0,0,0,2.69-1.12,3.9,3.9,0,0,0,2.69-.68c.82-.65,4.79-4.71,6.84-6.8l1.21-1.25Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 283.38px 236.795px 0px;" id="elqglh0fgmaxe" class="animable"></path><path d="M327.87,184.13s-8.28,9.18-11,13.65a220,220,0,0,1-14.1,19.7c-3.13,3.58-14.1,12.32-14.1,12.32s3.35,7.16,5.82,8.28a24.83,24.83,0,0,0,4.47,1.56l9-6.71s17-13,26-20.37,21.49-17.24,22.39-21.49.22-6.49-4.25-9.85a31.58,31.58,0,0,0-9.18-4.7" style="fill: rgb(64, 123, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 322.682px 208.08px 0px;" id="elpv6logzd71" class="animable"></path><path d="M295.64,224.2s2,9.85,8.95,9.85" style="fill: none; stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 300.115px 229.125px 0px;" id="el3pf4sujtrz6" class="animable"></path><path d="M198.1,151.67s.92,7.87,1.39,11.42a12.24,12.24,0,0,0,1.54,5.09s-7.25,16.2-7.56,16.67-7.87,14.66-9.11,16.35-4.16,7.1-2.31,10.5,4.78,10.34,8.64,10.49,9.26-2.16,13-4.32,4.94-3.55,5.25-9.72.15-17.28,1.24-23.15,1.85-12,2.62-14.35,5.25-1.54,6.79-2.47,2.93-2.93,5.71-4.17a13.59,13.59,0,0,1,7.56-.61c.93.31,2.62-1.08,2.16-2.78s-3.55-2.62-6.64-2.32-5.86,1.24-6.63.78-1.54-8.65-1.54-8.65-11,.93-14.82,1.08S198.1,151.67,198.1,151.67Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 208.275px 186.313px 0px;" id="elf19ktxf9v3m" class="animable"></path><path d="M215.07,145.65s.16,10.19.16,11.11a1.56,1.56,0,0,0,1.69,1.54c.78-.15,2.78.62,3.25-1.69s1.38-8.8.92-10.34S216.46,144.11,215.07,145.65Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 218.143px 151.534px 0px;" id="ele2b61up1h8" class="animable"></path><path d="M215.07,145.65s-4.93-1.23-6.32-.46.77,11.73.92,12.65,2.32,1.39,3.24,1.08,2.32-.92,2.32-2.16S215.07,145.65,215.07,145.65Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 211.758px 151.976px 0px;" id="elpdt53ox89yl" class="animable"></path><path d="M207.67,145.5s-3.24-.62-4.17.46-1.23,2.62-.93,5.4a26.53,26.53,0,0,0,2.47,7.87c.62.93,2.63,1.08,3.86.62s.77-2,.77-2-.62-.62-.77-5.4-.15-7.25-.15-7.25Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 206.106px 152.651px 0px;" id="el01vma7zk5tw7" class="animable"></path><path d="M202.27,147.35c-.62.15-4.48.31-4.63,1.85s1.23,8.8,1.85,9.57,2.31.46,2.93.15,1.7-.77,1.54-1.7S202.27,147.35,202.27,147.35Z" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 200.802px 153.301px 0px;" id="elhepunydvbgb" class="animable"></path><path d="M203.5,177.9a6.48,6.48,0,0,1-5-4c-2.12,4.72-4.82,10.69-5,11-.31.46-7.87,14.66-9.11,16.35s-4.16,7.1-2.31,10.5,4.78,10.34,8.64,10.49,9.26-2.16,13-4.32,4.94-3.55,5.25-9.72.15-17.28,1.24-23.15c.52-2.88,1-5.82,1.4-8.36A22.07,22.07,0,0,1,203.5,177.9Z" style="fill: rgb(64, 123, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 196.546px 198.073px 0px;" id="elosscf3ou7fs" class="animable"></path><path d="M210.6,160.93s-2.63,2.31-2.93,4.32a5.9,5.9,0,0,0,.77,3.7" style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; stroke-width: 0.75px; transform-origin: 209.114px 164.94px 0px;" id="elbosywrc5jju" class="animable"></path></g><defs>     <filter id="active" height="200%">         <feMorphology in="SourceAlpha" result="DILATED" operator="dilate" radius="2"></feMorphology>                <feFlood flood-color="#32DFEC" flood-opacity="1" result="PINK"></feFlood>        <feComposite in="PINK" in2="DILATED" operator="in" result="OUTLINE"></feComposite>        <feMerge>            <feMergeNode in="OUTLINE"></feMergeNode>            <feMergeNode in="SourceGraphic"></feMergeNode>        </feMerge>    </filter>    <filter id="hover" height="200%">        <feMorphology in="SourceAlpha" result="DILATED" operator="dilate" radius="2"></feMorphology>                <feFlood flood-color="#ff0000" flood-opacity="0.5" result="PINK"></feFlood>        <feComposite in="PINK" in2="DILATED" operator="in" result="OUTLINE"></feComposite>        <feMerge>            <feMergeNode in="OUTLINE"></feMergeNode>            <feMergeNode in="SourceGraphic"></feMergeNode>        </feMerge>            <feColorMatrix type="matrix" values="0   0   0   0   0                0   1   0   0   0                0   0   0   0   0                0   0   0   1   0 "></feColorMatrix>    </filter></defs></svg>
<div class="button-container-div">
<a href="roomLogin.jsp" class="btn btn-add" style="align-items:center; margin:20px;">Successfully Add</a>
</div>

<br>
<br>
</body>
<!-- Footer -->
<footer class="text-center text-lg-start bg-light text-muted">
	<!-- Section: Social media -->
	<section
		class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
		<!-- Left -->
		<div class="me-5 d-none d-lg-block">
			<span>Get connected with us on social networks:</span>
		</div>
		<!-- Left -->

		<!-- Right -->
		<div>
			<a href="" class="me-4 text-reset"> <i class="fab fa-facebook-f"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-twitter"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-google"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-instagram"></i>
			</a> <a href="" class="me-4 text-reset"> <i class="fab fa-linkedin"></i>
			</a>
		</div>
		<!-- Right -->
	</section>
	<!-- Section: Social media -->

	<!-- Section: Links  -->
	<section class="">
		<div class="container text-center text-md-start mt-5">
			<!-- Grid row -->
			<div class="row mt-3">
				<!-- Grid column -->
				<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
					<!-- Content -->
					<h6 class="text-uppercase fw-bold mb-4">
						<i class="fas fa-gem me-3"></i>Hotel Management System
					</h6>
					<p>We are a small island with big hearts. Wherever you may find
						yourself in Sri Lanka, rest easy knowing that an open door is
						never too far away.</p>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
					<!-- Links -->
					<h6 class="text-uppercase fw-bold mb-4">Products</h6>
					<p>
						<a href="#!" class="text-reset">Food</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Rooms & Offers</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Event</a>
					</p>

				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
					<!-- Links -->
					<h6 class="text-uppercase fw-bold mb-4">Useful links</h6>
					<p>
						<a href="#!" class="text-reset">About US</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Contact US</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Orders</a>
					</p>
					<p>
						<a href="#!" class="text-reset">Help</a>
					</p>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
					<!-- Links -->
					<h6 class="text-uppercase fw-bold mb-4">Contact</h6>
					<p>
						<i class="fas fa-home me-3"></i> Sri Lanka, SL 227, SL
					</p>
					<p>
						<i class="fas fa-envelope me-3"></i> info@example.com
					</p>
					<p>
						<i class="fas fa-phone me-3"></i> +94 754325432
					</p>
					<p>
						<i class="fas fa-print me-3"></i> +94 754321234
					</p>
				</div>
				<!-- Grid column -->
			</div>
			<!-- Grid row -->
		</div>
	</section>
	<!-- Section: Links  -->

	<!-- Copyright -->
	<div class="text-center p-4"
		style="background-color: rgba(0, 0, 0, 0.05);">
		&copy;  2022 Copyright: <a class="text-reset fw-bold"
			href="https://mdbootstrap.com/">ITPM</a>
	</div>
	<!-- Copyright -->
</footer>
<!-- Footer -->
</html>