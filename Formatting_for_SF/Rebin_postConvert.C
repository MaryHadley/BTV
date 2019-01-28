#include "TFile.h"
#include "TString.h"
#include "TH1F.h"

using namespace std;

bool DEBUG = false;

// TString folder = "May9-2018";
// TString dataJPcalib = "";
// vector<TString> sys = {"","_JES","_NTRACKS","_BFRAG","_CFRAG","_CD","_K0L","_PU"};

TString folder = "May17-2018";
TString dataJPcalib = "_dataUseMCJPcalib";
vector<TString> sys = {"","_JES","_NTRACKS","_BFRAG","_CFRAG","_CD","_K0L","_PU"};

void Rebin_postConvert(TString fin, TString var, TString WP, TString pt1low,TString pt1high, TString pt2low, TString pt2high){
		
	system("mkdir -vp SFtemplates/"+folder+"/ADDBINNING/");
	system("cp -v SFtemplates/"+folder+"/"+fin+".root SFtemplates/"+folder+"/ADDBINNING/"+fin+"_ADDBINNING.root");

	TFile *fout = TFile::Open("SFtemplates/"+folder+"/ADDBINNING/"+fin+"_ADDBINNING.root","UPDATE");
	fout->cd();	
	
	TString DATAstr = "DATA";
	TString QCDstr = "QCDMuEnr";
	
	try{
		TH1D *test = (TH1D*)fout->Get("UNWEIGHTED__"+DATAstr+"__FatJet_"+var+"_DoubleB"+WP+"pass_pt"+pt1low+"to"+pt1high+"_data_opt");
		TH1D *testQCD = (TH1D*)fout->Get("UNWEIGHTED__"+QCDstr+"__FatJet_"+var+"_DoubleBH"+WP+"pass_pt"+pt1low+"to"+pt1high+"_bfromg_opt");
		}
	catch(exception& e){
		cout << "Something is wrong. Check if those pt bins exist! " << e.what() << endl;
		return;
		}

	vector<TH1D*> h;
	vector<TH1D*> h_;	

	vector<TString> ud = {"up","down"};
	vector<TString> flavor = {"data","bfromg","b","cfromg","c","l","b_cfromg","c_l","b_cfromg_c_l"};
	vector<TString> tag = {"all","DoubleB"+WP+"pass","DoubleB"+WP+"fail"};
	
	int i = 0;
	for(int iFl = 0; iFl < flavor.size() ; iFl++){
			
		for(int iSys = 0; iSys < sys.size() ; iSys++){

			for(int iUD =0; iUD < ud.size() ; iUD++){

				for(int itag =0; itag < tag.size() ; itag++){

					if(sys.at(iSys)==""){

						if(flavor.at(iFl)=="data") {

							if(DEBUG)cout << "	Adding pt350to2000 for :	" << tag.at(itag)<< " " << flavor.at(iFl)<< " " << sys.at(iSys) << endl;	
	
							h.push_back( (TH1D*)fout->Get("UNWEIGHTED__"+DATAstr+"__FatJet_"+var+"_"+tag.at(itag)+"_pt"+pt1low+"to"+pt1high+"_"+flavor.at(iFl)+"_opt"+sys.at(iSys) ) );
							h_.push_back( (TH1D*)fout->Get("UNWEIGHTED__"+DATAstr+"__FatJet_"+var+"_"+tag.at(itag)+"_pt"+pt2low+"to"+pt2high+"_"+flavor.at(iFl)+"_opt"+sys.at(iSys) ) );
							h.at(i)->Add(h_.at(i));
							h.at(i)->SetName("UNWEIGHTED__"+DATAstr+"__FatJet_"+var+"_"+tag.at(itag)+"_pt"+pt1low+"to"+pt2high+"_"+flavor.at(iFl)+"_opt"+sys.at(iSys) ) ;
							h.at(i)->SetTitle("");
							h.at(i)->Write();
							i++;
						
						}
						else{
							if(DEBUG)cout << "	Adding pt350to2000 for :	" << tag.at(itag)<< " " << flavor.at(iFl)<< " " << sys.at(iSys) << endl;	
	
							h.push_back( (TH1D*)fout->Get("UNWEIGHTED__"+QCDstr+"__FatJet_"+var+"_"+tag.at(itag)+"_pt"+pt1low+"to"+pt1high+"_"+flavor.at(iFl)+"_opt"+sys.at(iSys) ) );
							h_.push_back( (TH1D*)fout->Get("UNWEIGHTED__"+QCDstr+"__FatJet_"+var+"_"+tag.at(itag)+"_pt"+pt2low+"to"+pt2high+"_"+flavor.at(iFl)+"_opt"+sys.at(iSys) ) );
							h.at(i)->Add(h_.at(i));
							h.at(i)->SetName("UNWEIGHTED__"+QCDstr+"__FatJet_"+var+"_"+tag.at(itag)+"_pt"+pt1low+"to"+pt2high+"_"+flavor.at(iFl)+"_opt"+sys.at(iSys) ) ;
							h.at(i)->SetTitle("");
							h.at(i)->Write();
							i++;
						}
					
					}
					else{
						
						if(flavor.at(iFl)=="data") continue;

						if(DEBUG)cout << "	Adding pt350to2000 for :	" << tag.at(itag)<< " " << flavor.at(iFl)<< " " << sys.at(iSys)<< " " << ud.at(iUD) << endl;	
	
						h.push_back( (TH1D*)fout->Get("UNWEIGHTED__"+QCDstr+"__FatJet_"+var+"_"+tag.at(itag)+"_pt"+pt1low+"to"+pt1high+"_"+flavor.at(iFl)+"_opt"+sys.at(iSys)+ud.at(iUD) ) );
						h_.push_back( (TH1D*)fout->Get("UNWEIGHTED__"+QCDstr+"__FatJet_"+var+"_"+tag.at(itag)+"_pt"+pt2low+"to"+pt2high+"_"+flavor.at(iFl)+"_opt"+sys.at(iSys)+ud.at(iUD) ) );
						h.at(i)->Add(h_.at(i));
						h.at(i)->SetName("UNWEIGHTED__"+QCDstr+"__FatJet_"+var+"_"+tag.at(itag)+"_pt"+pt1low+"to"+pt2high+"_"+flavor.at(iFl)+"_opt"+sys.at(iSys)+ud.at(iUD) ) ;
						h.at(i)->SetTitle("");
						h.at(i)->Write();
						i++;
					}
					
					
				}
		
			}
		}
	}
	
	fout->Close();
	
}

