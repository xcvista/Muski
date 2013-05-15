<%@ Application Language="C#" %>

<%@ Import Namespace="System.Diagnostics" %>

<script RunAt="server">

	protected void Application_Start(object sender, EventArgs e)
	{
		// Get the git version.
		try
		{
			string buffer = "";
			string err = "";
			
			ProcessStartInfo start = new ProcessStartInfo();
			start.CreateNoWindow = true;
			start.RedirectStandardOutput = true;
			start.RedirectStandardError = true;
			start.UseShellExecute = false;
			start.Arguments = string.Format("{0} {1}", Server.MapPath("~/get-version.sh"), Server.MapPath("~/"));
			start.FileName = "bash";

			Process process = new Process();
			process.StartInfo = start;
			process.EnableRaisingEvents = true;
			process.OutputDataReceived += new DataReceivedEventHandler(
				delegate(object sender2, DataReceivedEventArgs e2)
				{
					buffer += e2.Data;
				});
			process.ErrorDataReceived += new DataReceivedEventHandler(
				delegate(object sender2, DataReceivedEventArgs e2)
				{
					err += e2.Data;
				});

			process.Start();
			process.BeginOutputReadLine();
			process.BeginErrorReadLine();
			process.WaitForExit();
			process.CancelOutputRead();
			process.CancelErrorRead();

			Application["gitVersion"] = (err.Length <= 0) ? buffer : string.Format("{0} ({1})", buffer, err);
		}
		catch (Exception ex)
		{
			Application["gitVersion"] = String.Format("Unknown ([{0}] {1}<pre>{2}</pre>)<br />", ex.GetType().FullName, ex.Message, ex.StackTrace);
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
