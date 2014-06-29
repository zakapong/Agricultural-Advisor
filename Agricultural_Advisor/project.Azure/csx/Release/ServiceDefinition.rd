<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="project.Azure" generation="1" functional="0" release="0" Id="f7d78c7a-d079-406f-9d7e-f0ce323b1e0a" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="project.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="project:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/project.Azure/project.AzureGroup/LB:project:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="project:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/project.Azure/project.AzureGroup/Mapproject:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="projectInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/project.Azure/project.AzureGroup/MapprojectInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:project:Endpoint1">
          <toPorts>
            <inPortMoniker name="/project.Azure/project.AzureGroup/project/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="Mapproject:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/project.Azure/project.AzureGroup/project/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapprojectInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/project.Azure/project.AzureGroup/projectInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="project" generation="1" functional="0" release="0" software="C:\Users\Zack\Desktop\final_version_1\project6_zack1\project6_zack1\project\project.Azure\csx\Release\roles\project" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;project&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;project&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/project.Azure/project.AzureGroup/projectInstances" />
            <sCSPolicyUpdateDomainMoniker name="/project.Azure/project.AzureGroup/projectUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/project.Azure/project.AzureGroup/projectFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="projectUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="projectFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="projectInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="01f833e8-cc2b-4114-bbbc-0a0fe8386274" ref="Microsoft.RedDog.Contract\ServiceContract\project.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="5eecbcb5-c015-4dc6-8e3f-e18e0015062f" ref="Microsoft.RedDog.Contract\Interface\project:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/project.Azure/project.AzureGroup/project:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>