({
	setStudent : function(component) {
		var action = component.get('c.getStudent');
		action.setParams({
			enrollmentNumber : component.get('v.enrollmentNumber')
		});
		action.setCallback(this, function(response) {
			if (response.getState() === 'SUCCESS') {
				component.set('v.student', response.getReturnValue());
			}
		});
		$A.enqueueAction(action);
	},
	
	updateStudent : function(component) {
		var action = component.get('c.updateStudent');
		action.setParams({
			enrollmentNumber : component.get('v.enrollmentNumber'),
			studentName : component.get('v.student.Name__c')
		});
		$A.enqueueAction(action);
	}
})