public with sharing class CONV_DecimalToHexadecimalStringConverter {
	private static final Map<Integer, String> HEX_BY_DECIMAL_MAP = new Map<Integer, String> {
		0 => '0',
		1 => '1',
		2 => '2',
		3 => '3',
		4 => '4',
		5 => '5',
		6 => '6',
		7 => '7',
		8 => '8',
		9 => '9',
		10 => 'A',
		11 => 'B',
		12 => 'C',
		13 => 'D',
		14 => 'E',
		15 => 'F'
	}; 
	
	public String convert (Integer input) {
		Integer remainder = input;
		
		Map<Integer, String> valueByPlaceMap = new Map<Integer, String>();
		for (Integer i = 0; i < 2; i++) {
			valueByPlaceMap.put(1-i,  HEX_BY_DECIMAL_MAP.get(Math.mod(remainder, 16)));
			remainder = remainder/16;
		}
		
		String hexadecimalString = ''; 
		for (Integer i = 0; i < 2; i++) {
			hexadecimalString += valueByPlaceMap.get(i);
		}
		
		return hexadecimalString;
	}    
}