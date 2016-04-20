/// Created from: C:\InterSystems\root.xsd
Class staff.model.RecordTypeMoveInOrg Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "RecordTypeMoveInOrg";

Parameter XMLSEQUENCE = 1;

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="RecordTypeMoveInOrgDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ID</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.RecordTypeMBE0AD</DataLocation>
<DefaultData>RecordTypeMoveInOrgDefaultData</DefaultData>
<IdLocation>^staff.model.RecordTypeMBE0AD</IdLocation>
<IndexLocation>^staff.model.RecordTypeMBE0AI</IndexLocation>
<StreamLocation>^staff.model.RecordTypeMBE0AS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
