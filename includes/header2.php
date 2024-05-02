<header>
	<style>
		.logout-btn {
    background-color: white;
    border: none;
    border-radius: 3px;
    color: #ff5a00;
    padding: 4px 6px 4px 6px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
}
.logout{
	margin-top: -2px;
}
	</style>
	<div class="nav_toggle" onclick="toggle_class();">
		
		<span class="toggle_icon"></span>
		
	</div>
	
	<div onclick="remove_class()">
	
	<div class="main_nav">
		
		<h2>EatUP</h2>
		
		<ul class="default_links">
			
			<li><a href="index.php">Home</a></li>
			<li><a href="menu.php">Menu</a></li>
			<li><a href="reservation.php">Reservation</a></li>
			<li><a href="gallery.php">Gallery</a></li>
			<li><a href="basket.php">Order</a></li>
			<!-- <li><a href="signup.php" class="logout-btn">Logout</li> -->
			<!-- <li><button class="logout-btn"><p class="logout">SignUp</p></button></li> -->
			<li><button class="logout-btn" id="signup-btn"><p class="logout">Logout</p></button></li>

<script>
  document.getElementById("signup-btn").addEventListener("click", function() {
    window.location.href = "logout.php";
  });
</script>

		</ul>
	
		<p class="clear"></p>
		
	</div>
	
	<p class="clear"></p>
	
	</div>
	
</header>

<div class="responive_nav">
	
	<div class="nav_section_img">
		
		<div class="nav_section_div">
			
			<h3>EatUP</h3>
			
		</div>
		
	</div>
	
	<div class="nav_section">
		
		<ul>
			
			<li><a href="index.php"><span class="home">Home</span></a></li>
			<li><a href="menu.php"><span class="menu">Menu</span></a></li>
			<li><a href="reservation.php"><span class="reserve">Book Table</span></a></li>
			<li><a href="gallery.php"><span class="gallery">Gallery</span></a></li>
			<li><a href="basket.php"><span class="order">Order</span></a></li>
			
		</ul>
		
	</div>
	
</div>