﻿<%@ Application Language="C#" %>

<script RunAt="server">

	protected void Application_Start(object sender, EventArgs e)
	{

	}

	protected void Session_Start(object sender, EventArgs e)
	{

	}

	protected void Application_BeginRequest(object sender, EventArgs e)
	{

	}

	protected void Application_AuthenticateRequest(object sender, EventArgs e)
	{

	}

	protected void Application_Error(object sender, EventArgs e)
	{
		Exception ex = Server.GetLastError();
		Application["lastError"] = ex;
		Application["lastErrorRequest"] = Request;
		Server.ClearError();
		Response.Redirect("~/error.aspx");
	}

	protected void Session_End(object sender, EventArgs e)
	{

	}

	protected void Application_End(object sender, EventArgs e)
	{

	}
	
</script>
