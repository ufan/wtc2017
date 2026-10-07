# Proposed revision of the two field demonstrations

## Editorial objective

Shift the emphasis from mathematical derivation to algorithm design: what information enters each workflow, how it is transformed, what constraints are imposed, how the result is checked, and what engineering output is produced.

The two demonstrations should also be distinguished explicitly:

- Demonstration I is a physics-based, regularised inversion that estimates three-dimensional density corrections relative to a geological reference model.
- Demonstration II is a hybrid learning-and-geometry workflow that detects directional features and combines several views into a candidate three-dimensional pipeline axis.

## Recommended structural changes

1. Insert one workflow figure near the beginning of the field-demonstration section or at the end of `MUOGRAPHY SYSTEM AND FIELD PERFORMANCE`.
2. Rename `Reconstruction method` in Demonstration I to `Algorithm design`.
3. Remove Equations `eq:model`, `eq:likelihood`, and `eq:objective`. Replace their surrounding derivation with the proposed prose below.
4. Combine `Directional-feature extraction` and `Multi-view axis reconstruction` in Demonstration II under a single subsection titled `Algorithm design`.
5. Remove the two equations defining the backprojection planes and constrained direction fit. Retain Equation `eq:axis`, because it reports the reconstructed engineering result rather than deriving the method.
6. Retain details that materially affect interpretation: reference-model construction, common normalisation, geological and spatial regularisation, position-specific U-Net models, detector poses, empirical view weighting, and the near-horizontal preference.
7. Keep validation and limitations adjacent to the results. This prevents the simplified method description from appearing more certain than the evidence supports.

## Proposed replacement: Demonstration I

### Algorithm design

The reconstruction workflow combined the underground directional counts from the two shield positions with the open-sky reference, detector poses, tunnel geometry and borehole-derived geological model. For each trial density distribution, ray tracing calculated the material thickness traversed in each direction, and a muon-transmission model converted this thickness into predicted directional counts. The algorithm then adjusted three-dimensional density corrections to improve agreement between the measured and predicted counts.

Because only two viewing positions were available, the inversion was constrained by the geological reference and by spatial continuity. Departures from the borehole model were penalised more strongly near boreholes, while smoothing was weakened across interpreted layer boundaries. The sky rates were estimated jointly with the density corrections, and the solution was bounded to avoid physically implausible values. The resulting volume therefore represents regularised corrections relative to the reference model, rather than an independent absolute-density reconstruction.

Counts were fitted in 151 adaptive angular bins over a 2~m voxel grid. The two positions were first reconstructed jointly and then separately. Cross-position prediction was used as a consistency check: a reconstruction derived from one position was used to predict the counts at the other position, and improvement was assessed using Poisson deviance.

## Proposed replacement: Demonstration II

### Algorithm design

The pipeline workflow separated directional-feature detection from three-dimensional localisation. First, a position-specific U-Net was trained on simulated directional maps containing pipelines with varied locations and orientations, together with no-pipeline cases. Each fixed network converted its field map into a relative feature-score map. These scores indicate pipeline-like directional structure but are not calibrated probabilities of pipeline presence.

Second, a weighted linear ridge was fitted to the high-score region in each view. The measured detector poses transformed these directional ridges into backprojection planes in the common tunnel coordinate system. The candidate pipeline axis was obtained by finding the line most consistent with all four planes, weighting views by ridge quality and applying a soft near-horizontal preference based on the expected utility geometry. This multi-view step converts view-dependent image features into a single spatial constraint for construction planning.

The reconstruction should continue to be reported as a candidate axis. Its position depends on the simulated training data, pose measurements, ridge weights and horizontal preference, and no independent field confirmation or positional uncertainty estimate was available.

## Figure choices

- **Option A — Shared workflow with two branches:** best all-purpose choice. It makes the common measurement stage and the different inversion strategies immediately clear.
- **Option B — Side-by-side algorithm comparison:** best if the text needs to explain the methodological contrast between the demonstrations.
- **Option C — Field-to-decision workflow:** best for an engineering audience because it foregrounds validation, limitations and decision support.

**Recommendation:** use Option A in the main paper. Its structure most directly supports the proposed prose and avoids repeating details already shown in the result figures. Option C is a strong alternative if the conference audience is expected to prioritise construction decisions over reconstruction methodology.