[Ivy]
1788CBA2CAB9179B 7.5.0 #module
>Proto >Proto Collection #zClass
Ps0 ProviderManageProcess Big #zClass
Ps0 RD #cInfo
Ps0 #process
Ps0 @TextInP .type .type #zField
Ps0 @TextInP .processKind .processKind #zField
Ps0 @TextInP .xml .xml #zField
Ps0 @TextInP .responsibility .responsibility #zField
Ps0 @UdInit f0 '' #zField
Ps0 @UdProcessEnd f1 '' #zField
Ps0 @UdEvent f3 '' #zField
Ps0 @UdExitEnd f4 '' #zField
Ps0 @PushWFArc f5 '' #zField
Ps0 @UdEvent f6 '' #zField
Ps0 @UdProcessEnd f7 '' #zField
Ps0 @GridStep f8 '' #zField
Ps0 @PushWFArc f9 '' #zField
Ps0 @PushWFArc f10 '' #zField
Ps0 @GridStep f11 '' #zField
Ps0 @PushWFArc f12 '' #zField
Ps0 @PushWFArc f2 '' #zField
Ps0 @UdMethod f13 '' #zField
Ps0 @GridStep f14 '' #zField
Ps0 @UdProcessEnd f15 '' #zField
Ps0 @PushWFArc f16 '' #zField
Ps0 @PushWFArc f17 '' #zField
Ps0 @UdEvent f18 '' #zField
Ps0 @UdProcessEnd f19 '' #zField
Ps0 @GridStep f20 '' #zField
Ps0 @PushWFArc f21 '' #zField
Ps0 @PushWFArc f22 '' #zField
Ps0 @UdMethod f23 '' #zField
Ps0 @GridStep f24 '' #zField
Ps0 @UdProcessEnd f25 '' #zField
Ps0 @PushWFArc f26 '' #zField
Ps0 @PushWFArc f27 '' #zField
>Proto Ps0 Ps0 ProviderManageProcess #zField
Ps0 f0 guid 1788CBA2CB1F5B44 #txt
Ps0 f0 method start() #txt
Ps0 f0 inParameterDecl '<> param;' #txt
Ps0 f0 outParameterDecl '<model.Provider provider> result;' #txt
Ps0 f0 outParameterMapAction 'result.provider=in.provider;
' #txt
Ps0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ps0 f0 83 59 26 26 -16 15 #rect
Ps0 f0 @|UdInitIcon #fIcon
Ps0 f1 371 59 26 26 0 12 #rect
Ps0 f1 @|UdProcessEndIcon #fIcon
Ps0 f3 guid 1788CBA2CBB799D2 #txt
Ps0 f3 actionTable 'out=in;
' #txt
Ps0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ps0 f3 83 635 26 26 -15 15 #rect
Ps0 f3 @|UdEventIcon #fIcon
Ps0 f4 235 635 26 26 0 12 #rect
Ps0 f4 @|UdExitEndIcon #fIcon
Ps0 f5 109 648 235 648 #arcP
Ps0 f6 guid 1788CBFA221F15DA #txt
Ps0 f6 actionTable 'out=in;
' #txt
Ps0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>edit</name>
    </language>
</elementInfo>
' #txt
Ps0 f6 83 179 26 26 -14 15 #rect
Ps0 f6 @|UdEventIcon #fIcon
Ps0 f7 371 179 26 26 0 12 #rect
Ps0 f7 @|UdProcessEndIcon #fIcon
Ps0 f8 actionTable 'out=in;
' #txt
Ps0 f8 actionCode 'import dao.AddressDao;
import org.primefaces.context.RequestContext;
import dao.ProviderDao;

ProviderDao providerDao = new dao.ProviderDao();

providerDao.save(in.provider);

in.listProvider = providerDao.getAll();
RequestContext.getCurrentInstance().execute("PF(''dialog-create'').hide()");
		RequestContext.getCurrentInstance().update("form");
' #txt
Ps0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
    </language>
</elementInfo>
' #txt
Ps0 f8 192 170 112 44 -17 -8 #rect
Ps0 f8 @|StepIcon #fIcon
Ps0 f9 109 192 192 192 #arcP
Ps0 f10 304 192 371 192 #arcP
Ps0 f11 actionTable 'out=in;
' #txt
Ps0 f11 actionCode 'import model.Address;
import dao.ProviderDao;
import model.Provider;

ProviderDao providerDao = new ProviderDao();
in.listProvider = providerDao.getAll();

in.provider = new Provider();
Address newAddress = new Address();
newAddress.provider = in.provider;
in.provider.addresses.add(newAddress);' #txt
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup</name>
    </language>
</elementInfo>
' #txt
Ps0 f11 192 50 112 44 -15 -8 #rect
Ps0 f11 @|StepIcon #fIcon
Ps0 f12 109 72 192 72 #arcP
Ps0 f2 304 72 371 72 #arcP
Ps0 f13 guid 17890BD8A55626B4 #txt
Ps0 f13 method delete(Long) #txt
Ps0 f13 inParameterDecl '<Long id> param;' #txt
Ps0 f13 inParameterMapAction 'out.provider.id=param.id;
' #txt
Ps0 f13 outParameterDecl '<> result;' #txt
Ps0 f13 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteProvider&#13;
</name>
    </language>
