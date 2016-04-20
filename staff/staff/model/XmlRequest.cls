/// Created from: C:\InterSystems\root.xsd
Class staff.model.XmlRequest Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = staff.ser.guid, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "XmlRequest";

Parameter XMLSEQUENCE = 1;

Property RirXmlID As staff.ser.guid(XMLNAME = "RirXmlID");

Property SessionID As staff.ser.guid(XMLNAME = "SessionID");

Property XmlName As %String(MAXLEN = "", XMLNAME = "XmlName");

}
