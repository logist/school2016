/// Created from: C:\InterSystems\root.xsd
Class staff.model.CertificateSpeciality Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "CertificateSpeciality";

Parameter XMLSEQUENCE = 1;

Index idKeyIndex On ID [ IdKey, PrimaryKey, Unique ];

Property ID As %Integer(XMLNAME = "ID");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Property Parent As %Integer(XMLNAME = "Parent");

Storage Default
{
<Data name="CertificateSpecialityDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>Parent</Value>
</Value>
</Data>
<DataLocation>^staff.model.Certificate869FD</DataLocation>
<DefaultData>CertificateSpecialityDefaultData</DefaultData>
<IdLocation>^staff.model.Certificate869FD</IdLocation>
<IndexLocation>^staff.model.Certificate869FI</IndexLocation>
<StreamLocation>^staff.model.Certificate869FS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
