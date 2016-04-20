/// Created from: C:\InterSystems\root.xsd
Class staff.model.Country Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Country";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Storage Default
{
<Data name="CountryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^staff.model.CountryD</DataLocation>
<DefaultData>CountryDefaultData</DefaultData>
<IdLocation>^staff.model.CountryD</IdLocation>
<IndexLocation>^staff.model.CountryI</IndexLocation>
<StreamLocation>^staff.model.CountryS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
