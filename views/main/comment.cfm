<div class="comments-add-a-comment">
	<br>
	<h3 id="comment-header">Have an opinion?Post it here</h3>
	<textarea id="add-current-user-comment" style="width:75%;height:100px" onfocus="clearErrors(this)"></textarea><br>
	<button type="button" id="post-comment" class="btn btn-info btn-lg" style="width:10%" onclick="postComment(this)">
		<span class="glyphicon glyphicon-send"></span>Post
	</button>
</div>

<script type="text/javascript">
	function clearErrors(element){
			if(element.nextElementSibling.nextElementSibling.className === "errors" )	
				element.nextElementSibling.nextElementSibling.remove();
		}
	function postComment(element){
		var commentContent = element.previousElementSibling.previousElementSibling.value;
		if(checkWord(commentContent)){
			<cfoutput>
				$.getJSON('/index.cfm/user/postComment/addComment/content/' + commentContent + '/cuid/#rc.cuid#' , function(result)
			</cfoutput>
			{
				console.log(result);
				var updatedComment = result.DATA.COMMENT[0];
				var meta = document.createElement("span");
				meta.className = "glyphicon glyphicon-user";
				meta.innerText = result.DATA.FIRSTNAME[0] + result.DATA.LASTNAME[0]; 
				var date = document.createElement("p");
				date.innerText = result.DATA.CREATIONDATE[0];
				meta.append(date);
				var newComment = document.createElement("span");
				newComment.className = "glyphicon glyphicon-comment";
				newComment.innerText = updatedComment;
				meta.append(newComment);
				$("#comment-header").before(meta);
				
			});
		}
		else{
			var error = document.createElement("p");
			error.innerText = "Your input does not contain letters or it was empty";
			error.style.color = "red";
			error.className = "errors";
			element.insertAdjacentElement('beforebegin',error);
		}	
					
	}
	function checkWord(text)
	{
		var counter=0;
		var len = text.length;
		for(var iterator=0 ; iterator<len; iterator++)
		{
			var unicode = text.charCodeAt(iterator);
			if((unicode >= 65 && unicode <=90) || (unicode >= 97 && unicode <= 122) 
			   || unicode === 32 || unicode === 46 || unicode === 44
			   || (unicode >= 48 && unicode <= 57) || unicode === 8482 || unicode === 174)
					counter++;
			
		}
		
		if(counter !== len)
			return false;
		else
			return true;
	}

</script>
