public with sharing class COMPO_CompositePatternDemo {
	public static void main() {
		(new COMPO_CompositePatternDemo()).demonstrate();
	}
	
	private void demonstrate() {
		COMPO_Employee clerk1 = new COMPO_Employee('Laura', 'Marketing', 100000); 		
		COMPO_Employee clerk2 = new COMPO_Employee('Bob', 'Marketing', 100000); 		
		COMPO_Employee headSales = new COMPO_Employee('Robert', 'Head Sales', 200000); 		
		headSales.add(clerk1);
		headSales.add(clerk2);

		COMPO_Employee salesExecutive1 = new COMPO_Employee('Richard', 'Sales', 100000); 		
		COMPO_Employee salesExecutive2 = new COMPO_Employee('Rob', 'Sales', 100000); 		
		COMPO_Employee headMarketing = new COMPO_Employee('Michel', 'Head Marketing', 200000); 		
		headMarketing.add(salesExecutive1);
		headMarketing.add(salesExecutive2);

		COMPO_Employee ceo = new COMPO_Employee('John', 'CEO', 300000); 		
		ceo.add(headSales);
		ceo.add(headMarketing);

		System.debug(ceo);
		for (COMPO_Employee headEmployee : ceo.subordinateList) {
			System.debug(headEmployee);
			
			for (COMPO_Employee employee : headEmployee.subordinateList) {
				System.debug(employee);
			}
		}
	}
}