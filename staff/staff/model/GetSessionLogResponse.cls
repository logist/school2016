/// 
Class staff.model.GetSessionLogResponse Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetSessionLogResponse";

Parameter XMLSEQUENCE = 1;

Property GetSessionLogResult As staff.model.SessionResponse(XMLNAME = "GetSessionLogResult");

}
