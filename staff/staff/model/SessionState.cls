/// Created from: C:\InterSystems\root.xsd
Class staff.model.SessionState Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = staff.ser.guid, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "SessionState";

Parameter XMLSEQUENCE = 1;

Relationship Reports As staff.model.XmlStatus(XMLITEMNAME = "XmlStatus", XMLNAME = "Reports", XMLPROJECTION = "COLLECTION") [ Cardinality = children, Inverse = SessionState ];

Property SessionID As staff.ser.guid(XMLNAME = "SessionID");

}
