import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure SimilaritySolutionExistencePackage {S : SimilarityParameterSpace}
    {B : BuckinghamPiTheoremPackage S} where
  governingEquations : Type u
  boundaryConditions : Type v
  similarityReduction : Prop
  reducedODEs : Type w
  existenceTime : ℚ
  solutionRegularity : Prop

structure SimilaritySolutionExistenceEvidence {S : SimilarityParameterSpace}
    {B : BuckinghamPiTheoremPackage S}
    (E : SimilaritySolutionExistencePackage B) where
  similarityReductionClosed : E.similarityReduction
  existenceTimeClosed : E.existenceTime > 0
  solutionRegularityClosed : E.solutionRegularity

def SimilaritySolutionExistenceClosed {S : SimilarityParameterSpace}
    {B : BuckinghamPiTheoremPackage S}
    (E : SimilaritySolutionExistencePackage B) : Prop :=
  E.similarityReduction ∧ (E.existenceTime > 0) ∧ E.solutionRegularity

theorem similarity_solution_existence_closed_from_evidence
    {S : SimilarityParameterSpace} {B : BuckinghamPiTheoremPackage S}
    (E : SimilaritySolutionExistencePackage B)
    (Ev : SimilaritySolutionExistenceEvidence E) :
    SimilaritySolutionExistenceClosed E := by
  exact And.intro Ev.similarityReductionClosed
    (And.intro Ev.existenceTimeClosed Ev.solutionRegularityClosed)

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse