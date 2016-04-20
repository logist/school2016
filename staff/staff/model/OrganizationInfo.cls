/// Created from: C:\InterSystems\root.xsd
Class staff.model.OrganizationInfo Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "OrganizationInfo";

Parameter XMLSEQUENCE = 1;

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Property OID As %String(MAXLEN = "", XMLNAME = "OID");

Storage Default
{
<Data name="OrganizationInfoDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>OID</Value>
</Value>
</Data>
<DataLocation>^staff.model.OrganizationInfoD</DataLocation>
<DefaultData>OrganizationInfoDefaultData</DefaultData>
<IdLocation>^staff.model.OrganizationInfoD</IdLocation>
<IndexLocation>^staff.model.OrganizationInfoI</IndexLocation>
<StreamLocation>^staff.model.OrganizationInfoS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
