/// Created from: C:\InterSystems\root.xsd
Class staff.model.SessionResponse Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = staff.ser.guid, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "SessionResponse";

Parameter XMLSEQUENCE = 1;

Property Errors As list Of staff.model.XmlError(XMLITEMNAME = "XmlError", XMLNAME = "Errors", XMLPROJECTION = "COLLECTION");

Property Messages As list Of staff.model.XmlMessage(XMLITEMNAME = "XmlMessage", XMLNAME = "Messages", XMLPROJECTION = "COLLECTION");

Property SessionID As staff.ser.guid(XMLNAME = "SessionID");

}
