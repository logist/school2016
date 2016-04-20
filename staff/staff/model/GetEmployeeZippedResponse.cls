/// 
Class staff.model.GetEmployeeZippedResponse Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetEmployeeZippedResponse";

Parameter XMLSEQUENCE = 1;

Property GetEmployeeZippedResult As %String(MAXLEN = "", XMLNAME = "GetEmployeeZippedResult");

}
