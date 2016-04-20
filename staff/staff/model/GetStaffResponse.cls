/// 
Class staff.model.GetStaffResponse Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "GetStaffResponse";

Parameter XMLSEQUENCE = 1;

Property GetStaffResult As list Of staff.model.StaffEntry(XMLITEMNAME = "StaffEntry", XMLNAME = "GetStaffResult", XMLPROJECTION = "COLLECTION");

}
