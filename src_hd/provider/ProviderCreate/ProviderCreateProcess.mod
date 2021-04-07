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
Ps0 @PushWFArc f1 '' #zField
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
' #txt
Ps0 f20 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>addAddress</name>
    </language>
</elementInfo>
' #txt
Ps0 f20 192 210 112 44 -33 -8 #rect
Ps0 f20 @|StepIcon #fIcon
Ps0 f19 371 219 26 26 0 12 #rect
Ps0 f19 @|UdProcessEndIcon #fIcon
Ps0 f22 304 232 371 232 #arcP
Ps0 f21 109 232 192 232 #arcP
Ps0 f8 actionTable 'out=in;
' #txt
Ps0 f8 actionCode 'import org.primefaces.context.RequestContext;
import dao.ProviderDao;
ProviderDao providerDao = new dao.ProviderDao();

//providerDao.save(in.provider);
' #txt
Ps0 f8 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>create</name>
    </language>
</elementInfo>
' #txt
Ps0 f8 192 298 112 44 -17 -8 #rect
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
Ps0 f11 method start(model.Provider) #txt
Ps0 f11 inParameterDecl '<model.Provider provider> param;' #txt
Ps0 f11 inParameterMapAction 'out.provider=param.provider;
' #txt
Ps0 f11 outParameterDecl '<model.Provider provider> result;' #txt
Ps0 f11 outParameterMapAction 'result.provider=in.provider;
' #txt
Ps0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Provider)</name>
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
Ps0 f0 371 307 26 26 0 12 #rect
Ps0 f0 @|UdExitEndIcon #fIcon
Ps0 f1 304 320 371 320 #arcP
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
Ps0 f8 mainOut f1 tail #connect
Ps0 f1 head f0 mainIn #connect
