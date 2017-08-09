<div class="comments-add-a-reply">
	<br>
	<cfoutput >
	<h3 id="reply-header">Reply here</h3>
		<textarea id="reply_#args.commentId#" style="width:75%;height:100px" onfocus="clearErrors(this)"></textarea><br>
		<button type="button" id="#args.commentId#" class="btn btn-info btn-lg" style="width:10%" onclick="postReply(this)">
		<img src="#base#includes/images/loading.gif" id="loading-#args.commentId#" style="display:none;hidden:true"height="100px" width="100px">
	</cfoutput>
	
		<span class="glyphicon glyphicon-send"></span>Reply</button>
</div>
<script type="text/javascript">
	function clearErrors(element){
		if(element.nextElementSibling.nextElementSibling.className === "errors" )	
			element.nextElementSibling.nextElementSibling.remove();
	}
	function postReply(element){
		var replyContent = element.previousElementSibling.previousElementSibling.value;
		var replyId = element.id;
		console.log(replyId);
		if(checkWord(replyContent)){
			<cfoutput>
				$.getJSON('/index.cfm/company/postReply/addReply/content/' + replyContent + '/replyID/' + replyId, function(result)
			</cfoutput>
			{
				$("#loading-" + element.id).show();
				console.log(result);
				var updatedReply = result.DATA.COMMENT[0];
				//var date = document.createElement("p");
				//date.innerText = result.DATA.CREATIONDATE[0];
				//meta.append(date);
				var newReply = document.createElement("span");
				newReply.className = "glyphicon glyphicon-share-alt";
				newReply.innerText = updatedReply;
				
				$("#reply-header").before(newReply);
				$("#loading-" + element.id).hide();
				
			});
		}
		else{
			var error = document.createElement("p");
				error.innerText = "Your input does not contain letters or it was empty";
				error.style.color = "red";
				error.className = "errors";
				element.insertAdjacentElement('beforebegin',error);
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

					
	}
	
</script>
