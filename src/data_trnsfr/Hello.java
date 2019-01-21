package data_trnsfr;

//import java.awt.PageAttributes.MediaType;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
//import javax.ws.rs.AppicationPath;
import javax.ws.rs.core.Application;

@Path("/hello")
public class Hello 
{	
	String thumb_id="108",title="mr",name="vinay",l_name="kuamr",m_name="baghel",joining_date="10/08/2018",rank="mater";
	
	
	
@GET
@Produces(MediaType.TEXT_XML)
public StringBuffer sayHello()
{	StringBuffer resource=null;
	
			resource.append("<?xml version='1.0' ?><user><thumbid>");
			resource.append(thumb_id);
			resource.append("</thumbid></user>");
					/*+ "<title>");
			resource.append(title);
			resource.append("</title><name>");
			resource.append(name);
			resource.append("</name><m_name>");
			resource.append(m_name);
			resource.append("</m_name><l_name>");
			resource.append(l_name);
			resource.append("</l_name><joining_date>");
			resource.append(joining_date);
			resource.append("</joining_date><rank>");
			resource.append(rank);
			resource.append("</rank></user>");*/
	
	return resource;
}
@GET
@Produces(MediaType.APPLICATION_JSON)
public String sayHelloJASON()
{
String resource=null;
return resource;
}

//public String sayHelloHTML(@QueryParam("name") String name,@QueryParam("value") int value)
/*@GET
@Produces(MediaType.TEXT_HTML)
public String sayHelloHTML()
{
String resource="<h1>hi vinay from htm</h1>";
if(value>10)
{
	resource="abcd";
}
if(value<10)
{
	resource="efgh";
}
return resource;
}*/
}
