/// Created from: C:\InterSystems\root.xsd
Class staff.model.SkillImprovement Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://service.rosminzdrav.ru/MedStaff";

Parameter XMLNAME = "SkillImprovement";

Parameter XMLSEQUENCE = 1;

Property Cycle As %String(MAXLEN = "", XMLNAME = "Cycle");

Property DiplomaNumber As %String(MAXLEN = "", XMLNAME = "DiplomaNumber");

Property DiplomaSerie As %String(MAXLEN = "", XMLNAME = "DiplomaSerie");

Property Hours As %xsd.int(XMLNAME = "Hours");

Property Institution As staff.model.EducationInstitution(XMLNAME = "Institution");

Property IssueDate As %TimeStamp(XMLNAME = "IssueDate");

Property Speciality As staff.model.CertificateSpeciality(XMLNAME = "Speciality");

Property YearPassing As %xsd.int(XMLNAME = "YearPassing");

Relationship Employee As staff.model.Employee(XMLPROJECTION = "NONE") [ Cardinality = parent, Inverse = SkillImprovementList ];

Storage Default
{
<Data name="SkillImprovementDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Cycle</Value>
</Value>
<Value name="3">
<Value>DiplomaNumber</Value>
</Value>
<Value name="4">
<Value>DiplomaSerie</Value>
</Value>
<Value name="5">
<Value>Hours</Value>
</Value>
<Value name="6">
<Value>Institution</Value>
</Value>
<Value name="7">
<Value>IssueDate</Value>
</Value>
<Value name="8">
<Value>Speciality</Value>
</Value>
<Value name="9">
<Value>YearPassing</Value>
</Value>
</Data>
<DataLocation>{%%PARENT}("SkillImprovementList")</DataLocation>
<DefaultData>SkillImprovementDefaultData</DefaultData>
<IdLocation>^staff.model.EmployeeC("SkillImprovementList")</IdLocation>
<IndexLocation>^staff.model.SkillImprovementI</IndexLocation>
<StreamLocation>^staff.model.SkillImprovementS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
