#!/bin/bash

################################################ May 10 - 2018

workDir=/afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/

fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v3_ptReweighted_dataUseMCJPcalib
python systematicsMerge.py -w $workDir -d rizki_systList_350_dataUseMCJPcalib.txt
mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root

fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v3_ptReweighted_dataUseMCJPcalib
python systematicsMerge.py -w $workDir -d rizki_systList_250_dataUseMCJPcalib.txt
mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root

fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_JPnoSV_ptReweighted_dataUseMCJPcalib
python systematicsMerge.py -w $workDir -d rizki_systList_350_JPnoSV_dataUseMCJPcalib.txt
mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root

fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_JPnoSV_ptReweighted_dataUseMCJPcalib
python systematicsMerge.py -w $workDir -d rizki_systList_250_JPnoSV_dataUseMCJPcalib.txt
mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root

fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_JPhasSV_ptReweighted_dataUseMCJPcalib
python systematicsMerge.py -w $workDir -d rizki_systList_350_JPhasSV_dataUseMCJPcalib.txt
mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root

fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_JPhasSV_ptReweighted_dataUseMCJPcalib
python systematicsMerge.py -w $workDir -d rizki_systList_250_JPhasSV_dataUseMCJPcalib.txt
mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root

fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_SVmass_ptReweighted_dataUseMCJPcalib
python systematicsMerge.py -w $workDir -d rizki_systList_350_SVmass_dataUseMCJPcalib.txt
mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root

fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_SVmass_ptReweighted_dataUseMCJPcalib
python systematicsMerge.py -w $workDir -d rizki_systList_250_SVmass_dataUseMCJPcalib.txt
mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root


################################################ Mar 27 - 2018

# workDir=/afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/

# fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_JPnoSV_ptReweighted
# # fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_JPnoSV_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_350_JPnoSV.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root
# 
# fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_JPnoSV_ptReweighted
# # fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_JPnoSV_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_250_JPnoSV.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root
# 
# fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_JPhasSV_ptReweighted
# # fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_JPhasSV_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_350_JPhasSV.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root
# 
# fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_JPhasSV_ptReweighted
# # fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_JPhasSV_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_250_JPhasSV.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root
# 
# fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_SVmass_ptReweighted
# # fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_SVmass_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_350_SVmass.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root
# 
# fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_SVmass_ptReweighted
# # fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_SVmass_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_250_SVmass.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root


################################################ Mar 22 - 2018

# workDir=/afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/
# 
# fname350=Run2017EF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v3_ptReweighted
# # fname350=Run2017EF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v3_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_350_EF.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root
# 
# fname250=Run2017EF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v3_ptReweighted
# # fname250=Run2017EF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v3_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_250_EF.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root
# 
# fname350=Run2017CDE_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v3_ptReweighted
# # fname350=Run2017CDE_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v3_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_350_CDE.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root
# 
# fname250=Run2017CDE_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v3_ptReweighted
# # fname250=Run2017CDE_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v3_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_250_CDE.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root
# 
# fname350=Run2017B_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v3_ptReweighted
# # fname350=Run2017B_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v3_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_350_B.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root
# 
# fname250=Run2017B_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v3_ptReweighted
# # fname250=Run2017B_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v3_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_250_B.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root


################################################ Mar 12 - 2018

# workDir=/afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/
# 
# fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_SVmass_ptReweighted
# # fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_SVmass_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_350.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root
# 
# fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_SVmass_ptReweighted
# # fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v4_SVmass_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_250.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root


################################################ Mar 12 - 2018

# workDir=/afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/
# 
# fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v3_ptReweighted
# # fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v3_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_350.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root
# 
# fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v3_ptReweighted
# # fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v3_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_250.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root

################################################

