package com.smartphone.web.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * The interface for Create an Annotation.
 * Retention:A retention policy determines at what point an annotation is discarded.
 * 1.SOURCE: annotation retained only in the source file and is discarded during compilation.
 * 2.CLASS: annotation stored in the .class file during compilation, not available in the run time.
 * 3.RUNTIME: annotation stored in the .class file and available in the run time.
 * 4.They are defined java.lang.annotation.RetentionPolicy enumeration. 
 * Target  : Specify which Java elements your custom annotation can be used to annotate. 
 * ElementType.METHOD    works on function or Method
 */

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface Register {

}
