package com.ecommerce.exception;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = true)
@AllArgsConstructor
public class CustomerNotFoundException extends RuntimeException {
    private final String msg;
        
}
