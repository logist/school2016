/// Created from: C:\InterSystems\root.xsd
Class staff.model.XmlResponse Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = (staff.q6.XmlStatusState, staff.ser.guid), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "XmlResponse";

Parameter XMLSEQUENCE = 1;

Property Errors As list Of staff.model.XmlError(XMLITEMNAME = "XmlError", XMLNAME = "Errors", XMLPROJECTION = "COLLECTION");

Property Messages As list Of staff.model.XmlMessage(XMLITEMNAME = "XmlMessage", XMLNAME = "Messages", XMLPROJECTION = "COLLECTION");

Property RirXmlID As staff.ser.guid(XMLNAME = "RirXmlID");

Property XmlState As staff.q6.XmlStatusState(XMLNAME = "XmlState");

}
