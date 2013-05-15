<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/main.master" Title="Privacy - muski" %>

<asp:Content ContentPlaceHolderID="cph_main" ID="main" runat="server">
	<h1>Privacy Policy</h1>
	<blockquote>
		We are people with privacy like you, too. None from our team wany our privacy being
		violated as well. Hence, this is our privacy policy. This policy applies to all means
		of using our website, our services and our software.
	</blockquote>
	<h2>Information collection and disclosure</h2>
	<p>
		We collect only the least amount of information that is required to maintain our
		services and website operate properly. Additional information will only be collected
		on an opt-in basis (that is, only when you feel OK to share.)
	</p>
	<p>
		Any information we collected will not be disclosed to any third party unless you
		explicitly allowing our to do so. We will try our best to defend your privacy by any
		possible technical means.
	</p>
	<p>
		You may ask us to remove all information we collected about you at any time. We will comply
		unless the removal will cause major disruption to our services, or it is technologically
		impossible.
	</p>
	<h2>Information handling and storage</h2>
	<p>
		We place adequate encryption on the information we collected. Technological restrictions of
		access is also in place.
	</p>
	<p>
		We never transfer your passwordin plain, even thouh we cannot afford a SSL certificate
		now (this is also why you cannot sign up directly on our website.) Actually when you
		are using our software to sign into our service, your password never leaves your device,
		only a irreversible hash did.
	</p>
	<p>
		We never store passwords in plain or any reversable format (to the extent that we have even
		deprecated weaker non-reversable formats like MD5 and SHA-1 - your passwords are, for now,
		stored as SHA-512 hashes in our databases.)
	</p>
	<h2>Cookies</h2>
	<p>
		Our site use cookies to track your visiting session, including but not limited to your
		login session, API usage and preference. Cookies placed by us are never intended, 
		and will never be used to identify you.
	</p>
	<p>
		You can always opt out cookies from your browser or your device. Please refer to
		the manual of your browser or device to learn how to stop cookies from coming.
	</p>
	<p>
		Our app may ignore some certain cookie preferences and hold a cookie or two. This is
		only used to make sure the software work properly, and only a minimal amount of cookie will
		be held. Moreover, whenever you exit the software, this cookie will be deleted.
	</p>
	<p>
		In this paragraph, the "cookie" we are talking about, are not only common browser cookies,
		but also some certain programmetical cookies that is issued in our API.
	</p>
	<h2>Third party liability</h2>
	<p>
		We use some third party services to provide some certain fatures, including advertising.
		The third party may collect some information on their own behalf.
	</p>
	<p>
		Some third providers, like Google, may use cookies, including DART cookies to send targeted
		ads to you. Those cookies may be existing even before you visited our website or used
		our service. We will never use that information ourselves.
	</p>
	<p>
		Our API is an open platform, and may hand out programmetical cookies. We make sure that
		we use that reasonably, however we have no say on third party softwares that calls our
		API. You should check that software's privacy policy before use.
	</p>
	<hr />
	<address>
		muski Privacy Policy, git version <%= Application["gitVersion"] %>. This version is written
		on May 16, 2013.
	</address>
</asp:Content>
