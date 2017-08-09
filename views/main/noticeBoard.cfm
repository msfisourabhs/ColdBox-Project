<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<div class="w3-sidebar w3-bar-block w3-dark-grey w3-animate-left" style="display:none" id="mySidebar">
  <button class="w3-bar-item w3-button w3-large"
  onclick="w3_close()" >Close &times;</button>
  <a href="" class="w3-bar-item w3-button">Link 1</a>
  <a href="" class="w3-bar-item w3-button">Link 2</a>
  <a href="" class="w3-bar-item w3-button">Link 3</a>
</div>

<div>
	
  <button class="w3-button w3-white w3-large" onclick="w3_open()" style="display:block;width:10%;margin:0px;padding:0px">&#9776;</button>
 
</div>

<script>
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
}
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
}
</script>
     
