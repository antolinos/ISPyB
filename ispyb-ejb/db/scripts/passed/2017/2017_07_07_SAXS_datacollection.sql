use `pydb`;
insert into SchemaStatus (scriptName, schemaStatus) values ('2017_07_07_SAXS_datacollection.sql','ONGOING');

drop view if exists v_saxs_datacollection;
USE `pydb`;
CREATE 
     OR REPLACE ALGORITHM = MERGE 
    DEFINER = `pxadmin`@`%` 
    SQL SECURITY DEFINER
VIEW `v_saxs_datacollection` AS
    SELECT 
        `Subtraction`.`subtractionId` AS `Subtraction_subtractionId`,
        `MeasurementToDataCollection`.`dataCollectionId` AS `MeasurementToDataCollection_dataCollectionId`,
        `MeasurementToDataCollection`.`dataCollectionOrder` AS `MeasurementToDataCollection_dataCollectionOrder`,
        `MeasurementToDataCollection`.`measurementToDataCollectionId` AS `MeasurementToDataCollection_measurementToDataCollectionId`,
        `Specimen`.`specimenId` AS `Specimen_specimenId`,
        `Measurement`.`code` AS `Measurement_code`,
        `Measurement`.`measurementId` AS `Measurement_measurementId`,
        `Buffer`.`bufferId` AS `Buffer_bufferId`,
        `Buffer`.`proposalId` AS `Buffer_proposalId`,
        `Buffer`.`safetyLevelId` AS `Buffer_safetyLevelId`,
        `Buffer`.`name` AS `Buffer_name`,
        `Buffer`.`acronym` AS `Buffer_acronym`,
        `Buffer`.`pH` AS `Buffer_pH`,
        `Buffer`.`composition` AS `Buffer_composition`,
        `Buffer`.`comments` AS `Buffer_comments`,
        `Macromolecule`.`macromoleculeId` AS `Macromolecule_macromoleculeId`,
        `Macromolecule`.`proposalId` AS `Macromolecule_proposalId`,
        `Macromolecule`.`safetyLevelId` AS `Macromolecule_safetyLevelId`,
        `Macromolecule`.`name` AS `Macromolecule_name`,
        `Macromolecule`.`acronym` AS `Macromolecule_acronym`,
        `Macromolecule`.`extintionCoefficient` AS `Macromolecule_extintionCoefficient`,
        `Macromolecule`.`molecularMass` AS `Macromolecule_molecularMass`,
        `Macromolecule`.`sequence` AS `Macromolecule_sequence`,
        `Macromolecule`.`contactsDescriptionFilePath` AS `Macromolecule_contactsDescriptionFilePath`,
        `Macromolecule`.`symmetry` AS `Macromolecule_symmetry`,
        `Macromolecule`.`comments` AS `Macromolecule_comments`,
        `Macromolecule`.`refractiveIndex` AS `Macromolecule_refractiveIndex`,
        `Macromolecule`.`solventViscosity` AS `Macromolecule_solventViscosity`,
        `Macromolecule`.`creationDate` AS `Macromolecule_creationDate`,
        `Specimen`.`experimentId` AS `Specimen_experimentId`,
        `Specimen`.`bufferId` AS `Specimen_bufferId`,
        `Specimen`.`samplePlatePositionId` AS `Specimen_samplePlatePositionId`,
        `Specimen`.`safetyLevelId` AS `Specimen_safetyLevelId`,
        `Specimen`.`stockSolutionId` AS `Specimen_stockSolutionId`,
        `Specimen`.`code` AS `Specimen_code`,
        `Specimen`.`concentration` AS `Specimen_concentration`,
        `Specimen`.`volume` AS `Specimen_volume`,
        `Specimen`.`comments` AS `Specimen_comments`,
        `SamplePlatePosition`.`samplePlatePositionId` AS `SamplePlatePosition_samplePlatePositionId`,
        `SamplePlatePosition`.`samplePlateId` AS `SamplePlatePosition_samplePlateId`,
        `SamplePlatePosition`.`rowNumber` AS `SamplePlatePosition_rowNumber`,
        `SamplePlatePosition`.`columnNumber` AS `SamplePlatePosition_columnNumber`,
        `SamplePlatePosition`.`volume` AS `SamplePlatePosition_volume`,
        `SamplePlate`.`samplePlateId` AS `samplePlateId`,
        `SamplePlate`.`experimentId` AS `experimentId`,
        `SamplePlate`.`plateGroupId` AS `plateGroupId`,
        `SamplePlate`.`plateTypeId` AS `plateTypeId`,
        `SamplePlate`.`instructionSetId` AS `instructionSetId`,
        `SamplePlate`.`boxId` AS `SamplePlate_boxId`,
        `SamplePlate`.`name` AS `SamplePlate_name`,
        `SamplePlate`.`slotPositionRow` AS `SamplePlate_slotPositionRow`,
        `SamplePlate`.`slotPositionColumn` AS `SamplePlate_slotPositionColumn`,
        `SamplePlate`.`storageTemperature` AS `SamplePlate_storageTemperature`,
        `Experiment`.`experimentId` AS `Experiment_experimentId`,
        `Experiment`.`sessionId` AS `Experiment_sessionId`,
        `Experiment`.`proposalId` AS `Experiment_proposalId`,
        `Experiment`.`name` AS `Experiment_name`,
        `Experiment`.`creationDate` AS `Experiment_creationDate`,
        `Experiment`.`experimentType` AS `Experiment_experimentType`,
        `Experiment`.`sourceFilePath` AS `Experiment_sourceFilePath`,
        `Experiment`.`dataAcquisitionFilePath` AS `Experiment_dataAcquisitionFilePath`,
        `Experiment`.`status` AS `Experiment_status`,
        `Experiment`.`comments` AS `Experiment_comments`,
        `Measurement`.`priorityLevelId` AS `Measurement_priorityLevelId`,
        `Measurement`.`exposureTemperature` AS `Measurement_exposureTemperature`,
        `Measurement`.`viscosity` AS `Measurement_viscosity`,
        `Measurement`.`flow` AS `Measurement_flow`,
        `Measurement`.`extraFlowTime` AS `Measurement_extraFlowTime`,
        `Measurement`.`volumeToLoad` AS `Measurement_volumeToLoad`,
        `Measurement`.`waitTime` AS `Measurement_waitTime`,
        `Measurement`.`transmission` AS `Measurement_transmission`,
        `Measurement`.`comments` AS `Measurement_comments`,
        `Run`.`runId` AS `Run_runId`,
        `Run`.`timePerFrame` AS `Run_timePerFrame`,
        `Run`.`timeStart` AS `Run_timeStart`,
        `Run`.`timeEnd` AS `Run_timeEnd`,
        `Run`.`storageTemperature` AS `Run_storageTemperature`,
        `Run`.`exposureTemperature` AS `Run_exposureTemperature`,
        `Run`.`spectrophotometer` AS `Run_spectrophotometer`,
        `Run`.`energy` AS `Run_energy`,
        `Run`.`creationDate` AS `Run_creationDate`,
        `Run`.`frameAverage` AS `Run_frameAverage`,
        `Run`.`frameCount` AS `Run_frameCount`,
        `Run`.`transmission` AS `Run_transmission`,
        `Run`.`beamCenterX` AS `Run_beamCenterX`,
        `Run`.`beamCenterY` AS `Run_beamCenterY`,
        `Run`.`pixelSizeX` AS `Run_pixelSizeX`,
        `Run`.`pixelSizeY` AS `Run_pixelSizeY`,
        `Run`.`radiationRelative` AS `Run_radiationRelative`,
        `Run`.`radiationAbsolute` AS `Run_radiationAbsolute`,
        `Run`.`normalization` AS `Run_normalization`,
        `Merge`.`mergeId` AS `Merge_mergeId`,
        `Merge`.`measurementId` AS `Merge_measurementId`,
        `Merge`.`frameListId` AS `Merge_frameListId`,
        `Merge`.`discardedFrameNameList` AS `Merge_discardedFrameNameList`,
        `Merge`.`averageFilePath` AS `Merge_averageFilePath`,
        `Merge`.`framesCount` AS `Merge_framesCount`,
        `Merge`.`framesMerge` AS `Merge_framesMerge`,
        `Merge`.`creationDate` AS `Merge_creationDate`,
        `Subtraction`.`dataCollectionId` AS `Subtraction_dataCollectionId`,
        `Subtraction`.`rg` AS `Subtraction_rg`,
        `Subtraction`.`rgStdev` AS `Subtraction_rgStdev`,
        `Subtraction`.`I0` AS `Subtraction_I0`,
        `Subtraction`.`I0Stdev` AS `Subtraction_I0Stdev`,
        `Subtraction`.`firstPointUsed` AS `Subtraction_firstPointUsed`,
        `Subtraction`.`lastPointUsed` AS `Subtraction_lastPointUsed`,
        `Subtraction`.`quality` AS `Subtraction_quality`,
        `Subtraction`.`isagregated` AS `Subtraction_isagregated`,
        `Subtraction`.`concentration` AS `Subtraction_concentration`,
        `Subtraction`.`gnomFilePath` AS `Subtraction_gnomFilePath`,
        `Subtraction`.`rgGuinier` AS `Subtraction_rgGuinier`,
        `Subtraction`.`rgGnom` AS `Subtraction_rgGnom`,
        `Subtraction`.`dmax` AS `Subtraction_dmax`,
        `Subtraction`.`total` AS `Subtraction_total`,
        `Subtraction`.`volume` AS `Subtraction_volume`,
        `Subtraction`.`creationTime` AS `Subtraction_creationTime`,
        `Subtraction`.`kratkyFilePath` AS `Subtraction_kratkyFilePath`,
        `Subtraction`.`scatteringFilePath` AS `Subtraction_scatteringFilePath`,
        `Subtraction`.`guinierFilePath` AS `Subtraction_guinierFilePath`,
        `Subtraction`.`substractedFilePath` AS `Subtraction_substractedFilePath`,
        `Subtraction`.`gnomFilePathOutput` AS `Subtraction_gnomFilePathOutput`,
        `Subtraction`.`sampleOneDimensionalFiles` AS `Subtraction_sampleOneDimensionalFiles`,
        `Subtraction`.`bufferOnedimensionalFiles` AS `Subtraction_bufferOnedimensionalFiles`,
        `Subtraction`.`sampleAverageFilePath` AS `Subtraction_sampleAverageFilePath`,
        `Subtraction`.`bufferAverageFilePath` AS `Subtraction_bufferAverageFilePath`
    FROM
        ((((((((((`Experiment`
        LEFT JOIN `Specimen` ON ((`Specimen`.`experimentId` = `Experiment`.`experimentId`)))
        LEFT JOIN `Measurement` ON ((`Measurement`.`specimenId` = `Specimen`.`specimenId`)))
        LEFT JOIN `MeasurementToDataCollection` ON ((`MeasurementToDataCollection`.`measurementId` = `Measurement`.`measurementId`)))
        LEFT JOIN `Macromolecule` ON ((`Macromolecule`.`macromoleculeId` = `Specimen`.`macromoleculeId`)))
        LEFT JOIN `Buffer` ON ((`Buffer`.`bufferId` = `Specimen`.`bufferId`)))
        LEFT JOIN `SamplePlatePosition` ON ((`SamplePlatePosition`.`samplePlatePositionId` = `Specimen`.`samplePlatePositionId`)))
        LEFT JOIN `SamplePlate` ON ((`SamplePlate`.`samplePlateId` = `SamplePlatePosition`.`samplePlateId`)))
        LEFT JOIN `Run` ON ((`Run`.`runId` = `Measurement`.`runId`)))
        LEFT JOIN `Merge` ON ((`Merge`.`measurementId` = `Measurement`.`measurementId`)))
        LEFT JOIN `Subtraction` ON ((`Subtraction`.`dataCollectionId` = `MeasurementToDataCollection`.`dataCollectionId`)));

        
update SchemaStatus set schemaStatus = 'DONE' where scriptName = '2017_07_07_SAXS_datacollection.sql';