/// Created from: C:\InterSystems\root.xsd
Class staff.model.PostGraduateEducation Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "PostGraduateEducation";

Parameter XMLSEQUENCE = 1;

Property Aim As %Boolean(XMLNAME = "Aim");

Property DateBegin As %TimeStamp(XMLNAME = "DateBegin");

Property DateDocum As %TimeStamp(XMLNAME = "DateDocum");

Property DateEnd As %TimeStamp(XMLNAME = "DateEnd");

Property Degree As staff.model.AcademicDegree(XMLNAME = "Degree");

Property DiplomaNumber As %String(MAXLEN = "", XMLNAME = "DiplomaNumber");

Property DiplomaSerie As %String(MAXLEN = "", XMLNAME = "DiplomaSerie");

Property Institution As staff.model.EducationInstitution(XMLNAME = "Institution");

Property Speciality As staff.model.CertificateSpeciality(XMLNAME = "Speciality");

Property TerritoryRf As staff.model.Territory(XMLNAME = "TerritoryRf");

Property Type As staff.model.PostGraduationEducationType(XMLNAME = "Type");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = PostGraduateEducationList ];

Storage Default
{
<Data name="PostGraduateEducationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Aim</Value>
</Value>
<Value name="3">
<Value>DateBegin</Value>
</Value>
<Value name="4">
<Value>DateDocum</Value>
</Value>
<Value name="5">
<Value>DateEnd</Value>
</Value>
<Value name="6">
<Value>Degree</Value>
</Value>
<Value name="7">
<Value>DiplomaNumber</Value>
</Value>
<Value name="8">
<Value>DiplomaSerie</Value>
</Value>
<Value name="9">
<Value>Institution</Value>
</Value>
<Value name="10">
<Value>Speciality</Value>
</Value>
<Value name="11">
<Value>TerritoryRf</Value>
</Value>
<Value name="12">
<Value>Type</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("PostGraduateEducationList")</DataLocation>
<DefaultData>PostGraduateEducationDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("PostGraduateEducationList")</IdLocation>
<IndexLocation>^staff.model.PostGraduat87BBI</IndexLocation>
<StreamLocation>^staff.model.PostGraduat87BBS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
