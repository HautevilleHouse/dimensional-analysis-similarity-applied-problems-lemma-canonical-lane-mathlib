import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure AppliedProblemsConvergencePackage where
  approximationScheme : Type u
  errorEstimate : Prop
  convergenceRate : Prop
  stability : Prop
  approximationSchemeClosed : approximationScheme
  errorEstimateClosed : errorEstimate
  convergenceRateClosed : convergenceRate
  stabilityClosed : stability

def AppliedProblemsConvergenceClosed (A : AppliedProblemsConvergencePackage) : Prop :=
  A.approximationScheme ∧ A.errorEstimate ∧ A.convergenceRate ∧ A.stability

theorem applied_problems_convergence_closed_from_evidence (A : AppliedProblemsConvergencePackage) : AppliedProblemsConvergenceClosed A :=
  And.intro A.approximationSchemeClosed (And.intro A.errorEstimateClosed (And.intro A.convergenceRateClosed A.stabilityClosed))

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse