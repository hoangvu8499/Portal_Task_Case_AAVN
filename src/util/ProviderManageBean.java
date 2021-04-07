package util;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.request.IHttpResponse;
import util.LinkHelper;

@ViewScoped
@ManagedBean(name = "providerManageBean")
public class ProviderManageBean {

	public void createProviderPage() throws java.io.IOException {
		String link = LinkHelper.getFullLinkBySignature("createProvider()");
		redirect(link);
	}
	
	public void redirect(String uri) throws java.io.IOException {
		IHttpResponse httpResponse = (IHttpResponse) Ivy.response();
		httpResponse.sendRedirect(uri);
	}

}
