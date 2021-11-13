/// @function         ChooseWeightedRandomFishingChartID()
function ChooseWeightedRandomFishingChartID(){
	var num = irandom(99) + 1; //1 to 100
	if(num <= 10){
		return 2; //10% chart 2 (Favors Large Fish)
	} else if(num <= 30){
		return 1; //20% chart 1 (Favors Medium Fish)
	}
	return 0; //70% chart 0 (Favors Small Fish)
}

//Chart % |70 20 10|
//        |--------|
//Big %   | 5  5 20|
//Medium %|20 50 10|
//Small % |75 45 70|

/// @function         ChooseWeightedRandomFishSize(chartID)
/// @param {real} chartId  The ID of the chart to use for weights
function ChooseWeightedRandomFishSize(chartID){
	var num = irandom(99) + 1 //1 to 100
	switch(chartID){
		case 0: //Favors Small Fish
			if(num <= 5){
				return 2; //5% Large
			} else if(num <= 25) {
				return 1; //20% Medium
			}
			return 0; //75% Small
			break;
		case 1: //Favors Medium Fish
			if(num <= 5){
				return 2; //5% Large
			} else if(num <= 55) {
				return 1; //50% Medium
			}
			return 0; //45% Small
			break;
		case 2: //Favors Large Fish
			if(num <= 20){
				return 2; //20% Large
			} else if(num <= 30) {
				return 1; //10% Medium
			}
			return 0; //70% Small
			break;
		default: //Error, invalid chartID
			return 4; //Small
	}
}