void Rebin_postConvert(){

	vector<TString> WPs = {"H","M1","M2","L"};
	TString var;

	vector<TString> flavor_kScale {
			"",
			"_b_0p5",
			"_b_1p5",
			"_b_cfromg_0p5",
			"_b_cfromg_1p5",
			"_c_0p5",
			"_c_1p5",
			"_c_l_0p5",
			"_c_l_1p5",
			"_cfromg_0p5",
			"_cfromg_1p5",
			"_l_0p5",
			"_l_1p5",	
	};

	vector<TString> f;
	TString fname;
	
	for(int iWP; iWP<WPs.size();iWP++){

		fname = "Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v3_ptReweighted"+dataJPcalib+"_SysMerged_SFtemplates_DoubleB"+WPs.at(iWP);		
		for(int i=0; i<flavor_kScale.size(); i++) f.push_back(fname+flavor_kScale.at(i));

		for(int i=0; i<f.size();i++){
			cout << "Processing: " << f.at(i) << endl;	
			Rebin_postConvert(f.at(i),"JP",WPs.at(iWP),"350","450","450","2000");
		}
		cout << "Success " << endl;	
		f.clear();

		fname = "Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_JPhasSV_ptReweighted"+dataJPcalib+"_SysMerged_SFtemplates_DoubleB"+WPs.at(iWP);		
		for(int i=0; i<flavor_kScale.size(); i++) f.push_back(fname+flavor_kScale.at(i));

		for(int i=0; i<f.size();i++){
			cout << "Processing: " << f.at(i) << endl;	
			Rebin_postConvert(f.at(i),"JPhasSV",WPs.at(iWP),"350","450","450","2000");
		}
		cout << "Success " << endl;	
		f.clear();

		fname = "Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_JPnoSV_ptReweighted"+dataJPcalib+"_SysMerged_SFtemplates_DoubleB"+WPs.at(iWP);		
		for(int i=0; i<flavor_kScale.size(); i++) f.push_back(fname+flavor_kScale.at(i));

		for(int i=0; i<f.size();i++){
			cout << "Processing: " << f.at(i) << endl;	
			Rebin_postConvert(f.at(i),"JPnoSV",WPs.at(iWP),"350","450","450","2000");
		}
		cout << "Success " << endl;	
		f.clear();

		fname = "Run2017BCDEF_ReReco_QCDMuonEnriched_AK8Jet300orAK4Jet300_Pt350_Final_DoubleMuonTaggedFatJets_histograms_btagval_v4_SVmass_ptReweighted"+dataJPcalib+"_SysMerged_SFtemplates_DoubleB"+WPs.at(iWP);		
		for(int i=0; i<flavor_kScale.size(); i++) f.push_back(fname+flavor_kScale.at(i));

		for(int i=0; i<f.size();i++){
			cout << "Processing: " << f.at(i) << endl;	
			Rebin_postConvert(f.at(i),"tau1VertexMassCorr",WPs.at(iWP),"350","450","450","2000");
		}
		cout << "Success " << endl;	
		f.clear();

	}


	gApplication->Terminate();

}
