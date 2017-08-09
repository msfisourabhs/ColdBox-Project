<div class="col-md-4" style="width:100%">
    
	<div class="comments" style="padding ">
		<cfloop query="prc.companyData.Comments" >
			<cfif CommentTypeID EQ 1>
				<cfoutput>
					<div class="user-metadata" >
						<span class="glyphicon glyphicon-user" style="font-size:25px"><p>#FirstName# #LastName#</p></span>
						<p style="font-family:Monaco;">#DateTimeFormat(CreationDate,"medium" )#</p>
					</div>
					<div class="user-comment-content">
						<p>
							<span class="glyphicon glyphicon-comment"></span>#Comment#
						</p>
			  		</div>
					
					<br>
				</cfoutput>
			</cfif>
			<cfif ReplyId NEQ "">
				<cfloop query="prc.companyData.Replies">
					<cfif CommentId EQ prc.companyData.Comments.ReplyId>
						<cfoutput>
							<div class="reply-content" style="padding-left:50px">
								<span class="glyphicon glyphicon-share-alt"></span>#Comment#
							</div>
						</cfoutput>
					</cfif>
				</cfloop>
			<cfelseif Session.roleId EQ 3>
				<cfoutput>
					#renderView(view=args.userInfo , args = {commentId:"#CommentId#"})#
				</cfoutput>
				
			</cfif>
			
		</cfloop>
		<cfif StructKeyExists(Session,"roleId") AND SESSION.roleId EQ 2>
			<cfoutput>
					#renderView(args.userInfo)#
			</cfoutput>
		</cfif>	
			
	</div>
</div>
