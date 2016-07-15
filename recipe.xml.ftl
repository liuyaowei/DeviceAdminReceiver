<?xml version="1.0"?>
<recipe>
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
	<instantiate from="root/res/xml/device_admin_receiver.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/xml/device_admin_receiver.xml" />
	<open file="${escapeXmlAttribute(resOut)}/xml/$device_admin_receiver.xml" />		 
    <instantiate from="root/src/app_package/DeviceAdminReceiver.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/${className}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />
</recipe>
