package com.schappet.c4.clubRoster.dao;

import edu.uiowa.icts.spring.*;
import edu.uiowa.icts.spring.AbstractSpringTestCase;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.web.WebAppConfiguration;

/**
 * Unit test Template
 * Generated by Protogen
 * @see <a href="https://github.com/ui-icts/protogen">https://github.com/ui-icts/protogen</a>
 * @since 04/21/2016 20:21:13 CDT
 */
@WebAppConfiguration
public class ClubMemberTest extends AbstractSpringTestCase {

    @Autowired
    private ClubRosterDaoService clubRosterDaoService;

    @Test
    public void testServiceName() {
    	assertEquals( true, true );
    }

    @Before
    public void setUp() throws Exception {
    	super.setUp();
    }

    @After
    public void tearDown() throws Exception {
    	super.tearDown();
    }

}