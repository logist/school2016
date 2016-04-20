/// 
Class staff.model.GetStaffZippedResponse Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetStaffZippedResponse";

Parameter XMLSEQUENCE = 1;

Property GetStaffZippedResult As %String(MAXLEN = "", XMLNAME = "GetStaffZippedResult");

}
