
<ul class="nav navbar-nav navbar-right">
        <li>
        	<cfoutput >
        		<a href=#event.buildLink("Main.notifications")#>
        	</cfoutput>
        	
				<span class="glyphicon glyphicon-bell"></span>
				 NOTIFICATION
			</a>
		</li>
		<li>
			<cfoutput >
				<a href=#event.buildLink("user.logout.doLogout")#>
        	</cfoutput>
        	<span class="glyphicon glyphicon-log-out"></span>
				LOGOUT
			</a>		
		</li>
</ul>
