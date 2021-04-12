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
cs0 @PushWFArc f14 '' #zField
cs0 @Alternative f13 '' #zField
cs0 @PushWFArc f16 '' #zField
cs0 @UdProcessEnd f15 '' #zField
cs0 @GridStep f17 '' #zField
cs0 @PushWFArc f18 '' #zField
cs0 @PushWFArc f2 '' #zField
>Proto cs0 cs0 confirmCreateProcess #zField
cs0 f0 guid 178A4BC5BFAFB52E #txt
cs0 f0 method start(model.Provider,model.GdprRequest) #txt
cs0 f0 inParameterDecl '<model.Provider provider,model.GdprRequest gdprRequest> param;' #txt
cs0 f0 inParameterMapAction 'out.gdprRequest=param.gdprRequest;
out.provider=param.provider;
' #txt
cs0 f0 outParameterDecl '<Boolean accept,String comment,model.Provider provider> result;' #txt
cs0 f0 outParameterMapAction 'result.accept=in.accept;
result.comment=in.comment;
result.provider=in.provider;
' #txt
cs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start(Provider,GdprRequest)</name>
    </language>
</elementInfo>
' #txt
cs0 f0 59 51 26 26 -36 28 #rect
cs0 f0 @|UdInitIcon #fIcon
cs0 f1 443 51 26 26 0 12 #rect
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
cs0 f3 59 163 26 26 -15 15 #rect
cs0 f3 @|UdEventIcon #fIcon
cs0 f4 443 163 26 26 0 12 #rect
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
cs0 f6 59 347 26 26 -14 15 #rect
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
cs0 f7 176 338 112 44 -18 -8 #rect
cs0 f7 @|StepIcon #fIcon
cs0 f8 451 347 26 26 0 12 #rect
cs0 f8 @|UdExitEndIcon #fIcon
cs0 f9 85 360 176 360 #arcP
cs0 f10 288 360 451 360 #arcP
cs0 f11 actionTable 'out=in;
' #txt
cs0 f11 actionCode 'import javax.faces.context.FacesContext;
import List;
import model.Address;
import dao.AddressDao;
import org.primefaces.context.RequestContext;
import dao.ProviderDao;
import javax.faces.application.FacesMessage;
import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;

if(in.comment.isBlank()){
 FacesContext.getCurrentInstance().addMessage(null,
				new FacesMessage(FacesMessage.SEVERITY_ERROR, "COMMENT IS NOT NUT", "COMMENT IS NOT NUT"));
}else{
	in.accept = false;
	ICase currentCase = Ivy.wfCase();
	currentCase.createNote(ivy.session, in.comment);
}
' #txt
cs0 f11 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>None accept</name>
    </language>
</elementInfo>
' #txt
cs0 f11 176 154 112 44 -34 -8 #rect
cs0 f11 @|StepIcon #fIcon
cs0 f12 85 176 176 176 #arcP
cs0 f5 expr in #txt
cs0 f5 outCond !in.comment.isBlank() #txt
cs0 f5 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>have comment</name>
    </language>
</elementInfo>
' #txt
cs0 f5 360 176 443 176 #arcP
cs0 f5 0 0.4782608695652174 0 -16 #arcLabel
cs0 f14 288 176 328 176 #arcP
cs0 f13 328 160 32 32 0 16 #rect
cs0 f13 @|AlternativeIcon #fIcon
cs0 f16 expr in #txt
cs0 f16 outCond in.comment.isBlank() #txt
cs0 f16 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>don''t have comment&#13;
</name>
    </language>
</elementInfo>
' #txt
cs0 f16 344 192 344 251 #arcP
cs0 f16 0 0.5671641791044776 62 0 #arcLabel
cs0 f15 331 251 26 26 0 12 #rect
cs0 f15 @|UdProcessEndIcon #fIcon
cs0 f17 actionTable 'out=in;
' #txt
cs0 f17 actionCode 'import ch.ivyteam.ivy.workflow.INote;
import ch.ivyteam.ivy.security.IUser;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.workflow.ICase;
ICase currentCase = Ivy.wfCase();
if(currentCase.getNotes().size() > 0){
	in.comment =  currentCase.getNotes().get(0).getMessage();
}







in.actualCurrentIndex = 0;

import ch.ivy.addon.portalkit.enums.SessionAttribute;

in.isTaskStartedInDetails = ivy.session.getAttribute(SessionAttribute.IS_TASK_STARTED_IN_DETAILS.toString()) as Boolean;' #txt
cs0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>setup</name>
    </language>
</elementInfo>
' #txt
cs0 f17 176 42 112 44 -15 -8 #rect
cs0 f17 @|StepIcon #fIcon
cs0 f18 85 64 176 64 #arcP
cs0 f2 288 64 443 64 #arcP
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
cs0 f11 mainOut f14 tail #connect
cs0 f14 head f13 in #connect
cs0 f13 out f5 tail #connect
cs0 f5 head f4 mainIn #connect
cs0 f13 out f16 tail #connect
cs0 f16 head f15 mainIn #connect
cs0 f0 mainOut f18 tail #connect
cs0 f18 head f17 mainIn #connect
cs0 f17 mainOut f2 tail #connect
cs0 f2 head f1 mainIn #connect
