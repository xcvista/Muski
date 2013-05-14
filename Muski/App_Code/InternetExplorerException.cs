using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Muski.App_Code
{
	public class InternetExplorerException : Exception
	{
		public InternetExplorerException(string message) : base(message)
		{
			
		}
	}
}