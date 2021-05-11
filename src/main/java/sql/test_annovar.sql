-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `annovar`
--

DROP TABLE IF EXISTS `annovar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `annovar` (
  `sample_id` int NOT NULL,
  `Chr` varchar(100) NOT NULL,
  `Start` varchar(100) NOT NULL,
  `End` varchar(100) NOT NULL,
  `Ref` varchar(100) NOT NULL,
  `Alt` varchar(100) NOT NULL,
  `Func.refGene` text,
  `Gene.refGene` text,
  `GeneDetail.refGene` text,
  `ExonicFunc.refGene` text,
  `AAChange.refGene` text,
  `cytoBand` text,
  `1000g2015aug_all` text,
  `1000g2015aug_afr` text,
  `1000g2015aug_amr` text,
  `1000g2015aug_eas` text,
  `1000g2015aug_eur` text,
  `1000g2015aug_sas` text,
  `ExAC_ALL` text,
  `ExAC_AFR` text,
  `ExAC_AMR` text,
  `ExAC_EAS` text,
  `ExAC_FIN` text,
  `ExAC_NFE` text,
  `ExAC_OTH` text,
  `ExAC_SAS` text,
  `avsnp150` text,
  `esp6500siv2_all` text,
  `esp6500siv2_ea` text,
  `esp6500siv2_aa` text,
  `gnomAD_exome_ALL` text,
  `gnomAD_exome_AFR` text,
  `gnomAD_exome_AMR` text,
  `gnomAD_exome_ASJ` text,
  `gnomAD_exome_EAS` text,
  `gnomAD_exome_FIN` text,
  `gnomAD_exome_NFE` text,
  `gnomAD_exome_OTH` text,
  `gnomAD_exome_SAS` text,
  `SIFT_score` text,
  `SIFT_converted_rankscore` text,
  `SIFT_pred` text,
  `Polyphen2_HDIV_score` text,
  `Polyphen2_HDIV_rankscore` text,
  `Polyphen2_HDIV_pred` text,
  `Polyphen2_HVAR_score` text,
  `Polyphen2_HVAR_rankscore` text,
  `Polyphen2_HVAR_pred` text,
  `LRT_score` text,
  `LRT_converted_rankscore` text,
  `LRT_pred` text,
  `MutationTaster_score` text,
  `MutationTaster_converted_rankscore` text,
  `MutationTaster_pred` text,
  `MutationAssessor_score` text,
  `MutationAssessor_score_rankscore` text,
  `MutationAssessor_pred` text,
  `FATHMM_score` text,
  `FATHMM_converted_rankscore` text,
  `FATHMM_pred` text,
  `PROVEAN_score` text,
  `PROVEAN_converted_rankscore` text,
  `PROVEAN_pred` text,
  `VEST3_score` text,
  `VEST3_rankscore` text,
  `MetaSVM_score` text,
  `MetaSVM_rankscore` text,
  `MetaSVM_pred` text,
  `MetaLR_score` text,
  `MetaLR_rankscore` text,
  `MetaLR_pred` text,
  `M-CAP_score` text,
  `M-CAP_rankscore` text,
  `M-CAP_pred` text,
  `REVEL_score` text,
  `REVEL_rankscore` text,
  `MutPred_score` text,
  `MutPred_rankscore` text,
  `CADD_raw` text,
  `CADD_raw_rankscore` text,
  `CADD_phred` text,
  `DANN_score` text,
  `DANN_rankscore` text,
  `fathmm-MKL_coding_score` text,
  `fathmm-MKL_coding_rankscore` text,
  `fathmm-MKL_coding_pred` text,
  `Eigen_coding_or_noncoding` text,
  `Eigen-raw` text,
  `Eigen-PC-raw` text,
  `GenoCanyon_score` text,
  `GenoCanyon_score_rankscore` text,
  `integrated_fitCons_score` text,
  `integrated_fitCons_score_rankscore` text,
  `integrated_confidence_value` text,
  `GERP++_RS` text,
  `GERP++_RS_rankscore` text,
  `phyloP100way_vertebrate` text,
  `phyloP100way_vertebrate_rankscore` text,
  `phyloP20way_mammalian` text,
  `phyloP20way_mammalian_rankscore` text,
  `phastCons100way_vertebrate` text,
  `phastCons100way_vertebrate_rankscore` text,
  `phastCons20way_mammalian` text,
  `phastCons20way_mammalian_rankscore` text,
  `SiPhy_29way_logOdds` text,
  `SiPhy_29way_logOdds_rankscore` text,
  `Interpro_domain` text,
  `GTEx_V6p_gene` text,
  `GTEx_V6p_tissue` text,
  `gnomAD_genome_ALL` text,
  `gnomAD_genome_AFR` text,
  `gnomAD_genome_AMR` text,
  `gnomAD_genome_ASJ` text,
  `gnomAD_genome_EAS` text,
  `gnomAD_genome_FIN` text,
  `gnomAD_genome_NFE` text,
  `gnomAD_genome_OTH` text,
  `CLNALLELEID` text,
  `CLNDN` text,
  `CLNDISDB` text,
  `CLNREVSTAT` text,
  `CLNSIG` text,
  `cosmic70` text,
  `ICGC_Id` text,
  `ICGC_Occurrence` text,
  `InterVar_automated` text,
  `PVS1` text,
  `PS1` text,
  `PS2` text,
  `PS3` text,
  `PS4` text,
  `PM1` text,
  `PM2` text,
  `PM3` text,
  `PM4` text,
  `PM5` text,
  `PM6` text,
  `PP1` text,
  `PP2` text,
  `PP3` text,
  `PP4` text,
  `PP5` text,
  `BA1` text,
  `BS1` text,
  `BS2` text,
  `BS3` text,
  `BS4` text,
  `BP1` text,
  `BP2` text,
  `BP3` text,
  `BP4` text,
  `BP5` text,
  `BP6` text,
  `BP7` text,
  `Otherinfo` text,
  PRIMARY KEY (`sample_id`,`Chr`,`Start`,`End`,`Ref`,`Alt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annovar`
--

LOCK TABLES `annovar` WRITE;
/*!40000 ALTER TABLE `annovar` DISABLE KEYS */;
/*!40000 ALTER TABLE `annovar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-05 15:30:18
