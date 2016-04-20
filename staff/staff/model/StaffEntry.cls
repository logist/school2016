/// Created from: C:\InterSystems\root.xsd
Class staff.model.StaffEntry Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "StaffEntry";

Parameter XMLSEQUENCE = 1;

Property Comment As %String(MAXLEN = "", XMLNAME = "Comment");

Property Organization As staff.model.OrganizationInfo(XMLNAME = "Organization");

Property Post As staff.model.Post(XMLNAME = "Post");

Property SubdivisionName As %String(MAXLEN = "", XMLNAME = "SubdivisionName");

Property SubdivisionType As staff.model.Subdivision(XMLNAME = "SubdivisionType");

Property TotalWage As %xsd.double(XMLNAME = "TotalWage");

Storage Default
{
<Data name="StaffEntryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Comment</Value>
</Value>
<Value name="3">
<Value>Organization</Value>
</Value>
<Value name="4">
<Value>Post</Value>
</Value>
<Value name="5">
<Value>SubdivisionName</Value>
</Value>
<Value name="6">
<Value>SubdivisionType</Value>
</Value>
<Value name="7">
<Value>TotalWage</Value>
</Value>
</Data>
<DataLocation>^staff.model.StaffEntryD</DataLocation>
<DefaultData>StaffEntryDefaultData</DefaultData>
<IdLocation>^staff.model.StaffEntryD</IdLocation>
<IndexLocation>^staff.model.StaffEntryI</IndexLocation>
<StreamLocation>^staff.model.StaffEntryS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
