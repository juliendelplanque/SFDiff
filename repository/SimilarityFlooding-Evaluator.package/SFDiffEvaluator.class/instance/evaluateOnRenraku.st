evaluation
evaluateOnRenraku
	"Evaluate the diff precision on Renraku (https://github.com/Uko/Renraku) v0.10.0 and v0.11.0"
	| diff |
	diff := SFDiff new
				baseModel: self renrakuV0100Model;
				targetModel: self renrakuV0110Model;
				matchThreshold: 0.001;
				computeDiff;
				yourself.