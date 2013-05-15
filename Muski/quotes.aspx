<%@ Page Title="Quirky Quotes - muski" Language="C#" MasterPageFile="~/main.master" %>

<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_main" runat="server">
	<h1>How quirky are we?</h1>
	<p>Here is a list of our quirky quotes collection.</p>
	<ul>
		<%
			string fileName = Server.MapPath("~/data/quirky.txt");
			if (File.Exists(fileName))
			{
				StreamReader sr = new StreamReader(fileName);
				while (!sr.EndOfStream)
				{
					string line = sr.ReadLine().Trim();
					if (line.StartsWith("#"))
						continue;
					if (line.Length <= 0)
						continue;
		%>
		<li><%= line %></li>
		<%
				}
				sr.Close();
			}
		%>
	</ul>
</asp:Content>
