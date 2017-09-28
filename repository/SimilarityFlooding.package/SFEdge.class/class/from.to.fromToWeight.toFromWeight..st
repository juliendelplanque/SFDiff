instance creation
from: aNode to: anotherNode fromToWeight: fromToWeight toFromWeight: toFromWeight
	^ (self from: aNode to: anotherNode)
		fromToWeight: fromToWeight;
		toFromWeight: toFromWeight;
		yourself