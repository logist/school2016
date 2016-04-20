/// 
Class staff.model.GetSessionStateResponse Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetSessionStateResponse";

Parameter XMLSEQUENCE = 1;

Property GetSessionStateResult As staff.model.SessionState(XMLNAME = "GetSessionStateResult");

}
