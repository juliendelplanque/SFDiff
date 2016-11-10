evaluation
evaluateOnLibnotifyBinding
	"Evaluate the diff precision on RenoirSt (https://github.com/juliendelplanque/LibnotifyBinding) '22c41b0e954a9215459c69af67c7242255a8362d' and '84dfc7de06a2c3acb932b1a812c33553ff812297'."
	^ self sfDiffEvaluateFor: self libnotifyBindingCommit1Model and: self libnotifyBindingCommit2Model with: self libnotifyBindingExpectedChanges