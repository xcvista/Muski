<%@ Page Title="Share Folder - muski" Language="C#" MasterPageFile="~/main.master" %>

<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_main" runat="server">
	<h1>Shared files</h1>
	<blockquote>
		<h3>Copyright warning</h3>
		<p>
			Files in this section may contain copyrighted contents that is intended for fair use.
			Plaese do not play the system and use it maliciously.
		</p>
	</blockquote>
	<ul>
		<li><a href="../">../ (Up)</a></li>
		<%
			string thisFolder = Server.MapPath(".");
			DirectoryInfo di = new DirectoryInfo(thisFolder);

			foreach (DirectoryInfo subdi in di.GetDirectories())
			{
		%>
		<li><a href="<%= subdi.Name %>/"><%= subdi.Name %>/</a></li>
		<%
			}
			foreach (FileInfo fi in di.GetFiles())
			{
				if (fi.Name == "default.aspx")
					continue;
		%>
		<li><a href="<%= fi.Name %>"><%= fi.Name %></a></li>
		<%
			}
		%>
	</ul>
</asp:Content>
