/// Created from: C:\InterSystems\root.xsd
Class staff.model.Award Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "Award";

Parameter XMLSEQUENCE = 1;

Property AwardNomination As staff.model.Nomination(XMLNAME = "AwardNomination");

Property Issued As %TimeStamp(XMLNAME = "Issued");

Property Name As %String(MAXLEN = "", XMLNAME = "Name");

Property Number As %String(MAXLEN = "", XMLNAME = "Number");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = AwardList ];

Storage Default
{
<Data name="AwardDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>AwardNomination</Value>
</Value>
<Value name="3">
<Value>Issued</Value>
</Value>
<Value name="4">
<Value>Name</Value>
</Value>
<Value name="5">
<Value>Number</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("AwardList")</DataLocation>
<DefaultData>AwardDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("AwardList")</IdLocation>
<IndexLocation>^staff.model.AwardI</IndexLocation>
<StreamLocation>^staff.model.AwardS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
