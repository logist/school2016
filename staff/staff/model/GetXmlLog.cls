/// 
Class staff.model.GetXmlLog Extends (%RegisteredObject, %XML.Adaptor) [ CompileAfter = staff.ser.guid, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetXmlLog";

Parameter XMLSEQUENCE = 1;

Property rirXmlID As staff.ser.guid(XMLNAME = "rirXmlID");

}
