package com.jumia.validator.enums;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum CountryEnum {

    CAMEROON("Cameroon", "237", "\\(237\\)\\ ?[2368]\\d{7,8***REMOVED***$"),
    ETHIOPIA("Ethiopia", "251", "\\(251\\)\\ ?[1-59]\\d{8***REMOVED***$"),
    MOROCCO("Morocco", "212", "\\(212\\)\\ ?[5-9]\\d{8***REMOVED***$"),
    MOZAMBIQUE("Mozambique", "258", "\\(258\\)\\ ?[28]\\d{7,8***REMOVED***$"),
    UGANDA("Uganda", "256", "\\(256\\)\\ ?\\d{9***REMOVED***$");

    private String name;
    private String phoneCode;
    private String phoneRegex;
***REMOVED***
