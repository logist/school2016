/// Created from: C:\InterSystems\root.xsd
Class staff.model.XmlMessage Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "XmlMessage";

Parameter XMLSEQUENCE = 1;

Property Message As %String(MAXLEN = "", XMLNAME = "Message");

Property MzXmlID As %xsd.int(XMLNAME = "MzXmlID");

Property XmlResponse As list Of staff.model.XmlResponse(XMLPROJECTION = "NONE");

Property SessionResponse As list Of staff.model.SessionResponse(XMLPROJECTION = "NONE");

}
