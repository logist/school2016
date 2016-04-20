/// 
Class staff.model.GetSessionState Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = staff.ser.guid, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetSessionState";

Parameter XMLSEQUENCE = 1;

Property sessionID As staff.ser.guid(XMLNAME = "sessionID");

}
