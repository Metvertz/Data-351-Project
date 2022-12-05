DROP TABLE projenergy;

CREATE TABLE projenergy(
    StateCodes text,
    State text,
    Region int,
    Division int,
    Coast int,
    GreatLakes int,
    TotalC2012 float,
    TotalP2012 float,
    TotalE2012 float,
    TotalPrice2012 float,
    TotalC12to13 float,
    TotalP12to13 float,
    TotalE12to13 float,
    TotalPrice12to13 float,
    BiomassC2012 float,
    CoalC2012 float,
    CoalP2012 float,
    CoalE2012 float,
    CoalPrice2012 float,
    ElecC2012 float,
    ElecE2012 float,
    ElecPrice2012 float,
    FossFuelC2012 float,
    GeoC2012 float,
    GeoP2012 float,
    HydroC2012 float,
    HydroP2012 float,
    NatGasC2012 float,
    NatGasE2012 float,
    NatGasPrice2012 float,
    LPGC2012 float,
    LPGE2012 float,
    LPGPrice2012 float,
    GDP2012Q1 float,
    GDP2012Q2 float,
    GDP2012Q3 float,
    GDP2012Q4 float,
    GDP2012 float,
    POPESTIMATE2012 float,
    RBIRTH2012 float,
    RDEATH2012 float,
    RNATURALINC2012 float,
    RINTERNATIONALMIG2012 float,
    RDOMESTICMIG2012 float,
    RNETMIG2012 float

);

COPY projenergy
FROM '/Users/metvertz/sqlenergy.csv'
WITH(FORMAT CSV, HEADER);

CREATE TABLE projturnout (
    State text,
    Stateabbr text,
    Dem numeric(3,2),
    Rep numeric(3,2),
    Outcome varchar(1)
);

COPY projturnout
FROM '/Users/metvertz/sqlturnout.csv'
WITH(FORMAT CSV, HEADER);

SELECT *
FROM projenergy as pe
LEFT JOIN projturnout as pt
ON pe.statecodes = pt.stateabbr;
