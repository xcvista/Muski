<%@ WebHandler Language="C#" Class="Muski.api.error" %>

using System;
using System.Collections.Generic;
using System.Web;
using Newtonsoft.Json;

namespace Muski.api
{
	/// <summary>
	/// error 的摘要说明
	/// </summary>
	public class error : IHttpHandler
	{

		protected class JSONError
		{
			public string file;
			public JSONException exception;
		}

		protected class JSONException
		{
			public string type;
			public string message;
			public string stack;
			public JSONException innerException;

			public JSONException(Exception ex)
			{
				this.type = ex.GetType().FullName;
				this.message = ex.Message;
				this.stack = ex.StackTrace;
				this.innerException = (ex.InnerException != null) ? new JSONException(ex.InnerException) : null;
			}
		}
		
		public void ProcessRequest(HttpContext context)
		{
			context.Response.ContentType = "application/json; charset=utf-8";
			
			Exception ex = (Exception)context.Application["lastError"];
			HttpRequest req = (HttpRequest)context.Application["lastErrorRequest"];
			JSONError err = new JSONError();
			if (req != null)
				err.file = req.FilePath;
			if (ex != null)
				err.exception = new JSONException(ex);

			context.Response.Output.Write(JsonConvert.SerializeObject(err));
		}

		public bool IsReusable
		{
			get
			{
				return false;
			}
		}
	}
}