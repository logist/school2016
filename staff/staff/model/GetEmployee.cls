/// 
Class staff.model.GetEmployee Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetEmployee";

Parameter XMLSEQUENCE = 1;

Property value As %String(MAXLEN = "", XMLNAME = "value");

}
