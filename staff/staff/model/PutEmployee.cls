/// 
Class staff.model.PutEmployee Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "PutEmployee";

Parameter XMLSEQUENCE = 1;

Property xmlInfo As staff.model.XmlRequest(XMLNAME = "xmlInfo");

}
