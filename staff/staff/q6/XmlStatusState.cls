/// Created from: c:/intersystems/1.xsd
Class staff.q6.XmlStatusState Extends %String [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter MAXLEN;

Parameter NAMESPACE = "http://schemas.datacontract.org/2004/07/MedStaff.MZ.Domain";

Parameter VALUELIST = ",Sent,Loaded,VerificationError,Verified,NoMessages,HasMessages,LoadError,LoadInProgress,VerificationInProgress";

}
