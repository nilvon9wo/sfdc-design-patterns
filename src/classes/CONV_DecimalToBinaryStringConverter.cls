public with sharing class CONV_DecimalToBinaryStringConverter {
	public String convert (Integer input) {
		Integer remainder = input;
		
		Map<Integer, Integer> valueByPlaceMap = new Map<Integer, Integer>();
		for (Integer i = 0; i < 16; i++) {
			valueByPlaceMap.put(15-i,  Math.mod(remainder, 2));
			remainder = remainder/2;
		}
		
		String binaryString = ''; 
		for (Integer i = 0; i < 16; i++) {
			binaryString += valueByPlaceMap.get(i);
		}
		
		return binaryString;
	}    
}