</elementInfo>
' #txt
Ps0 f13 83 531 26 26 -25 15 #rect
Ps0 f13 @|UdMethodIcon #fIcon
Ps0 f14 actionTable 'out=in;
' #txt
Ps0 f14 actionCode 'import dao.ProviderDao;
ProviderDao providerDao = new dao.ProviderDao();
providerDao.delete(in.provider.id);
in.listProvider = providerDao.getAll();' #txt
Ps0 f14 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete</name>
    </language>
</elementInfo>
' #txt
Ps0 f14 192 522 112 44 -17 -8 #rect
Ps0 f14 @|StepIcon #fIcon
Ps0 f15 371 531 26 26 0 12 #rect
Ps0 f15 @|UdProcessEndIcon #fIcon
Ps0 f16 109 544 192 544 #arcP
Ps0 f17 304 544 371 544 #arcP
Ps0 f18 guid 17891F60C8D5BB07 #txt
Ps0 f18 actionTable 'out=in;
' #txt
Ps0 f18 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addAddress</name>
    </language>
</elementInfo>
' #txt
Ps0 f18 83 731 26 26 -14 15 #rect
Ps0 f18 @|UdEventIcon #fIcon
Ps0 f19 371 731 26 26 0 12 #rect
Ps0 f19 @|UdProcessEndIcon #fIcon
Ps0 f20 actionTable 'out=in;
' #txt
Ps0 f20 actionCode 'import model.Address;

Address test = new Address();
test.provider = in.provider;

in.provider.addresses.add(test);
' #txt
Ps0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addAddress</name>
    </language>
</elementInfo>
' #txt
Ps0 f20 192 722 112 44 -33 -8 #rect
Ps0 f20 @|StepIcon #fIcon
Ps0 f21 109 744 192 744 #arcP
Ps0 f22 304 744 371 744 #arcP
Ps0 f23 guid 178A16963426D61D #txt
Ps0 f23 method deleteAddress(model.Address) #txt
Ps0 f23 inParameterDecl '<model.Address address> param;' #txt
Ps0 f23 inParameterMapAction 'out.address=param.address;
' #txt
Ps0 f23 outParameterDecl '<> result;' #txt
Ps0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>deleteAddress&#13;
</name>
    </language>
</elementInfo>
' #txt
Ps0 f23 83 427 26 26 -25 15 #rect
Ps0 f23 @|UdMethodIcon #fIcon
Ps0 f24 actionTable 'out=in;
' #txt
Ps0 f24 actionCode 'import javax.faces.context.FacesContext;
import dao.ProviderDao;
import dao.AddressDao;
import javax.faces.application.FacesMessage;


if(in.address.provider.addresses.size() == 1){
    FacesContext.getCurrentInstance().addMessage(null,
			new FacesMessage(FacesMessage.SEVERITY_ERROR,"Address Alway Exists",
			"Address Alway Exists"));
}else{

	ProviderDao providerDao = new dao.ProviderDao();
	AddressDao addressDao = new AddressDao();
	
	addressDao.delete(in.address.id);
	in.listProvider = providerDao.getAll();

}





' #txt
Ps0 f24 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>delete</name>
    </language>
</elementInfo>
' #txt
Ps0 f24 192 418 112 44 -17 -8 #rect
Ps0 f24 @|StepIcon #fIcon
Ps0 f25 371 427 26 26 0 12 #rect
Ps0 f25 @|UdProcessEndIcon #fIcon
Ps0 f26 109 440 192 440 #arcP
Ps0 f27 304 440 371 440 #arcP
>Proto Ps0 .type provider.ProviderManage.ProviderManageData #txt
>Proto Ps0 .processKind HTML_DIALOG #txt
>Proto Ps0 -8 -8 16 16 16 26 #rect
>Proto Ps0 '' #fIcon
Ps0 f3 mainOut f5 tail #connect
Ps0 f5 head f4 mainIn #connect
Ps0 f6 mainOut f9 tail #connect
Ps0 f9 head f8 mainIn #connect
Ps0 f8 mainOut f10 tail #connect
Ps0 f10 head f7 mainIn #connect
Ps0 f0 mainOut f12 tail #connect
Ps0 f12 head f11 mainIn #connect
Ps0 f11 mainOut f2 tail #connect
Ps0 f2 head f1 mainIn #connect
Ps0 f13 mainOut f16 tail #connect
Ps0 f16 head f14 mainIn #connect
Ps0 f14 mainOut f17 tail #connect
Ps0 f17 head f15 mainIn #connect
Ps0 f18 mainOut f21 tail #connect
Ps0 f21 head f20 mainIn #connect
Ps0 f20 mainOut f22 tail #connect
Ps0 f22 head f19 mainIn #connect
Ps0 f23 mainOut f26 tail #connect
Ps0 f26 head f24 mainIn #connect
Ps0 f24 mainOut f27 tail #connect
Ps0 f27 head f25 mainIn #connect
