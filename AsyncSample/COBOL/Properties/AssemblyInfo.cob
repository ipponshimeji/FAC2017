       @OPTIONS RCS(SJIS-UCS2),SRF(VAR),ALPHAL(WORD)
       @OPTIONS BINARY(WORD),PGMNAME(ALL),NOFLAGSW,SQLDCL
       IDENTIFICATION DIVISION.
       CLASS-ID. ASSEMBLY-INFO AS ".ASSEMBLY" CUSTOM-ATTRIBUTE IS 
           CA-ASSEMBLYTITLE CA-ASSEMBLYDESCRIPTION CA-ASSEMBLYCONFIGURATION
           CA-ASSEMBLYCOMPANY CA-ASSEMBLYPRODUCT CA-ASSEMBLYCOPYRIGHT
           CA-ASSEMBLYTRADEMARK CA-ASSEMBLYCULTURE
           CA-COMVISIBLE CA-GUID
           CA-ASSEMBLYVERSION CA-ASSEMBLYFILEVERSION.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
           
           *> �A�Z���u���Ɋւ����ʏ��͈ȉ��̑����Z�b�g���Ƃ����Đ��䂳��܂��B 
           *> �A�Z���u���Ɋ֘A�t�����Ă������ύX����ɂ́A
           *> �����̑����l��ύX���Ă��������B
       SPECIAL-NAMES.
           CUSTOM-ATTRIBUTE CA-ASSEMBLYTITLE CLASS CLASS-ASSEMBLYTITLE
             USING N"AsyncSample.COBOL"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYDESCRIPTION CLASS CLASS-ASSEMBLYDESCRIPTION
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCONFIGURATION CLASS CLASS-ASSEMBLYCONFIGURATION
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCOMPANY CLASS CLASS-ASSEMBLYCOMPANY
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYPRODUCT CLASS CLASS-ASSEMBLYPRODUCT
             USING N"Sample for the 9th day of FUJITSU Advent Calendar 2017"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCOPYRIGHT CLASS CLASS-ASSEMBLYCOPYRIGHT
             USING N"Copyright (C) 2017 Takamasa Uramoto"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYTRADEMARK CLASS CLASS-ASSEMBLYTRADEMARK
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           CUSTOM-ATTRIBUTE CA-ASSEMBLYCULTURE CLASS CLASS-ASSEMBLYCULTURE
             USING PROP-EMPTYSTRING OF CLASS-CLRUTIL
           
           *>  ���� GUID �́A���̃v���W�F�N�g�� COM �Ɍ��J�����ꍇ�́Atypelib �� ID �ł�
           CUSTOM-ATTRIBUTE CA-GUID CLASS CLASS-GUID
             USING N"73018246-7384-4ff4-8fe8-8099980467b0"
           
           *> ComVisible �� B"0" �ɐݒ肷��ƁA���̃A�Z���u�����̌^�� COM �R���|�[�l���g�ɂ� 
           *> �Q�ƕs�\�ɂȂ�܂��BCOM ���炱�̃A�Z���u�����̌^�ɃA�N�Z�X����ꍇ�́A 
           *> ���̌^�� ComVisible ������ B"1" �ɐݒ肵�Ă��������B
           CUSTOM-ATTRIBUTE CA-COMVISIBLE CLASS CLASS-COMVISIBLE
             USING B"0"
           
           *> �A�Z���u���̃o�[�W�������́A�ȉ��� 4 �̒l�ō\������Ă��܂�:
           *>
           *>      Major Version
           *>      Minor Version 
           *>      Build Number
           *>      Revision
           *>
           CUSTOM-ATTRIBUTE CA-ASSEMBLYVERSION CLASS CLASS-ASSEMBLYVERSION
             USING N"1.0.0.0"
           CUSTOM-ATTRIBUTE CA-ASSEMBLYFILEVERSION CLASS CLASS-ASSEMBLYFILEVERSION
             USING N"1.0.0.0"
             .
       REPOSITORY.
           CLASS CLASS-CLRUTIL AS "Fujitsu.COBOL.CLRUtil"
           CLASS CLASS-ASSEMBLYTITLE AS "System.Reflection.AssemblyTitleAttribute"
           CLASS CLASS-ASSEMBLYDESCRIPTION AS "System.Reflection.AssemblyDescriptionAttribute"
           CLASS CLASS-ASSEMBLYCONFIGURATION AS "System.Reflection.AssemblyConfigurationAttribute"
           CLASS CLASS-ASSEMBLYCOMPANY AS "System.Reflection.AssemblyCompanyAttribute"
           CLASS CLASS-ASSEMBLYPRODUCT AS "System.Reflection.AssemblyProductAttribute"
           CLASS CLASS-ASSEMBLYCOPYRIGHT AS "System.Reflection.AssemblyCopyrightAttribute"
           CLASS CLASS-ASSEMBLYTRADEMARK AS "System.Reflection.AssemblyTrademarkAttribute"
           CLASS CLASS-ASSEMBLYCULTURE AS "System.Reflection.AssemblyCultureAttribute"
           CLASS CLASS-GUID AS "System.Runtime.InteropServices.GuidAttribute"
           CLASS CLASS-COMVISIBLE AS "System.Runtime.InteropServices.ComVisibleAttribute"
           CLASS CLASS-ASSEMBLYVERSION AS "System.Reflection.AssemblyVersionAttribute"
           CLASS CLASS-ASSEMBLYFILEVERSION AS "System.Reflection.AssemblyFileVersionAttribute"
           PROPERTY PROP-EMPTYSTRING AS "EmptyString"
           .
       END CLASS ASSEMBLY-INFO.
