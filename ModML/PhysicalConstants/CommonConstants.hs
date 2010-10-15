module CommonConstants
where
import qualified ModML.Units.UnitsDAEModel as U
import ModML.Units.SIUnits

speedOfLightInVacuum = U.realConstant (uMetre $*$ uSecond $**$(-1)) 2.99792458E8
gravitationalConstant = U.realConstant (uMetre$**$3 $*$ uKilogram$**$(-1) uSecond$**$(-2) ) 6.6742867E-11
planckConstant = U.realConstant (uJoule $*$ uSecond) 6.6260689633E-34
reducedPlanckConstant = planckConstant ./. (U.piX .*. U.realConstant U.dimensionless 2)
magneticConstant = U.piX .*. (U.realConstant (uNewton $*$ uAmpere$**$(-2)) 4E-7)
electricConstant = (U.realConstant U.dimensionless 1) ./. (magneticConstant .*. speedOfLightInVacuum .*. speedOfLightInVacuum)
impedanceOfFreeSpace = magneticConstant .*. speedOfLightInVacuum
coulombsConstant = (U.realConstant U.dimensionless 0.25) ./. (U.piX .*. electricConstant)
elementaryCharge = U.realConstant uCoulomb 1.60217648740E-19
bohrMagneton = elementaryCharge .*. planckConstant ./. (U.realConstant U.dimensionless 2 .*. electronMass)
conductanceQuantum = U.realConstant U.dimensionless 2 .*. (elementaryCharge .*. elementaryCharge) ./. planckConstant
inverseConductanceQuantum = U.realConstant U.dimensionless 0.5 .*. planckConstant ./. (elementaryCharge .*. elementaryCharge)
josephsonConstant = U.realConstant U.dimensionless 2 .*. elementaryCharge ./. planckConstant
magneticFluxQuantum = U.realConstant U.dimensionless 0.5 .*. planckConstant ./. elementaryCharge
nuclearMagneton = elementaryCharge .*. planckConstant ./. (U.realConstant U.dimensionless 2 .*. protonMass)
vonKlitzingConstant = planckConstant ./. (elementaryCharge .*. elementaryCharge)
bohrRadius = fineStructureConstant ./. (U.realConstant U.dimensionless 4 .*. U.piX .*. rydbergConstant)
classicalElectronRadius = elementaryCharge .*. elementaryCharge ./. (U.realConstant U.dimensionless 4 .*. U.piX .*. electricConstant .*. electronMass .*. speedOfLightInVacuum .*. speedOfLightInVacuum)
electronMass = U.realConstant uKilogram 9.1093821545E-31
-- To-do: fermiCouplingConstant
fineStructureConstant = magneticConstant .*. elementaryCharge .*. elementaryCharge .*. speedOfLightInVacuum ./. (U.realConstant U.dimensionless 2 .*. planckConstant)
hartreeEnergy = U.realConstant U.dimensionless 2 .*. rydbergConstant .*. planckConstant .*. speedOfLightInVacuum
protonMass = U.realConstant uKilogram 1.67262163783E-27
quantumOfCirculation = planckConstant ./. (U.realConstant U.dimensionless 2 .*. electronMass)
rydbergConstant = fineStructureConstant.**.2 .*. electronMass .*. speedOfLightInVacuum ./. (U.realConstant U.dimensionless 2 .*. planckConstant)
thomsonCrossSection = (U.realConstant U.dimensionless (8.0/3)) .*. U.piX .*. classicalElectronRadius.**.2

avogadrosNumber = U.realConstant (uMole $**$ (-1)) 6.0221417930E23
boltzmanConstant = gasConstant ./. avogadrosNumber
faradayConstant = avogadrosNumber .*. elementaryCharge
loschmidtConstant = avogadrosNumber ./. molarVolumeIdealGas
gasConstant = U.realConstant (uJoule $*$ (uMole $*$ uKelvin) $**$ (-1)) 8.31447215
molarPlanckConstant = avogadrosNumber .*. planckConstant
standardGravity = U.realConstant (uMetre .*. uSecond.**.(-2)) 9.80665
standardAtmosphere = U.realConstant (uPascal) 101325
