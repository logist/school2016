/// 
Class staff.model.GetXmlLogResponse Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetXmlLogResponse";

Parameter XMLSEQUENCE = 1;

Property GetXmlLogResult As staff.model.XmlResponse(XMLNAME = "GetXmlLogResult");

}
