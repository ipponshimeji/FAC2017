       @OPTIONS NOALPHAL
       IDENTIFICATION DIVISION.
       CLASS-ID. CLASS-THIS AS "AsyncSample.COBOL.Form1"
           INHERITS CLASS-FORM.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       REPOSITORY.
           CLASS CLASS-DOWNLOADER AS "AsyncSample.Lib.Downloader"
           DELEGATE GDEL-ACTION AS "System.Action<>"
           CLASS CLASS-BOOLEAN AS "System.Boolean"
           CLASS CLASS-CONTAINER AS "System.ComponentModel.Container"
           INTERFACE INTERFACE-ICONTAINER AS "System.ComponentModel.IContainer"
           CLASS CLASS-DATETIME AS "System.DateTime"
           ENUM ENUM-CONTENTALIGNMENT AS "System.Drawing.ContentAlignment"
           CLASS CLASS-POINT AS "System.Drawing.Point"
           CLASS CLASS-SIZE AS "System.Drawing.Size"
           CLASS CLASS-SIZEF AS "System.Drawing.SizeF"
           CLASS CLASS-EVENTARGS AS "System.EventArgs"
           DELEGATE DELEGATE-EVENTHANDLER AS "System.EventHandler"
           CLASS CLASS-EXCEPTION AS "System.Exception"
           CLASS CLASS-OBJECT AS "System.Object"
           CLASS CLASS-STRING AS "System.String"
           CLASS CLASS-TASK AS "System.Threading.Tasks.Task"
           CLASS GCLASS-TASK AS "System.Threading.Tasks.Task<>"
           ENUM ENUM-AUTOSCALEMODE AS "System.Windows.Forms.AutoScaleMode"
           CLASS CLASS-BUTTON AS "System.Windows.Forms.Button"
           CLASS CLASS-CONTROLCOLLECTION AS "System.Windows.Forms.Control+ControlCollection"
           CLASS CLASS-FORM AS "System.Windows.Forms.Form"
           CLASS CLASS-LABEL AS "System.Windows.Forms.Label"
           DELEGATE DEL-ACTION-TASK EXPANDS GDEL-ACTION USING CLASS-TASK
           CLASS CLASS-TASK-STRING EXPANDS GCLASS-TASK USING CLASS-STRING
           PROPERTY PROP-AUTOSCALEDIMENSIONS AS "AutoScaleDimensions"
           PROPERTY PROP-AUTOSCALEMODE AS "AutoScaleMode"
           PROPERTY PROP-BUTTON AS "button"
           PROPERTY PROP-CLIENTSIZE AS "ClientSize"
           PROPERTY PROP-CONTROLS AS "Controls"
           PROPERTY PROP-ENABLED AS "Enabled"
           PROPERTY PROP-EXCEPTION AS "Exception"
           PROPERTY PROP-FONT AS "Font"
           PROPERTY PROP-IMAGEALIGN AS "ImageAlign"
           PROPERTY PROP-LABEL1 AS "label1"
           PROPERTY PROP-LOCATION AS "Location"
           PROPERTY PROP-MESSAGE AS "Message"
           PROPERTY PROP-MIDDLELEFT AS "MiddleLeft"
           PROPERTY PROP-NAME AS "Name"
           PROPERTY PROP-NOW AS "Now"
           PROPERTY PROP-RESULT AS "Result"
           PROPERTY PROP-SIZE AS "Size"
           PROPERTY PROP-TABINDEX AS "TabIndex"
           PROPERTY PROP-TEXT AS "Text"
           PROPERTY PROP-USEVISUALSTYLEBACKCOLOR AS "UseVisualStyleBackColor"
           .
      
       OBJECT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 button OBJECT REFERENCE CLASS-BUTTON PRIVATE.
       01 label1 OBJECT REFERENCE CLASS-LABEL PRIVATE.
       01 components OBJECT REFERENCE INTERFACE-ICONTAINER PRIVATE.
       01 WK-DOWNLOADER OBJECT REFERENCE CLASS-DOWNLOADER PRIVATE.
       PROCEDURE DIVISION.
      
       METHOD-ID. DISPOSE AS "Dispose" OVERRIDE PROTECTED.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 disposing OBJECT REFERENCE CLASS-BOOLEAN.
       PROCEDURE DIVISION USING BY VALUE disposing.
           IF disposing NOT = B"0" AND components NOT = NULL THEN
             INVOKE components "Dispose"
             INVOKE WK-DOWNLOADER "Dispose"
           END-IF.
           INVOKE SUPER "Dispose" USING disposing.
       END METHOD DISPOSE.
      
       METHOD-ID. INITIALIZECOMPONENT AS "InitializeComponent" PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 TEMP1 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP2 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP3 BINARY-LONG.
       01 TEMP4 BINARY-LONG.
       01 TEMP5 OBJECT REFERENCE CLASS-POINT.
       01 TEMP6 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP7 OBJECT REFERENCE CLASS-STRING.
       01 TEMP8 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP9 BINARY-LONG.
       01 TEMP10 BINARY-LONG.
       01 TEMP11 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP12 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP13 BINARY-LONG.
       01 TEMP14 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP15 OBJECT REFERENCE CLASS-STRING.
       01 TEMP16 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP17 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP18 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP19 OBJECT REFERENCE DELEGATE-EVENTHANDLER.
       01 TEMP20 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP21 BINARY-LONG.
       01 TEMP22 BINARY-LONG.
       01 TEMP23 OBJECT REFERENCE CLASS-POINT.
       01 TEMP24 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP25 OBJECT REFERENCE CLASS-STRING.
       01 TEMP26 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP27 BINARY-LONG.
       01 TEMP28 BINARY-LONG.
       01 TEMP29 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP30 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP31 BINARY-LONG.
       01 TEMP32 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP33 COMP-1.
       01 TEMP34 COMP-1.
       01 TEMP35 OBJECT REFERENCE CLASS-SIZEF.
       01 TEMP36 BINARY-LONG.
       01 TEMP37 BINARY-LONG.
       01 TEMP38 OBJECT REFERENCE CLASS-SIZE.
       01 TEMP39 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP40 OBJECT REFERENCE CLASS-LABEL.
       01 TEMP41 OBJECT REFERENCE CLASS-CONTROLCOLLECTION.
       01 TEMP42 OBJECT REFERENCE CLASS-BUTTON.
       01 TEMP43 OBJECT REFERENCE CLASS-STRING.
       01 TEMP44 OBJECT REFERENCE CLASS-STRING.
       PROCEDURE DIVISION.
      *>>IMP BEGIN-EMBEDDED-CODEDOM
      *<embedded-codedom>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Button" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.Label" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="SuspendLayout" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="148" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="131" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="133" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="48" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Download" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="UseVisualStyleBackColor" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<bool value="True" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAttachEventStatement">
      *<prop name="Event">
      *<object type="System.CodeDom.CodeEventReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="EventName">
      *<string value="Click" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Listener">
      *<object type="System.CodeDom.CodeDelegateCreateExpression">
      *<prop name="DelegateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.EventHandler" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="button_Click" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="ImageAlign" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeTypeReferenceExpression">
      *<prop name="Type">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.ContentAlignment" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="MiddleLeft" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Location" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Point" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="23" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="40" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Size" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="410" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="48" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="TabIndex" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="Form1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeCommentStatement">
      *<prop name="Comment">
      *<object type="System.CodeDom.CodeComment">
      *<prop name="Text">
      *<string value="" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="AutoScaleDimensions" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.SizeF" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<float32 value="8" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<float32 value="15" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="AutoScaleMode" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeTypeReferenceExpression">
      *<prop name="Type">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Windows.Forms.AutoScaleMode" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="Font" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="ClientSize" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodeObjectCreateExpression">
      *<prop name="CreateType">
      *<object type="System.CodeDom.CodeTypeReference">
      *<prop name="BaseType">
      *<string value="System.Drawing.Size" />
      *</prop>
      *<prop name="Options">
      *<enum type="System.CodeDom.CodeTypeReferenceOptions" value="0" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="457" />
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<int32 value="217" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Controls" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="Add" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="label1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Controls" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="Add" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodeFieldReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="FieldName">
      *<string value="button" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Name" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Form1" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeAssignStatement">
      *<prop name="Left">
      *<object type="System.CodeDom.CodePropertyReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="PropertyName">
      *<string value="Text" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Right">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<string value="Async Sample (COBOL)" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *<object type="System.CodeDom.CodeExpressionStatement">
      *<prop name="Expression">
      *<object type="System.CodeDom.CodeMethodInvokeExpression">
      *<prop name="Method">
      *<object type="System.CodeDom.CodeMethodReferenceExpression">
      *<prop name="TargetObject">
      *<object type="System.CodeDom.CodeThisReferenceExpression">
      *</object>
      *</prop>
      *<prop name="MethodName">
      *<string value="ResumeLayout" />
      *</prop>
      *</object>
      *</prop>
      *<prop name="Parameters" method="add">
      *<object type="System.CodeDom.CodePrimitiveExpression">
      *<prop name="Value">
      *<bool value="False" />
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</prop>
      *</object>
      *</embedded-codedom>
      *>>IMP END-EMBEDDED-CODEDOM
           INVOKE CLASS-BUTTON "NEW" RETURNING TEMP1
           SET PROP-BUTTON OF SELF TO TEMP1
           INVOKE CLASS-LABEL "NEW" RETURNING TEMP2
           SET PROP-LABEL1 OF SELF TO TEMP2
           INVOKE SELF "SuspendLayout"
      *
      *button
      *
           MOVE 148 TO TEMP3
           MOVE 131 TO TEMP4
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP3 BY VALUE TEMP4 RETURNING TEMP5
           SET TEMP6 TO PROP-BUTTON OF SELF
           SET PROP-LOCATION OF TEMP6 TO TEMP5
           SET TEMP7 TO N"button"
           SET TEMP8 TO PROP-BUTTON OF SELF
           SET PROP-NAME OF TEMP8 TO TEMP7
           MOVE 133 TO TEMP9
           MOVE 48 TO TEMP10
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP9 BY VALUE TEMP10 RETURNING TEMP11
           SET TEMP12 TO PROP-BUTTON OF SELF
           SET PROP-SIZE OF TEMP12 TO TEMP11
           MOVE 0 TO TEMP13
           SET TEMP14 TO PROP-BUTTON OF SELF
           MOVE TEMP13 TO PROP-TABINDEX OF TEMP14
           SET TEMP15 TO N"Download"
           SET TEMP16 TO PROP-BUTTON OF SELF
           SET PROP-TEXT OF TEMP16 TO TEMP15
           SET TEMP17 TO PROP-BUTTON OF SELF
           SET PROP-USEVISUALSTYLEBACKCOLOR OF TEMP17 TO B"1"
           SET TEMP18 TO PROP-BUTTON OF SELF
           INVOKE DELEGATE-EVENTHANDLER "NEW" USING BY VALUE SELF BY VALUE N"button_Click" RETURNING TEMP19
           INVOKE TEMP18 "add_Click" USING BY VALUE TEMP19
      *
      *label1
      *
           SET TEMP20 TO PROP-LABEL1 OF SELF
           SET PROP-IMAGEALIGN OF TEMP20 TO PROP-MIDDLELEFT OF ENUM-CONTENTALIGNMENT
           MOVE 23 TO TEMP21
           MOVE 40 TO TEMP22
           INVOKE CLASS-POINT "NEW" USING BY VALUE TEMP21 BY VALUE TEMP22 RETURNING TEMP23
           SET TEMP24 TO PROP-LABEL1 OF SELF
           SET PROP-LOCATION OF TEMP24 TO TEMP23
           SET TEMP25 TO N"label1"
           SET TEMP26 TO PROP-LABEL1 OF SELF
           SET PROP-NAME OF TEMP26 TO TEMP25
           MOVE 410 TO TEMP27
           MOVE 48 TO TEMP28
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP27 BY VALUE TEMP28 RETURNING TEMP29
           SET TEMP30 TO PROP-LABEL1 OF SELF
           SET PROP-SIZE OF TEMP30 TO TEMP29
           MOVE 1 TO TEMP31
           SET TEMP32 TO PROP-LABEL1 OF SELF
           MOVE TEMP31 TO PROP-TABINDEX OF TEMP32
      *
      *Form1
      *
           MOVE 8.00000000000000E+00 TO TEMP33
           MOVE 1.50000000000000E+01 TO TEMP34
           INVOKE CLASS-SIZEF "NEW" USING BY VALUE TEMP33 BY VALUE TEMP34 RETURNING TEMP35
           SET PROP-AUTOSCALEDIMENSIONS OF SELF TO TEMP35
           SET PROP-AUTOSCALEMODE OF SELF TO PROP-FONT OF ENUM-AUTOSCALEMODE
           MOVE 457 TO TEMP36
           MOVE 217 TO TEMP37
           INVOKE CLASS-SIZE "NEW" USING BY VALUE TEMP36 BY VALUE TEMP37 RETURNING TEMP38
           SET PROP-CLIENTSIZE OF SELF TO TEMP38
           SET TEMP40 TO PROP-LABEL1 OF SELF
           SET TEMP39 TO PROP-CONTROLS OF SELF
           INVOKE TEMP39 "Add" USING BY VALUE TEMP40
           SET TEMP42 TO PROP-BUTTON OF SELF
           SET TEMP41 TO PROP-CONTROLS OF SELF
           INVOKE TEMP41 "Add" USING BY VALUE TEMP42
           SET TEMP43 TO N"Form1"
           SET PROP-NAME OF SELF TO TEMP43
           SET TEMP44 TO N"Async Sample (COBOL)"
           SET PROP-TEXT OF SELF TO TEMP44
           INVOKE SELF "ResumeLayout" USING BY VALUE B"0"
       END METHOD INITIALIZECOMPONENT.
      
       METHOD-ID. NEW.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
           INVOKE CLASS-DOWNLOADER "NEW" RETURNING WK-DOWNLOADER.
           INVOKE SELF "InitializeComponent".
       END METHOD NEW.
       
       METHOD-ID. button_Click PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WK-CONTINUED-PROC OBJECT REFERENCE DEL-ACTION-TASK.
       01 WK-TASK OBJECT REFERENCE CLASS-TASK-STRING.
       LINKAGE SECTION.
       01 sender OBJECT REFERENCE CLASS-OBJECT.
       01 e OBJECT REFERENCE CLASS-EVENTARGS.
       PROCEDURE DIVISION USING BY VALUE sender e.
      *    前準備
      *    複雑な型パラメータをもつ型によるメソッドオーバーロードの解決に問題があるので、
      *    ここではAction<Task<string>>ではなく、Action<Task>引数で
      *    Task.ContinueWith()を呼び出す。
           INVOKE DEL-ACTION-TASK "NEW" USING SELF N"CONTINUED-PROC" RETURNING WK-CONTINUED-PROC.
      
      *    ボタンを無効化する。
           SET PROP-ENABLED OF button TO B"0".
           TRY
               SET WK-TASK TO WK-DOWNLOADER::"DownloadText" (N"http://www.msftncsi.com/ncsi.txt")
               INVOKE WK-TASK "ContinueWith" USING BY VALUE WK-CONTINUED-PROC
           CATCH
               INVOKE SELF "FINALLY-PROC"
               RAISE
           END-TRY.
       END METHOD button_Click.
      
      *button_Clickで必ず行うべき後処理
       METHOD-ID. FINALLY-PROC PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WK-BUTTON OBJECT REFERENCE CLASS-BUTTON. 
       PROCEDURE DIVISION.
      * ボタンを有効化する。
           SET WK-BUTTON TO PROP-BUTTON OF SELF.
           SET PROP-ENABLED OF WK-BUTTON TO B"1".
       END METHOD FINALLY-PROC.
      
      *ダウンロード終了後に行いたい処理の本体
       METHOD-ID. CONTINUED-PROC-BODY PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WK-TASK OBJECT REFERENCE CLASS-TASK-STRING.
       01 WK-EXCEPTION OBJECT REFERENCE CLASS-EXCEPTION.
       01 WK-MESSAGE OBJECT REFERENCE CLASS-STRING.
       01 WK-TEXT OBJECT REFERENCE CLASS-STRING. 
       01 WK-NOW OBJECT REFERENCE CLASS-DATETIME.
       LINKAGE SECTION.
       01 PARAM-TASK OBJECT REFERENCE CLASS-TASK.
       PROCEDURE DIVISION USING BY VALUE PARAM-TASK.
      *    タスクをTask<string>型にキャストする。
      *    実際のタスクの型はTask<string>だが、インターフェイス上はTaskにしている。
      *    button_Clickメソッドの手続き部のコメントを参照。
           SET WK-TASK TO PARAM-TASK AS CLASS-TASK-STRING.
      
           TRY
      *      ラベルのテキストを更新する。
             SET WK-EXCEPTION TO PROP-EXCEPTION OF WK-TASK
             IF WK-EXCEPTION = NULL THEN
               SET WK-TEXT TO PROP-RESULT OF WK-TASK
               SET WK-NOW TO PROP-NOW OF CLASS-DATETIME
               SET WK-MESSAGE TO CLASS-STRING::"Format" ("[{0}] {1}" WK-NOW WK-TEXT)
             ELSE
               SET WK-MESSAGE TO PROP-MESSAGE OF WK-EXCEPTION
             END-IF
             SET PROP-TEXT OF label1 TO WK-MESSAGE
           FINALLY
      *      ボタンを有効化する。
             INVOKE SELF "FINALLY-PROC"
           END-TRY.
       END METHOD CONTINUED-PROC-BODY.
       
      *「ダウンロード終了後に行いたい処理」をGUIスレッド上で実行するメソッド
       METHOD-ID. CONTINUED-PROC PRIVATE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WK-PROC OBJECT REFERENCE DEL-ACTION-TASK.
       LINKAGE SECTION.
       01 PARAM-TASK OBJECT REFERENCE CLASS-TASK.
       PROCEDURE DIVISION USING BY VALUE PARAM-TASK.
      *    GUIスレッド上で処理を行う。
           INVOKE DEL-ACTION-TASK "NEW" USING SELF N"CONTINUED-PROC-BODY" RETURNING WK-PROC.
           INVOKE SELF "Invoke" USING WK-PROC PARAM-TASK.
       END METHOD CONTINUED-PROC.
      
       END OBJECT.
       END CLASS CLASS-THIS.