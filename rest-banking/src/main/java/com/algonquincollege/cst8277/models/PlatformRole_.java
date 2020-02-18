package com.algonquincollege.cst8277.models;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="Dali", date="2020-02-17T20:53:52.303-0500")
@StaticMetamodel(PlatformRole.class)
public class PlatformRole_ extends ModelBase_ {
	public static volatile SingularAttribute<PlatformRole, Integer> id;
	public static volatile ListAttribute<PlatformRole, PlatformUser> platformUsers;
	public static volatile SingularAttribute<PlatformRole, String> roleName;
}
