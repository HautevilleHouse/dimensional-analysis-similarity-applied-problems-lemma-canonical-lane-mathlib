import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean

structure BuckinghamPiPackage where
  physicalDimensions : Type u
  dimensionMatrix : Type v
  piGroups : List (String × String)
  dimensionReduction : Prop
  dimensionlessComponents : Prop

def BuckinghamPiClosed (B : BuckinghamPiPackage) : Prop :=
  B.dimensionReduction ∧ B.dimensionlessComponents

end DimensionalAnalysisSimilarityAppliedProblemsLemmaCanonicalLaneLean
end HautevilleHouse