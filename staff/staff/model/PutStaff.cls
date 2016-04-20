/// 
Class staff.model.PutStaff Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "PutStaff";

Parameter XMLSEQUENCE = 1;

Property staff As list Of staff.model.StaffEntry(XMLITEMNAME = "StaffEntry", XMLNAME = "staff", XMLPROJECTION = "COLLECTION");

Property xmlInfo As staff.model.XmlRequest(XMLNAME = "xmlInfo");

}
