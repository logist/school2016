/// 
Class staff.model.PutEmployeeZipped Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "PutEmployeeZipped";

Parameter XMLSEQUENCE = 1;

Property encodedString As %String(MAXLEN = "", XMLNAME = "encodedString");

Property xmlInfo As staff.model.XmlRequest(XMLNAME = "xmlInfo");

}
