import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure SelfSimilarityAsymptoticPackage {S : SimilarityParameterSpace}
    {B : BuckinghamPiTheoremPackage S}
    (E : SimilaritySolutionExistencePackage B) where
  similarityVariable : Type u
  asymptoticRegime : ℚ → Prop
  selfSimilarProfile : Type v
  scalingExponent : ℚ
  profileEquation : Prop
  boundaryLayer : Prop

structure SelfSimilarityAsymptoticEvidence {S : SimilarityParameterSpace}
    {B : BuckinghamPiTheoremPackage S}
    {E : SimilaritySolutionExistencePackage B}
    (A : SelfSimilarityAsymptoticPackage E) where
  profileEquationClosed : A.profileEquation
  boundaryLayerClosed : A.boundaryLayer
  asymptoticMatch : Prop

def SelfSimilarityAsymptoticClosed {S : SimilarityParameterSpace}
    {B : BuckinghamPiTheoremPackage S}
    {E : SimilaritySolutionExistencePackage B}
    (A : SelfSimilarityAsymptoticPackage E) : Prop :=
  A.profileEquation ∧ A.boundaryLayer ∧ (∃ (p : SelfSimilarityAsymptoticEvidence A), p.asymptoticMatch)

theorem self_similarity_asymptotic_closed_from_evidence
    {S : SimilarityParameterSpace} {B : BuckinghamPiTheoremPackage S}
    {E : SimilaritySolutionExistencePackage B}
    (A : SelfSimilarityAsymptoticPackage E)
    (Ev : SelfSimilarityAsymptoticEvidence A) :
    SelfSimilarityAsymptoticClosed A := by
  refine And.intro Ev.profileEquationClosed (And.intro Ev.boundaryLayerClosed ?_)
  exact ⟨Ev⟩

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse