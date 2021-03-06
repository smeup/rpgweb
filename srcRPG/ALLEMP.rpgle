      * Sample tables created with
      * CALL QSYS.CREATE_SQL_SAMPLE ('SAMPLE')
      * See:
      * https://www.ibm.com/support/knowledgecenter/en/ssw_ibm_i_74/sqlp/rbafysamptblx.htm
      * We use here the EMPLOYEE Table:
      * https://www.ibm.com/support/knowledgecenter/en/ssw_ibm_i_74/sqlp/rbafyemployee.htm
      * ------------------------------------------------------------------
     FXEMP2     if   e           k disk
     D toFind          S              3
     D msg             S             52    inz(*blanks)
      *
     C     *entry        plist
     C                   parm                    toFind
      *-------------------------------------------------------------------------
     C                   eval      msg = 'FIRSTNME'
     C     msg           dsply
      *-------------------------------------------------------------------------
     C                   eval      msg = 'First name'
     C     msg           dsply
      *-------------------------------------------------------------------------
     C                   eval      msg = 'LASTNAME'
     C     msg           dsply
      *-------------------------------------------------------------------------
     C                   eval      msg = 'Last name'
     C     msg           dsply
      *-------------------------------------------------------------------------
     C                   eval      msg = 'GENDER'
     C     msg           dsply
      *-------------------------------------------------------------------------
     C                   eval      msg = 'Gender'
     C     msg           dsply
      *-------------------------------------------------------------------------
     C                   eval      msg = 'SALARY'
     C     msg           dsply
      *-------------------------------------------------------------------------
     C                   eval      msg = 'Salary'
     C     msg           dsply
      *-------------------------------------------------------------------------
     C                   eval      msg = '_##_ROWS'
     C     msg           dsply
      *-------------------------------------------------------------------------
     C                   Read      XEMP2
     C                   dow       not %eof
     C                   eval      msg = 'FIRSTNME_##_' + %trim(FIRSTNME)
     C     msg           dsply
     C                   eval      msg = 'LASTNAME_##_' +%trim(LASTNAME)
     C     msg           dsply
     C                   eval      msg = 'GENDER_##_' +%trim(SEX)
     C     msg           dsply
     C                   eval      msg = 'SALARY_##_' + %CHAR(SALARY)
     C     msg           dsply
     C                   eval      msg = '_##_ENDROW'
     C     msg           dsply
     C                   Read      XEMP2
     C                   enddo
      * Closing resources.
     C                   seton                                        lr
