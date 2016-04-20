/// Created from: C:\InterSystems\root.xsd
Class staff.model.XmlError Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "XmlError";

Parameter XMLSEQUENCE = 1;

Property EmployeeBirthDate As %TimeStamp(XMLNAME = "EmployeeBirthDate");

Property EmployeeDocumentNumber As %String(MAXLEN = "", XMLNAME = "EmployeeDocumentNumber");

Property EmployeeDocumentSeria As %String(MAXLEN = "", XMLNAME = "EmployeeDocumentSeria");

Property EmployeeSnils As %String(MAXLEN = "", XMLNAME = "EmployeeSnils");

Property Message As %String(MAXLEN = "", XMLNAME = "Message");

Property MzXmlID As %xsd.int(XMLNAME = "MzXmlID");

}
