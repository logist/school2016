/// Created from: C:\InterSystems\root.xsd
Class staff.model.XmlStatus Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = (staff.q6.XmlStatusState, staff.ser.guid), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "XmlStatus";

Parameter XMLSEQUENCE = 1;

Property MzXmlID As %xsd.int(XMLNAME = "MzXmlID");

Property RirXmlID As staff.ser.guid(XMLNAME = "RirXmlID");

Property State As staff.q6.XmlStatusState(XMLNAME = "State");

Relationship SessionState As staff.model.SessionState(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = Reports ];

}
