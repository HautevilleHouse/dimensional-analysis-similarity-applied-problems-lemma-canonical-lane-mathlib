import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure SimilaritySolutionPackage where
  similarityVariable : String
  reductionODEs : Prop
  boundaryConditions : Prop
  existenceProof : Prop

structure SimilaritySolutionEvidence (S : SimilaritySolutionPackage) where
  similarityVariableDefined : S.similarityVariable ≠ ""
  reductionODEsClosed : S.reductionODEs
  boundaryConditionsClosed : S.boundaryConditions
  existenceProofClosed : S.existenceProof

def SimilaritySolutionClosed (S : SimilaritySolutionPackage) : Prop :=
  S.similarityVariable ≠ "" ∧ S.reductionODEs ∧ S.boundaryConditions ∧ S.existenceProof

theorem similarity_solution_closed_from_evidence (S : SimilaritySolutionPackage) (E : SimilaritySolutionEvidence S) :
    SimilaritySolutionClosed S := by
  exact And.intro E.similarityVariableDefined
    (And.intro E.reductionODEsClosed
      (And.intro E.boundaryConditionsClosed E.existenceProofClosed))

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse