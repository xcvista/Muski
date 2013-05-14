<%@ Application Language="C#" %>

<%@ Import Namespace="System.Diagnostics" %>

<script RunAt="server">

	protected void Application_Start(object sender, EventArgs e)
	{
		// Get the git version.
		try
		{
			string buffer = "";
			
			ProcessStartInfo start = new ProcessStartInfo();
			start.CreateNoWindow = true;
			start.RedirectStandardOutput = true;
			start.UseShellExecute = true;
			start.Arguments = "log -1 --format=\"%h\"";
			start.FileName = "git";

			Process process = new Process();
			process.StartInfo = start;
			process.EnableRaisingEvents = true;
			process.OutputDataReceived += new DataReceivedEventHandler(
				delegate(object sender2, DataReceivedEventArgs e2)
				{
					buffer += e2.Data;
				});

			process.Start();
			process.BeginOutputReadLine();
			process.WaitForExit();
			process.CancelOutputRead();

			Application["gitVersion"] = buffer;
		}
		catch
		{
			Application["gitVersion"] = "Unknown";
		}
		
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
