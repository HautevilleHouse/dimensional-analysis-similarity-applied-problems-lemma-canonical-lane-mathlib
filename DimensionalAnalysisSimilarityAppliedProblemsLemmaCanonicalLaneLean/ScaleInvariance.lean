import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure ScaleInvariancePackage where
  governingEquations : Prop
  scalingSymmetries : Prop
  invariantQuantities : List String
  selfSimilarSolutions : Prop

structure ScaleInvarianceEvidence (S : ScaleInvariancePackage) where
  governingEquationsClosed : S.governingEquations
  scalingSymmetriesClosed : S.scalingSymmetries
  selfSimilarSolutionsClosed : S.selfSimilarSolutions

def ScaleInvarianceClosed (S : ScaleInvariancePackage) : Prop :=
  S.governingEquations ∧ S.scalingSymmetries ∧ S.selfSimilarSolutions

theorem scale_invariance_closed_from_evidence (S : ScaleInvariancePackage) (E : ScaleInvarianceEvidence S) :
    ScaleInvarianceClosed S := by
  exact And.intro E.governingEquationsClosed
    (And.intro E.scalingSymmetriesClosed E.selfSimilarSolutionsClosed)

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse