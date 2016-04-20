/// 
Class staff.model.GetEmployeesZippedResponse Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetEmployeesZippedResponse";

Parameter XMLSEQUENCE = 1;

Property GetEmployeesZippedResult As %String(MAXLEN = "", XMLNAME = "GetEmployeesZippedResult");

}
