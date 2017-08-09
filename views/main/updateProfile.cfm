<cfoutput >
	<p>#prc.welcomeMessage#</p>
	
</cfoutput>
<p>In order to personalize user experience we need to collect some additional data</p>
<form id="form-register-additional-data" role="form" action="" method="post">

    <div class="form-group">
      <label for="email"><span class="glyphicon glyphicon-user"></span>Email Address</label>
      <input type="email" class="form-control required" name="email" id="email" placeholder="Email Address">
    </div>
    <div class="form-group">
      <label for="password"><span class="glyphicon glyphicon-eye-close"></span> Password</label>
      <input type="password" class="form-control required" name="password"id="password" placeholder="Password">
    </div>
	<div class="curent-user-view">
		<cfoutput >
			<input type="hidden" name="eventCallee" value="#event.getCurrentEvent()#">	
		</cfoutput>
		
	</div>
      <button type="submit" class="btn btn-block">Login 
        <span class="glyphicon glyphicon-log-in""></span>
      </button>
 </form>