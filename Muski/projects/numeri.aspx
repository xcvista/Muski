<%@ Page Title="numeri - muski" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
	<%
	string ua = Request.UserAgent
	if (ua.Contains("iPhone") || ua.Contains("iPad"))
	{
	%>
	<meta name="apple-itunes-app" content="app-id=646849260" />
	<%
	}
	%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_main" runat="server">
	<div class="bracer">
		<a href="../images/numeri-screen.png">
			<img src="../images/numeri-screen.png" style="width: 200px;" alt="numeri on iPhone" />
		</a>
		<br />
		numeri running on iPhone 4S in Chinese (Simplified).
	</div>
	<h1>numeri</h1>
	<p>numeri is a simple number guessing game for iPhone and iPad.</p>
	<p>numeri is availible in English as well as Chinese. This app is translated in-house.</p>
	<p>
		Download numeri here: 
		<a href="https://itunes.apple.com/us/app/numeri-the-number-game/id646849260?ls=1&amp;mt=8">iOS App Store</a>.
	</p>
</asp:Content>
