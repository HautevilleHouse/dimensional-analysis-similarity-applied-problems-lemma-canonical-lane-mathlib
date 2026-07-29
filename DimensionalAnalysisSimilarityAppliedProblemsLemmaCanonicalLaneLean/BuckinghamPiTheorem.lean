import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure BuckinghamPiPackage where
  physicalQuantities : List Type
  fundamentalDimensions : List String
  numberVariables : Nat
  numberDimensions : Nat
  piGroups : List String
  piTheoremProven : Prop

structure BuckinghamPiEvidence (B : BuckinghamPiPackage) where
  rankCondition : B.numberVariables ≥ B.numberDimensions
  piGroupsComplete : B.piGroups ≠ []
  piTheoremProvenClosed : B.piTheoremProven

def BuckinghamPiClosed (B : BuckinghamPiPackage) : Prop :=
  B.numberVariables ≥ B.numberDimensions ∧ B.piGroups ≠ [] ∧ B.piTheoremProven

theorem buckingham_pi_closed_from_evidence (B : BuckinghamPiPackage)
    (E : BuckinghamPiEvidence B) : BuckinghamPiClosed B := by
  exact And.intro E.rankCondition (And.intro E.piGroupsComplete E.piTheoremProvenClosed)

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse