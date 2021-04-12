[Ivy]
178A4B28122F3760 7.5.0 #module
>Proto >Proto Collection #zClass
Ps0 ProviderCreateProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @UdEvent f3 '' #zField
Ps0 @UdExitEnd f4 '' #zField
Ps0 @PushWFArc f5 '' #zField
Ps0 @UdEvent f18 '' #zField
Ps0 @GridStep f20 '' #zField
Ps0 @UdProcessEnd f19 '' #zField
Ps0 @PushWFArc f22 '' #zField
Ps0 @PushWFArc f21 '' #zField
Ps0 @GridStep f8 '' #zField
Ps0 @UdEvent f6 '' #zField
Ps0 @PushWFArc f9 '' #zField
Ps0 @UdInit f11 '' #zField
Ps0 @UdProcessEnd f12 '' #zField
Ps0 @GridStep f13 '' #zField
Ps0 @PushWFArc f14 '' #zField
Ps0 @PushWFArc f15 '' #zField
Ps0 @UdExitEnd f0 '' #zField
Ps0 @Alternative f2 '' #zField
Ps0 @PushWFArc f7 '' #zField
Ps0 @PushWFArc f1 '' #zField
Ps0 @UdProcessEnd f10 '' #zField
Ps0 @PushWFArc f16 '' #zField
>Proto Ps0 Ps0 ProviderCreateProcess #zField
Ps0 f3 guid 178A4B28135119F8 #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 83 147 26 26 -15 15 #rect
Ps0 f3 @|UdEventIcon #fIcon
Ps0 f4 371 147 26 26 0 12 #rect
Ps0 f4 @|UdExitEndIcon #fIcon
Ps0 f5 109 160 371 160 #arcP
Ps0 f18 guid 178A4B430D7A277E #txt
Ps0 f18 actionTable 'out=in;
' #txt
Ps0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addAddress</name>
    </language>
</elementInfo>
' #txt
Ps0 f18 83 219 26 26 -14 15 #rect
Ps0 f18 @|UdEventIcon #fIcon
Ps0 f20 actionTable 'out=in;
' #txt
Ps0 f20 actionCode 'import model.Address;

Address test = new Address();
test.provider = in.provider;

in.provider.addresses.add(test);


import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.security.IRole;
import java.util.Locale;

ivy.wf.getSecurityContext().getTopLevelRole().createChildRole("MyRole", "USER_TEST", "Description of MyRole", true);

IUser user = ivy.request.getApplication().getSecurityContext().findUser("abc");
IRole role = ivy.request.getApplication().getSecurityContext().findRole("Admin");

//user.addRole(role);

ivy.log.error("User have infor: "+ user.getEMailAddress() + " Have Name: "+ user.getRoles().get(1).getName());' #txt
Ps0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addAddress</name>
    </language>
</elementInfo>
' #txt
Ps0 f20 184 210 112 44 -33 -8 #rect
Ps0 f20 @|StepIcon #fIcon
Ps0 f19 371 219 26 26 0 12 #rect
Ps0 f19 @|UdProcessEndIcon #fIcon
Ps0 f22 296 232 371 232 #arcP
Ps0 f21 109 232 184 232 #arcP
Ps0 f8 actionTable 'out=in;
' #txt
Ps0 f8 actionCode 'import javax.faces.context.FacesContext;
import List;
import model.Address;
import dao.AddressDao;
import org.primefaces.context.RequestContext;
import dao.ProviderDao;
import javax.faces.application.FacesMessage;
in.checking = true;

ProviderDao providerDao = new dao.ProviderDao();
List<Address> listAddress = in.provider.addresses;
for(Address address: listAddress){
	if(address.name.isEmpty()){
			in.checking = false;
			break;
	}
}
if(in.provider.name.isEmpty()){
		in.checking = false;
}
if(in.checking == false){
 FacesContext.getCurrentInstance().addMessage(null,
				new FacesMessage(FacesMessage.SEVERITY_ERROR, "ADDRESS OR NAME IS NOT NUT", "ADDRESS OR NAMES NOT NUT"));
}' #txt
Ps0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Check Data</name>
    </language>
</elementInfo>
' #txt
Ps0 f8 192 298 112 44 -32 -8 #rect
Ps0 f8 @|StepIcon #fIcon
Ps0 f6 guid 178A4B470A693B92 #txt
Ps0 f6 actionTable 'out=in;
' #txt
Ps0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
    </language>
</elementInfo>
' #txt
Ps0 f6 83 307 26 26 -14 15 #rect
Ps0 f6 @|UdEventIcon #fIcon
Ps0 f9 109 320 192 320 #arcP
Ps0 f11 guid 178A4B4A60A43934 #txt
Ps0 f11 method start(model.Provider,model.GdprRequest) #txt
Ps0 f11 inParameterDecl '<model.Provider provider,model.GdprRequest gdprRequest> param;' #txt
Ps0 f11 inParameterMapAction 'out.gdprRequest=param.gdprRequest;
out.provider=param.provider;
' #txt
Ps0 f11 outParameterDecl '<model.Provider provider> result;' #txt
Ps0 f11 outParameterMapAction 'result.provider=in.provider;
' #txt
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Provider,GdprRequest)</name>
    </language>
</elementInfo>
' #txt
Ps0 f11 83 59 26 26 -16 15 #rect
Ps0 f11 @|UdInitIcon #fIcon
Ps0 f12 371 59 26 26 0 12 #rect
Ps0 f12 @|UdProcessEndIcon #fIcon
Ps0 f13 actionTable 'out=in;
' #txt
Ps0 f13 actionCode 'import model.Address;
import dao.ProviderDao;
import model.Provider;

ProviderDao providerDao = new ProviderDao();
if(in.provider.name.isEmpty()){
	in.provider = new Provider();
	Address newAddress = new Address();
	newAddress.provider = in.provider;
	in.provider.addresses.add(newAddress);
	in.checking = true;
}' #txt
Ps0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup</name>
    </language>
</elementInfo>
' #txt
Ps0 f13 192 50 112 44 -15 -8 #rect
Ps0 f13 @|StepIcon #fIcon
Ps0 f14 109 72 192 72 #arcP
Ps0 f15 304 72 371 72 #arcP
Ps0 f0 499 307 26 26 0 12 #rect
Ps0 f0 @|UdExitEndIcon #fIcon
Ps0 f2 368 304 32 32 0 16 #rect
Ps0 f2 @|AlternativeIcon #fIcon
Ps0 f7 304 320 368 320 #arcP
Ps0 f1 expr in #txt
Ps0 f1 outCond 'in.checking == true' #txt
Ps0 f1 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate TRUE</name>
    </language>
</elementInfo>
' #txt
Ps0 f1 400 320 499 320 #arcP
Ps0 f1 0 0.5151515151515151 0 -19 #arcLabel
Ps0 f10 371 403 26 26 0 12 #rect
Ps0 f10 @|UdProcessEndIcon #fIcon
Ps0 f16 expr in #txt
Ps0 f16 outCond 'in.checking == false' #txt
Ps0 f16 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>validate FALSE</name>
    </language>
</elementInfo>
' #txt
Ps0 f16 384 336 384 403 #arcP
Ps0 f16 0 0.44776119402985076 -53 0 #arcLabel
>Proto Ps0 .type provider.ProviderCreate.ProviderCreateData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f3 mainOut f5 tail #connect
Ps0 f5 head f4 mainIn #connect
Ps0 f18 mainOut f21 tail #connect
Ps0 f21 head f20 mainIn #connect
Ps0 f20 mainOut f22 tail #connect
Ps0 f22 head f19 mainIn #connect
Ps0 f6 mainOut f9 tail #connect
Ps0 f9 head f8 mainIn #connect
Ps0 f11 mainOut f14 tail #connect
Ps0 f14 head f13 mainIn #connect
Ps0 f13 mainOut f15 tail #connect
Ps0 f15 head f12 mainIn #connect
Ps0 f8 mainOut f7 tail #connect
Ps0 f7 head f2 in #connect
Ps0 f2 out f1 tail #connect
Ps0 f1 head f0 mainIn #connect
Ps0 f2 out f16 tail #connect
Ps0 f16 head f10 mainIn #connect
