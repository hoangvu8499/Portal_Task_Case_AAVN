[Ivy]
178A4B1CD433E2B7 7.5.0 #module
>Proto >Proto Collection #zClass
pe0 providerCreate Big #zClass
pe0 B #cInfo
pe0 #process
pe0 @TextInP .type .type #zField
pe0 @TextInP .processKind .processKind #zField
pe0 @TextInP .xml .xml #zField
pe0 @TextInP .responsibility .responsibility #zField
pe0 @StartRequest f0 '' #zField
pe0 @EndTask f1 '' #zField
pe0 @UserDialog f3 '' #zField
pe0 @UserTask f5 '' #zField
pe0 @Alternative f2 '' #zField
pe0 @PushWFArc f7 '' #zField
pe0 @PushWFArc f8 '' #zField
pe0 @PushWFArc f4 '' #zField
pe0 @TkArc f14 '' #zField
pe0 @TaskSwitchSimple f6 '' #zField
pe0 @TkArc f10 '' #zField
pe0 @PushWFArc f12 '' #zField
>Proto pe0 pe0 providerCreate #zField
pe0 f0 outLink createProvider.ivp #txt
pe0 f0 inParamDecl '<> param;' #txt
pe0 f0 requestEnabled true #txt
pe0 f0 triggerEnabled false #txt
pe0 f0 callSignature createProvider() #txt
pe0 f0 caseData businessCase.attach=true #txt
pe0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>createProvider.ivp</name>
    </language>
</elementInfo>
' #txt
pe0 f0 @C|.responsibility Everybody #txt
pe0 f0 41 121 30 30 -37 20 #rect
pe0 f0 @|StartRequestIcon #fIcon
pe0 f1 617 121 30 30 0 15 #rect
pe0 f1 @|EndIcon #fIcon
pe0 f3 dialogId provider.ProviderCreate #txt
pe0 f3 startMethod start(model.Provider) #txt
pe0 f3 requestActionDecl '<model.Provider provider> param;' #txt
pe0 f3 requestMappingAction 'param.provider=in.provider;
' #txt
pe0 f3 responseMappingAction 'out=in;
out.provider=result.provider;
' #txt
pe0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>ProviderCreate</name>
    </language>
</elementInfo>
' #txt
pe0 f3 136 114 112 44 -41 -8 #rect
pe0 f3 @|UserDialogIcon #fIcon
pe0 f5 dialogId provider.confirmCreate #txt
pe0 f5 startMethod start(model.Provider) #txt
pe0 f5 requestActionDecl '<model.Provider provider> param;' #txt
pe0 f5 requestMappingAction 'param.provider=in.provider;
' #txt
pe0 f5 responseMappingAction 'out=in;
out.comment=result.comment;
out.confirm=result.accept;
out.provider=result.provider;
' #txt
pe0 f5 caseData case.name=<%\=in.provider%> #txt
pe0 f5 taskData 'TaskA.DESC=confirm create new provider
TaskA.NAM=confirm
TaskA.ROL=Admin
TaskA.TYPE=0' #txt
pe0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Confirm</name>
    </language>
</elementInfo>
' #txt
pe0 f5 320 114 112 44 -22 -8 #rect
pe0 f5 @|UserTaskIcon #fIcon
pe0 f2 504 120 32 32 0 16 #rect
pe0 f2 @|AlternativeIcon #fIcon
pe0 f7 432 136 504 136 #arcP
pe0 f8 expr in #txt
pe0 f8 outCond 'in.confirm == true' #txt
pe0 f8 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Done</name>
    </language>
</elementInfo>
' #txt
pe0 f8 536 136 617 136 #arcP
pe0 f8 0 0.49382716049382713 0 -11 #arcLabel
pe0 f4 71 136 136 136 #arcP
pe0 f14 var in1 #txt
pe0 f14 248 136 320 136 #arcP
pe0 f6 actionTable 'out=in1;
' #txt
pe0 f6 caseData case.name=<%\=in1.provider%> #txt
pe0 f6 taskData 'TaskA.DESC=Recreate provider after feedback
TaskA.NAM=Recreate provider
TaskA.ROL=Provider
TaskA.TYPE=0' #txt
pe0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Notification</name>
    </language>
</elementInfo>
' #txt
pe0 f6 177 209 30 30 -81 -6 #rect
pe0 f6 @|TaskSwitchSimpleIcon #fIcon
pe0 f10 .xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>None accept&#13;
</name>
    </language>
</elementInfo>
' #txt
pe0 f10 520 152 207 224 #arcP
pe0 f10 1 520 224 #addKink
pe0 f10 1 0.2983606557377049 0 24 #arcLabel
pe0 f12 192 209 192 158 #arcP
>Proto pe0 .type provider.providerCreateData #txt
>Proto pe0 .processKind NORMAL #txt
>Proto pe0 0 0 32 24 18 0 #rect
>Proto pe0 @|BIcon #fIcon
pe0 f5 out f7 tail #connect
pe0 f7 head f2 in #connect
pe0 f2 out f8 tail #connect
pe0 f8 head f1 mainIn #connect
pe0 f0 mainOut f4 tail #connect
pe0 f4 head f3 mainIn #connect
pe0 f3 mainOut f14 tail #connect
pe0 f14 head f5 in #connect
pe0 f2 out f10 tail #connect
pe0 f10 head f6 in #connect
pe0 f6 out f12 tail #connect
pe0 f12 head f3 mainIn #connect
