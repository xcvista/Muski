<%@ WebHandler Language="C#" Class="Muski.api.Version" %>
<%@ Assembly Name="Newtonsoft.Json" %>

using System;
using System.Collections.Generic;
using System.Web;
using Newtonsoft.Json;

namespace Muski.api
{	
	/// <summary>
	/// version 的摘要说明
	/// </summary>
	public class Version : IHttpHandler
	{

		[JsonObject()]
		protected class JSONVersion
		{
			[JsonProperty()]
			public string version = "0.1";

			[JsonProperty()]
			public string language = "JSON";
		}
		
		public void ProcessRequest(HttpContext context)
		{
			context.Response.ContentType = "application/json; charset=utf-8";
			context.Response.Output.Write(JsonConvert.SerializeObject(new JSONVersion()));
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