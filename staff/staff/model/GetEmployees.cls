/// 
Class staff.model.GetEmployees Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetEmployees";

Parameter XMLSEQUENCE = 1;

Property oid As %String(MAXLEN = "", XMLNAME = "oid");

}