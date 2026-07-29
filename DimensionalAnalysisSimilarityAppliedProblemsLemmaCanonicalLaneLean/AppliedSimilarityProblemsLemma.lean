import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

def DimensionalAnalysisSimilarityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem dimensional_analysis_similarity_endgame (A : AdmissibleClass) :
    DimensionalAnalysisSimilarityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse