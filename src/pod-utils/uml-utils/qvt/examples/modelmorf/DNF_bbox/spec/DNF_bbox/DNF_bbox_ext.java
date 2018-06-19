/*
 * Created on Feb 15, 2007
 */
package DNF_bbox;

import java.io.File;

import mdd.model.IMFactory;
import adex.cursor.IMCursor;
import adex.dom.Dirn;
import adex.dom.IMAssociation;
import adex.dom.IMClass;
import adex.dom.IMObject;
import adex.dom.IMPackage;
import adex.dom.util.Security;
import adex.dom.x.IMWorkSpace;

import com.tcs.mdd.config.ConfigRegistry;
import com.tcs.mdd.config.IMConfigElement;
import com.tcs.mdd.config.IMConfigRegistry;


/**
 */
public class DNF_bbox_ext
{
	public static IMWorkSpace tgtWs;
	public static IMPackage tgtPkg;
	
	public static IMObject CopyExpr(IMObject e1, IMObject e2) throws Exception
	{
		tgtWs = initWorkspace("TARGET_WORKSPACE", "/local/ModelMorf/ModelMorf" + "/" + "extJar");
		tgtPkg = tgtWs.getPackage("expr1");
		
		String e1ClassName = e1.getMetaClass().getName();
		if(e1ClassName.equals("And"))
		{
			return CopyAnd(e1, e2);
		}
		else if(e1ClassName.equals("Or"))
		{
			return CopyOr(e1, e2);
		}
		else if(e1ClassName.equals("Not"))
		{
			return CopyNot(e1, e2);
		}
		else if(e1ClassName.equals("Literal"))
		{
			return CopyLiteral(e1, e2);
		}
		else
		{
			return null;
		}
	}
	
	private static IMObject CopyAnd(IMObject e1, IMObject e2) throws Exception
	{
		IMClass srcClsAnd = e1.getMetaClass();
		IMAssociation srcAssocExpr = srcClsAnd.getAssociation("expr", srcClsAnd, Dirn.defaultTrueInstance);
		IMCursor curs = e1.openAssocObjects(srcAssocExpr, Dirn.defaultTrueInstance);
		IMObject e3 = e1.fetchAssocObjects(curs);
		IMObject e4 = e1.fetchAssocObjects(curs);
		e1.closeAssocObjects(curs);
		
		IMClass tgtClsAnd = tgtPkg.getClassFromTypePackage("And");
		IMObject e5 = CopyExpr(e3, null);
		IMObject e6 = CopyExpr(e4, null);
		IMAssociation tgtAssocExpr = tgtClsAnd.getAssociation("expr", tgtClsAnd, Dirn.defaultTrueInstance);
		String e2Name = e5.getName() + "." + e6.getName(); 
		e2 = tgtClsAnd.createObject(tgtPkg, e2Name);
		e2.addAssocLink(tgtAssocExpr, Dirn.defaultTrueInstance, e5);
		e2.addAssocLink(tgtAssocExpr, Dirn.defaultTrueInstance, e6);
		
		return e2;
	}
	
	private static IMObject CopyOr(IMObject e1, IMObject e2) throws Exception
	{
		IMClass srcClsOr = e1.getMetaClass();
		IMAssociation srcAssocExpr = srcClsOr.getAssociation("expr", srcClsOr, Dirn.defaultTrueInstance);
		IMCursor curs = e1.openAssocObjects(srcAssocExpr, Dirn.defaultTrueInstance);
		IMObject e3 = e1.fetchAssocObjects(curs);
		IMObject e4 = e1.fetchAssocObjects(curs);
		e1.closeAssocObjects(curs);
		
		IMClass tgtClsOr = tgtPkg.getClassFromTypePackage("Or");
		IMObject e5 = CopyExpr(e3, null);
		IMObject e6 = CopyExpr(e4, null);
		IMAssociation tgtAssocExpr = tgtClsOr.getAssociation("expr", tgtClsOr, Dirn.defaultTrueInstance);
		String e2Name = e5.getName() + "+" + e6.getName(); 
		e2 = tgtClsOr.createObject(tgtPkg, e2Name);
		e2.addAssocLink(tgtAssocExpr, Dirn.defaultTrueInstance, e5);
		e2.addAssocLink(tgtAssocExpr, Dirn.defaultTrueInstance, e6);
		
		return e2;
	}
	
	private static IMObject CopyNot(IMObject e1, IMObject e2) throws Exception
	{
		IMClass srcClsNot = e1.getMetaClass();
		IMAssociation srcAssocExpr = srcClsNot.getAssociation("expr", srcClsNot, Dirn.defaultTrueInstance);
		IMCursor curs = e1.openAssocObjects(srcAssocExpr, Dirn.defaultTrueInstance);
		IMObject e3 = e1.fetchAssocObjects(curs);
		e1.closeAssocObjects(curs);
		
		IMClass tgtClsNot = tgtPkg.getClassFromTypePackage("Not");
		IMObject e5 = CopyExpr(e3, null);
		IMAssociation tgtAssocExpr = tgtClsNot.getAssociation("expr", tgtClsNot, Dirn.defaultTrueInstance);
		String e2Name = "~" + e5.getName(); 
		e2 = tgtClsNot.createObject(tgtPkg, e2Name);
		e2.addAssocLink(tgtAssocExpr, Dirn.defaultTrueInstance, e5);
		
		return e2;
	}
	
	private static IMObject CopyLiteral(IMObject e1, IMObject e2) throws Exception
	{
		IMClass tgtClsLiteral = tgtPkg.getClassFromTypePackage("Literal");
		String e2Name = e1.getName();
		e2 = tgtClsLiteral.createObject(tgtPkg, e2Name);
		
		return e2;
	}
	
	private static IMFactory getFactory(IMConfigRegistry registry) throws Exception
	{
		IMFactory factory = null;
		IMConfigElement[] wsinfo = registry.getToolInfo("adex").getConfigElements("workspace");
		
		IMConfigElement wsConf = null;
		wsConf = wsinfo[0];
		IMConfigElement[] wsinfo1=wsConf.getChildren();
		
		IMConfigElement wsConf1=wsinfo1[0];
		String factoryClassName = wsConf1.getAttribute("mddWorkspaceFactory");
		
		Class wrkspaceInstance = Class.forName(factoryClassName);
		factory = (IMFactory) wrkspaceInstance.newInstance();
		
		return factory;
	}
	
	private static IMWorkSpace initWorkspace(String workspaceName, String jarPath) throws Exception
	{
		String configPath = jarPath + File.separator + "config.xml";
		String extensionsPath = jarPath + File.separator + "extensions.xml";
		String extpointsPath = jarPath + File.separator + "extpoints.xml";
		IMConfigRegistry registry = ConfigRegistry.readRegistry(configPath, extensionsPath, extpointsPath);
		IMFactory factory = getFactory(registry);
		
		IMWorkSpace workspace = factory.getWorkSpace(workspaceName, registry);
		
		IMObject managerObj = Security.securityInstance.getUser(workspace, "manager", "manager");
		workspace.setCurrentUser(managerObj);
		
		return workspace;
	}
}
