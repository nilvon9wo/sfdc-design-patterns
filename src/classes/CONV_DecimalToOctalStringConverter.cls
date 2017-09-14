public with sharing class CONV_DecimalToOctalStringConverter {
	public String convert (Integer input) {
		Integer remainder = input;
		
		Map<Integer, Integer> valueByPlaceMap = new Map<Integer, Integer>();
		for (Integer i = 0; i < 4; i++) {
			valueByPlaceMap.put(3-i,  Math.mod(remainder, 8));
			remainder = remainder/8;
		}
		
		String octalString = ''; 
		for (Integer i = 0; i < 4; i++) {
			octalString += valueByPlaceMap.get(i);
		}
		
		return octalString;
	}    
}