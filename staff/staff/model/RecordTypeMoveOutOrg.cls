/// Created from: C:\InterSystems\root.xsd
Class staff.model.RecordTypeMoveOutOrg Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "RecordTypeMoveOutOrg";

Parameter XMLSEQUENCE = 1;

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="RecordTypeMoveOutOrgDefaultData">
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
<DataLocation>^staff.model.RecordTypeMF189D</DataLocation>
<DefaultData>RecordTypeMoveOutOrgDefaultData</DefaultData>
<IdLocation>^staff.model.RecordTypeMF189D</IdLocation>
<IndexLocation>^staff.model.RecordTypeMF189I</IndexLocation>
<StreamLocation>^staff.model.RecordTypeMF189S</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
