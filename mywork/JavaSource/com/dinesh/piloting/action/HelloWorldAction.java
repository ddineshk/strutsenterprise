package com.dinesh.piloting.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.dinesh.piloting.form.HelloWorldForm;

public class HelloWorldAction extends Action {

@Override
public ActionForward execute(ActionMapping mapping, ActionForm form,
		HttpServletRequest request, HttpServletResponse response)
		throws Exception {
	HelloWorldForm hwForm = (HelloWorldForm) form;
	hwForm.setMessage("Hello Dinesh");
	return mapping.findForward("success");
}
}
