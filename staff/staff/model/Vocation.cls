/// Created from: C:\InterSystems\root.xsd
Class staff.model.Vocation Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Vocation";

Parameter XMLSEQUENCE = 1;

Property AbsenceReason As staff.model.AbsenceType(XMLNAME = "AbsenceReason");

Property DateBegin As %TimeStamp(XMLNAME = "DateBegin");

Property DateEnd As %TimeStamp(XMLNAME = "DateEnd");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = VocationList ];

Storage Default
{
<Data name="VocationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AbsenceReason</Value>
</Value>
<Value name="3">
<Value>DateBegin</Value>
</Value>
<Value name="4">
<Value>DateEnd</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("VocationList")</DataLocation>
<DefaultData>VocationDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("VocationList")</IdLocation>
<IndexLocation>^staff.model.VocationI</IndexLocation>
<StreamLocation>^staff.model.VocationS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