# workDir=/afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/
# 
# # fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v2_ptReweighted
# fname350=Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v2_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_350.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname350}_SysMerged.root
# 
# # fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v2_ptReweighted
# fname250=Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_v2_ptReweighted_dataUseMCJPcalib
# python systematicsMerge.py -w $workDir -d rizki_systList_250.txt
# mv -v $workDir/Final_histograms_sysMerged.root $workDir/${fname250}_SysMerged.root


################################################

# python systematicsMerge.py -w /afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/macros/ -d rizki_systList.txt

# python systematicsMerge.py -w /afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/ -d rizki_systList.txt
# mv -v /afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/Final_histograms_sysMerged.root /afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_SysMerged.root

# python systematicsMerge.py -w /afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/ -d rizki_systList.txt
# mv -v /afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/Final_histograms_sysMerged.root /afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/Run2017BCDEF_ReReco_QCDMuonEnriched_AK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v1_SysMerged.root

# python systematicsMerge.py -w /afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/ -d rizki_systList.txt
# mv -v /afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/Final_histograms_sysMerged.root /afs/cern.ch/user/r/rsyarif/workHere/HbbTagVal/Jan10-2018_CommSF_v1/CMSSW_9_4_1/src/RecoBTag/BTagValidation/BTV/results/plots_final/Run2017BCDEF_ReReco_QCDMuonEnriched_AK8DiJet170orAK4DiJet170_Pt250_Final_DoubleMuonTaggedFatJets_histograms_btagval_v2_SysMerged.root


################################################

# cp -v Mu_250_bfragdown_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_250_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_bfragdown_histograms_btagval.root
# cp -v Mu_250_bfragup_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_250_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_bfragup_histograms_btagval.root
# cp -v Mu_250_CD_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_250_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_CD_histograms_btagval.root
# cp -v Mu_250_cfrag_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_250_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_cfrag_histograms_btagval.root
# cp -v Mu_250_K0L_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_250_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_K0L_histograms_btagval.root
# # cp -v Mu_250_nTracks_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_250_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_nTracks_histograms_btagval.root
# cp -v Mu_250_nTracks_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_250_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_nTracks_ptReweighted_histograms_btagval.root
# cp -v Mu_250_puDown_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_250_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_puDown_histograms_btagval.root
# cp -v Mu_250_puUp_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_250_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_puUp_histograms_btagval.root
# 
# python systematicsMerge.py -w Mu_250_ptReweighted_merged/ -d rizki_systList.txt
# 
# cp -v Mu_350_bfragdown_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_350_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_bfragdown_histograms_btagval.root
# cp -v Mu_350_bfragup_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_350_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_bfragup_histograms_btagval.root
# cp -v Mu_350_CD_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_350_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_CD_histograms_btagval.root
# cp -v Mu_350_cfrag_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_350_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_cfrag_histograms_btagval.root
# cp -v Mu_350_K0L_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_350_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_K0L_histograms_btagval.root
# # cp -v Mu_350_nTracks_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_350_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_nTracks_histograms_btagval.root
# cp -v Mu_350_nTracks_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_350_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_nTracks_ptReweighted_histograms_btagval.root
# cp -v Mu_350_puDown_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_350_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_puDown_histograms_btagval.root
# cp -v Mu_350_puUp_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_histograms_btagval.root Mu_350_ptReweighted_merged/Final_DoubleMuonTaggedFatJets_MuonEnrichedJets_dataWithMCJP_puUp_histograms_btagval.root
# 
# python systematicsMerge.py -w Mu_350_ptReweighted_merged/ -d rizki_systList.txt


################################################

#python systematicsMerge.py -w Mu_250_dataJPcalib_merged/ -d rizki_systList.txt
#python systematicsMerge.py -w Mu_350_dataJPcalib_merged/ -d rizki_systList.txt


# python systematicsMerge.py -w Mu_250_noSlimmedTrees_run2016BtoF_merged/ -d rizki_systList.txt
# python systematicsMerge.py -w Mu_350_noSlimmedTrees_run2016BtoF_merged/ -d rizki_systList.txt

