<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
		<receiver android:name="${relativePackage}.${className}"
            android:exported="${isExported?string}"
            android:enabled="${isEnabled?string}" 
            android:label="组件名字"
            android:permission="android.permission.BIND_DEVICE_ADMIN" >
            <meta-data
                android:name="android.app.device_admin"
                android:resource="@xml/device_admin_receiver" />

            <intent-filter>
                <action android:name="android.app.action.DEVICE_ADMIN_ENABLED" />
            </intent-filter>
        </receiver>
    </application>

</manifest>