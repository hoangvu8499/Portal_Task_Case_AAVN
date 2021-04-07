[Ivy]
178A4BC5BF4189C2 7.5.0 #module
>Proto >Proto Collection #zClass
cs0 confirmCreateProcess Big #zClass
cs0 RD #cInfo
cs0 #process
cs0 @TextInP .type .type #zField
cs0 @TextInP .processKind .processKind #zField
cs0 @TextInP .xml .xml #zField
cs0 @TextInP .responsibility .responsibility #zField
cs0 @UdInit f0 '' #zField
cs0 @UdProcessEnd f1 '' #zField
cs0 @UdEvent f3 '' #zField
cs0 @UdExitEnd f4 '' #zField
cs0 @UdEvent f6 '' #zField
cs0 @GridStep f7 '' #zField
cs0 @UdExitEnd f8 '' #zField
cs0 @PushWFArc f9 '' #zField
cs0 @PushWFArc f10 '' #zField
cs0 @GridStep f11 '' #zField
cs0 @PushWFArc f12 '' #zField
cs0 @PushWFArc f5 '' #zField
cs0 @PushWFArc f2 '' #zField
>Proto cs0 cs0 confirmCreateProcess #zField
cs0 f0 guid 178A4BC5BFAFB52E #txt
cs0 f0 method start(model.Provider) #txt
cs0 f0 inParameterDecl '<model.Provider provider> param;' #txt
cs0 f0 inParameterMapAction 'out.provider=param.provider;
' #txt
cs0 f0 outParameterDecl '<Boolean accept,String comment,model.Provider provider> result;' #txt
cs0 f0 outParameterMapAction 'result.accept=in.accept;
result.comment=in.comment;
result.provider=in.provider;
' #txt
cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Provider)</name>
    </language>
</elementInfo>
' #txt
cs0 f0 83 51 26 26 -16 15 #rect
cs0 f0 @|UdInitIcon #fIcon
cs0 f1 339 51 26 26 0 12 #rect
cs0 f1 @|UdProcessEndIcon #fIcon
cs0 f3 guid 178A4BC5C00548FE #txt
cs0 f3 actionTable 'out=in;
' #txt
cs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
cs0 f3 83 147 26 26 -15 15 #rect
cs0 f3 @|UdEventIcon #fIcon
cs0 f4 467 147 26 26 0 12 #rect
cs0 f4 @|UdExitEndIcon #fIcon
cs0 f6 guid 178A4DED907CB122 #txt
cs0 f6 actionTable 'out=in;
' #txt
cs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>confirm</name>
    </language>
</elementInfo>
' #txt
cs0 f6 83 243 26 26 -14 15 #rect
cs0 f6 @|UdEventIcon #fIcon
cs0 f7 actionTable 'out=in;
' #txt
cs0 f7 actionCode 'import org.primefaces.context.RequestContext;
import dao.ProviderDao;
ProviderDao providerDao = new dao.ProviderDao();

providerDao.save(in.provider);
in.accept = true;
' #txt
cs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>accept</name>
    </language>
</elementInfo>
' #txt
cs0 f7 232 234 112 44 -18 -8 #rect
cs0 f7 @|StepIcon #fIcon
cs0 f8 467 243 26 26 0 12 #rect
cs0 f8 @|UdExitEndIcon #fIcon
cs0 f9 109 256 232 256 #arcP
cs0 f10 344 256 467 256 #arcP
cs0 f11 actionTable 'out=in;
' #txt
cs0 f11 actionCode 'in.accept = false;' #txt
cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>None accept</name>
    </language>
</elementInfo>
' #txt
cs0 f11 232 138 112 44 -34 -8 #rect
cs0 f11 @|StepIcon #fIcon
cs0 f12 109 160 232 160 #arcP
cs0 f5 344 160 467 160 #arcP
cs0 f2 109 64 339 64 #arcP
>Proto cs0 .type provider.confirmCreate.confirmCreateData #txt
>Proto cs0 .processKind HTML_DIALOG #txt
>Proto cs0 -8 -8 16 16 16 26 #rect
>Proto cs0 '' #fIcon
cs0 f6 mainOut f9 tail #connect
cs0 f9 head f7 mainIn #connect
cs0 f7 mainOut f10 tail #connect
cs0 f10 head f8 mainIn #connect
cs0 f3 mainOut f12 tail #connect
cs0 f12 head f11 mainIn #connect
cs0 f11 mainOut f5 tail #connect
cs0 f5 head f4 mainIn #connect
cs0 f0 mainOut f2 tail #connect
cs0 f2 head f1 mainIn #connect
