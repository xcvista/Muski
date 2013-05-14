<%@ Page Title="Error - muski" Language="C#" MasterPageFile="~/main.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_main" runat="server">
	<%
		Exception ex = (Exception)Application["lastError"];
		HttpRequest req = (HttpRequest)Application["lastErrorRequest"];
	%>
	<h1>Oops.</h1>
	<p>
		Something went south when you tried to visit 
		<%= (req != null) ? req.FilePath : "our site" %>.
	</p>
	<%
		if (ex != null)
		{
	%>
	<p>
		Here is what went wrong (<%= ex.GetType().FullName %>):
		<pre><%= ex.Message %></pre>
	</p>
	<p>
		More technical information:
		<pre><%= ex.StackTrace %></pre>
		<%
			Exception sub = ex.InnerException;
			while (sub != null)
			{
		%>
		<pre>[<%= sub.GetType().FullName %>] <%= sub.Message %></pre>
		<pre><%= sub.StackTrace %></pre>
		<% 
				sub = sub.InnerException;
			} 
		%>
	</p>
	<%
		}
	%>
</asp:Content>
