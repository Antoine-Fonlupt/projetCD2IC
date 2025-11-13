#!/bin/ksh
# This script was generated Thu Nov 13 17:18:24 2025 by:
#
# Program: /comelec/softs/opt/Cadence/releases/EXT15.27/tools.lnx86/extraction/bin/64bit//RCXspice
# Version: 15.2.0
# Created: Fri May 15 16:43:23 EST 2015
#
#/comelec/softs/opt/Cadence/releases/EXT15.27/tools.lnx86/extraction/bin/64bit//RCXspice \
#	-techdir \
#	/comelec/softs/opt/opus_kits/CADENCE_PDKS/gpdk045_v_4_0/qrc/typical \
#	-newlvs \
#	/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF.xcn \
#	-assura_run_dir \
#	/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS \
#	-assura_run_name TSPCFF -rcxdir \
#	/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF \
#	-type full -temperature 25.0 -tempdir \
#	/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF/rcx_temp \
#	-sub_node_char # -res_models no -parasitic_res_models comment \
#	-parasitic_cap_models yes -output_net_name_space schematic \
#	-output_hierarchy_delimiter / -output \
#	/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/TSPCFF.sp \
#	-net_name_space layout -minR 0.001 -max_merged_via_size auto \
#	-max_fracture_length infinite -macro_cell -m_factorR infinite \
#	-lvs_source assura -ignore_gate_diffusion_fringing_cap \
#	-hierarchy_delimiter / -fracture_length_units MICRONS -extract res \
#	-device_finger_delimiter @ -cap_models no -array_vias_spacing auto \
#	-xref \
#	/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF/TSPCFF.gnx,/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF/TSPCFF.gdx
set -e
set -v
##=======================================================
##ADD_EXPLICIT_VIAS=N
##ADD_BULK_TERMINAL=N
##AGDS_FILE=/dev/null
##AGDS_LAYER_MAP_FILE=/dev/null
##HCCI_DEV_PROP_FILE=/dev/null
##AGDS_SPICE_FILE=/dev/null
##AGDS_TEXT_LAYERS=
##ARRAY_VIAS_SPACING=
##ASSURA_RUN_DIR=/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS
##ASSURA_RUN_NAME=TSPCFF
##BLACK_BOX_CELLS=/dev/null
##BREAK_WIDTH=
##CAP_COUPLING_FACTOR=1.0
##CAP_EXTRACT_MODE=decoupled
##CAP_GROUND=gnd!
##CAP_MODELS=no
##DANGLINGR=N
##DENSITY_CHECK_METHOD=P
##DELETE_OUTPUT_FILE=N
##DEVICE_FINGER_DELIMITER='@'
##DF2=N
##DRACULA_RUN_DIR=
##DRACULA_RUN_NAME=
##ENABLESENSITIVITYEXTRACTION=N
##EXCLUDE_FLOAT_LIMIT=
##EXCLUDE_FLOAT_DECOPULING_FACTOR=
##EXCLUDE_FLOATING_NETS=N
##EXCLUDE_NETS_REDUCERC=/dev/null
##EXCLUDE_SELF_CAPS=N
##IGNORE_GATE_DIFFUSION_FRINGING_CAP=Y
##EXTRACT=res
##EXTRACT_MOS_DIFFUSION_AP=N
##EXTRACT_MOS_DIFFUSION_HIGH=
##EXTRACT_MOS_DIFFUSION_RES=N
##FILTER_SIZE=2.0
##FIXED_NETS_FILE=/dev/null
##FMAX=
##FRACTURE_LENGTH_UNITS=MICRONS
##FREQUENCY_FILE=/dev/null
##GROUND_NETS=
##GROUND_NETS_FILE=/dev/null
##GROUND_SUBSTRATE_FLOATING_NETS=N
##HCCI_DEV_PROP=7
##HCCI_INST_PROP=6
##HCCI_NET_PROP=5
##HCCI_RULE_FILE=
##HCCI_RUN_DIR=
##HCCI_RUN_NAME=
##HEADER_FILE=/dev/null
##HIERARCHY_DELIMITER='/'
##OUTPUT_HIERARCHY_DELIMITER='/'
##HRCX_CELLS_FILE=/dev/null
##IMPORT_GLOBALS=Y
##LADDER_NETWORK=N
##LVS_SOURCE=assura
##M_FACTORR=infinite
##M_FACTORW=N
##MACRO_CELL=Y
##MAX_FRACTURE_LENGTH=infinite
##MAX_SIGNALS=
##MERGE_PARALLEL_R=N
##MINC=
##MINC_BY_PERCENTAGE=
##MINR=0.001
##NET_NAME_SPACE=layout
##NETS_FILE=/dev/null
##OUTPUT=/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/TSPCFF.sp
##OUTPUT_NET_NAME_SPACE=schematic
##PARASITIC_BLOCKING_DEVICE_CELLS_TYPEgray
##PARASITIC_CAP_MODELS=yes
##PARASITIC_RES_MODELS=comment
##PARASITIC_RES_LENGTH=N
##PARASITIC_RES_WIDTH=N
##PARASITIC_RES_WIDTH_DRAWN=N
##PARASITIC_RES_UNIT=N
##PARTIAL_CAP_BLOCKING=N
##PEEC=N
##PIN_ORDER_FILE=/dev/null
##PIPE_ADVGEN=
##PIPE_SPICE2DB=
##POWER_NETS=
##POWER_NETS_FILE=/dev/null
##RC_FREQUENCY=
##RCXDIR=/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF
##RCXFS_HIGH=N
##RCXFS_NETS_FILE=/dev/null
##RCXFS_TYPE=none
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_CUTOFF_DISTANCE=
##RCXFS_VIA_OFF=N
##REDUCERC=N
##REGION_LIMIT=
##RES_MODELS=no
##RISE_TIME=
##SAVE_FILL_SHAPES=N
##SINGLE_CAP_EDSPF=N
##SHOW_DIODES=N
##SKIN_FREQUENCY=
##SPEF=N
##SPEF_UNITS=
##SPLIT_PINS=N
##FORCE_SUBCELL_PIN_ORDERS=N
##SPLIT_PINS_DISTANCE=
##SUB_NODE_CHAR='#'
##SUBSTRATE_PROFILE=/dev/null
##SUBSTRATE_STAMPING_OFF=N
##TEMPDIR=/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF/rcx_temp
##TEMPERATURE=25.0
##TYPE=full
##USER_REGION=/dev/null
##VARIANT_CELL_FILE=/dev/null
##VIA_EFFECT_OFF=N
##VIRTUAL_FILL=
##XREF=/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF/TSPCFF.gnx,/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF/TSPCFF.gdx
##XY_COORDINATES=
##=======================================================

CASE_SENSITIVE=TRUE
export CASE_SENSITIVE
QRC_MOS_LW_PRECISION=y
export QRC_MOS_LW_PRECISION
TEMPDIR=`setTempDir /cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF/rcx_temp`
export TEMPDIR
DEVICE_FINGER_DELIMITER='@'
HIERARCHY_DELIMITER='/'
OUTPUT_HIERARCHY_DELIMITER='/'
cd /cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF
cat <<ENDCAT> caps2dversion
* caps2d version: 10
ENDCAT
cat <<ENDCAT> flattransUnit.info
meters
ENDCAT
QRC=Y
export QRC
cat <<ENDCAT> topcellxcn.info
/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF.xcn
ENDCAT

#==========================================================#
# Generate RCX input data from Assura LVS database
#==========================================================#

GOALIE2DIR=/comelec/softs/opt/Cadence/releases/EXT15.27/tools.lnx86/extraction/bin
export GOALIE2DIR
vdbToRcx /cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS \
	TSPCFF -unit meters -mFactorR -- -V1 -H satfile -r \
	/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF.xcn \
	-add0_net gnd! -xgl
GOALIE2DIR=/comelec/softs/opt/Cadence/releases/EXT15.27/tools.lnx86/extraction/bin/64bit/
export GOALIE2DIR

#==========================================================#
# Calculate erosion tables for specified process layers
#==========================================================#

createEmptyLayer metal10_conn
densitymap -V -TC -O metal10_conn.den metal10_conn_tile_spec metal10_conn
createEmptyLayer metal9_conn
densitymap -V -TC -O metal9_conn.den metal9_conn_tile_spec metal9_conn
createEmptyLayer metal8_conn
densitymap -V -TC -O metal8_conn.den metal8_conn_tile_spec metal8_conn
createEmptyLayer metal7_conn
densitymap -V -TC -O metal7_conn.den metal7_conn_tile_spec metal7_conn
createEmptyLayer metal6_conn
densitymap -V -TC -O metal6_conn.den metal6_conn_tile_spec metal6_conn
createEmptyLayer metal5_conn
densitymap -V -TC -O metal5_conn.den metal5_conn_tile_spec metal5_conn
createEmptyLayer metal4_conn
densitymap -V -TC -O metal4_conn.den metal4_conn_tile_spec metal4_conn
createEmptyLayer metal3_conn
densitymap -V -TC -O metal3_conn.den metal3_conn_tile_spec metal3_conn
createEmptyLayer metal2_conn
densitymap -V -TC -O metal2_conn.den metal2_conn_tile_spec metal2_conn
densitymap -V -TC -O metal1_conn.den metal1_conn_tile_spec metal1_conn
geom _nmos1v_MOS_2 ndiff_conn - _nmos1v_MOS_2,10,i,1
geom _pmos1v_MOS_10 pdiff_conn - _pmos1v_MOS_10,10,i,1

#==========================================================#
# Generate power list
#==========================================================#

cat global.net > power_list

#==========================================================#
# Ensure vias do not extend beyond routing
#==========================================================#

geom -V cont_poly metal1_conn poly_conn - cont_poly,111,i,2
geom -V cont_pdiff metal1_conn pdiff_conn - cont_pdiff_metal1_conn_pdiff_conn,111,i,2
geom -V cont_ndiff metal1_conn ndiff_conn - cont_ndiff_metal1_conn_ndiff_conn,111,i,2
geom -V ptap pdiff_conn - ptap_pdiff_conn_ovia,11,i,1
geom -V pwell ptap - pwell_ptap_ovia,11,i,1
geom -V ntap ndiff_conn - ntap_ndiff_conn_ovia,11,i,1
geom -V nwell_conn ntap - nwell_conn_ntap_ovia,11,i,1

#==========================================================#
# Flatten net file, routing, via and device layers
#==========================================================#

SAVEDIR=`beginFlattenInputs`
export SAVEDIR
/bin/mv -f NET h_NET
flatnet -V -li -h '/' h_NET NET
netprint -V -N1 power_list:power_list_nums NET
flattenTransistorData _nmos1v_MOS_2 meters
flattenTransistorData _pmos1v_MOS_10 meters
flattenLayers -m metal1_conn poly_conn ndiff_conn pdiff_conn nwell_conn \
	cont_poly cont_pdiff_metal1_conn_pdiff_conn \
	cont_ndiff_metal1_conn_ndiff_conn ptap_pdiff_conn_ovia ptap \
	pwell_ptap_ovia pwell ntap_ndiff_conn_ovia ntap nwell_conn_ntap_ovia \
	cont_pdiff cont_ndiff
endFlattenInputs
reconnect -float floatlvsnetsfile -tf _nmos1v_MOS_2,_pmos1v_MOS_10 -probe \
	metal1_conn_pintext:metal1_conn:metal1_conn_pintext_fvia
geom _nmos1v_MOS_2,_pmos1v_MOS_10 - qrcgate,1,i,1

#==========================================================#
# Generate layer map file for resistance extraction
#==========================================================#

cat <<ENDCAT> p2elayermapfile
metal1_conn p_rmetal1_conn,np_rmetal1_conn
poly_conn p_rpoly_conn,np_rpoly_conn
ENDCAT
iprint -imerge power_list_nums floatlvsnetsfile power_list_nums2
mv power_list_nums power_list_nums_orig
cp power_list_nums2 power_list_nums 

#==========================================================#
# Segregate interconnect into resistive and non-resistive
#==========================================================#

selectNetsByNumber power_list_nums metal1_conn p_rmetal1_conn np_rmetal1_conn
selectNetsByNumber power_list_nums ndiff_conn p_rndiff_conn np_rndiff_conn
selectNetsByNumber power_list_nums ntap p_rntap np_rntap
selectNetsByNumber power_list_nums nwell_conn p_rnwell_conn np_rnwell_conn
selectNetsByNumber power_list_nums pdiff_conn p_rpdiff_conn np_rpdiff_conn
selectNetsByNumber power_list_nums poly_conn p_rpoly_conn np_rpoly_conn
selectNetsByNumber power_list_nums ptap p_rptap np_rptap
selectNetsByNumber power_list_nums pwell p_rpwell np_rpwell
selectNetsByNumber power_list_nums cont_poly p_rcont_poly np_rcont_poly
mv power_list_nums_orig power_list_nums

#==========================================================#
# Create resistor cut regions between resistive
# interconnect levels
#==========================================================#

mergevia -V -tech \
	/comelec/softs/opt/opus_kits/CADENCE_PDKS/gpdk045_v_4_0/qrc/typical \
	-cnt np_rcont_poly rcont_poly - np_rmetal1_conn np_rpoly_conn

#==========================================================#
# Create resistive interconnect MOSFET terminals
#==========================================================#

createNRMosfetGateTerminal _nmos1v_MOS_2 np_rpoly_conn _nmos1v_MOS_2_mgvia
createNRMosfetGateTerminal _pmos1v_MOS_10 np_rpoly_conn _pmos1v_MOS_10_mgvia

#==========================================================#
# Assign net numbers to cut regions
#==========================================================#

connect -V -relocate NET np_rndiff_conn:np_rndiff_conn.conn \
	np_rpdiff_conn:np_rpdiff_conn.conn np_rntap:np_rntap.conn \
	np_rnwell_conn:np_rnwell_conn.conn np_rptap:np_rptap.conn \
	np_rpwell:np_rpwell.conn rcont_poly _nmos1v_MOS_2_mgvia \
	_pmos1v_MOS_10_mgvia - ntap_ndiff_conn_ovia,3,1 \
	nwell_conn_ntap_ovia,4,3 ptap_pdiff_conn_ovia,5,2 pwell_ptap_ovia,6,5 \
	-

#==========================================================#
# Assign net numbers to resistor vias
#==========================================================#

geom -V cont_ndiff_metal1_conn_ndiff_conn np_rndiff_conn.conn - tmp_rcont_ndiff_metal1_conn_ndiff_conn,11,i,2
mergevia -V -i -tech \
	/comelec/softs/opt/opus_kits/CADENCE_PDKS/gpdk045_v_4_0/qrc/typical \
	-cnt tmp_rcont_ndiff_metal1_conn_ndiff_conn \
	rcont_ndiff_metal1_conn_ndiff_conn - np_rmetal1_conn np_rndiff_conn
/bin/rm -f tmp_rcont_ndiff_metal1_conn_ndiff_conn
geom -V cont_pdiff_metal1_conn_pdiff_conn np_rpdiff_conn.conn - tmp_rcont_pdiff_metal1_conn_pdiff_conn,11,i,2
mergevia -V -i -tech \
	/comelec/softs/opt/opus_kits/CADENCE_PDKS/gpdk045_v_4_0/qrc/typical \
	-cnt tmp_rcont_pdiff_metal1_conn_pdiff_conn \
	rcont_pdiff_metal1_conn_pdiff_conn - np_rmetal1_conn np_rpdiff_conn
/bin/rm -f tmp_rcont_pdiff_metal1_conn_pdiff_conn

#==========================================================#
# Assign net numbers to nonresistive layers
#==========================================================#

epick -V -reo -e rcont_ndiff_metal1_conn_ndiff_conn -e \
	rcont_pdiff_metal1_conn_pdiff_conn np_rndiff_conn.conn tmp_ndiff_conn
epick -V -reo -e tmp_ndiff_conn -c np_rndiff_conn.conn tmp1_ndiff_conn
geom -V tmp1_ndiff_conn np_rndiff_conn - tmp1_ndiff_conn,11,i,2
geom -V tmp_ndiff_conn,tmp1_ndiff_conn - np_rndiff_conn,1,i,1
/bin/rm -f tmp_ndiff_conn tmp1_ndiff_conn
epick -V -reo -e rcont_ndiff_metal1_conn_ndiff_conn -e \
	rcont_pdiff_metal1_conn_pdiff_conn np_rnwell_conn.conn tmp_nwell_conn
epick -V -reo -e tmp_nwell_conn -c np_rnwell_conn.conn tmp1_nwell_conn
geom -V tmp1_nwell_conn np_rnwell_conn - tmp1_nwell_conn,11,i,2
geom -V tmp_nwell_conn,tmp1_nwell_conn - np_rnwell_conn,1,i,1
/bin/rm -f tmp_nwell_conn tmp1_nwell_conn
epick -V -reo -e rcont_ndiff_metal1_conn_ndiff_conn -e \
	rcont_pdiff_metal1_conn_pdiff_conn np_rpdiff_conn.conn tmp_pdiff_conn
epick -V -reo -e tmp_pdiff_conn -c np_rpdiff_conn.conn tmp1_pdiff_conn
geom -V tmp1_pdiff_conn np_rpdiff_conn - tmp1_pdiff_conn,11,i,2
geom -V tmp_pdiff_conn,tmp1_pdiff_conn - np_rpdiff_conn,1,i,1
/bin/rm -f tmp_pdiff_conn tmp1_pdiff_conn
epick -V -reo -e rcont_ndiff_metal1_conn_ndiff_conn -e \
	rcont_pdiff_metal1_conn_pdiff_conn np_rpwell.conn tmp_pwell
epick -V -reo -e tmp_pwell -c np_rpwell.conn tmp1_pwell
geom -V tmp1_pwell np_rpwell - tmp1_pwell,11,i,2
geom -V tmp_pwell,tmp1_pwell - np_rpwell,1,i,1
/bin/rm -f tmp_pwell tmp1_pwell

#==========================================================#
# Process text layers
#==========================================================#

flatlabel -V  -tc -F metal1_conn_pintext L1T0

#==========================================================#
# Parasitic R extraction with default precision
#==========================================================#

rex -V -m -pd -I'#' -tech \
	/comelec/softs/opt/opus_kits/CADENCE_PDKS/gpdk045_v_4_0/qrc/typical \
	-map p2elayermapfile -wee p2elayermapfile -N NET -Ply np_rpoly_conn \
	-er np_rmetal1_conn,metal1_conn.den -rP res.mod \
	np_rpoly_conn::poly_conn_cut::-0.003 \
	np_rmetal1_conn::metal1_conn_cut::s,w:0.06,0.06,0:0.06,0.08,0:0.06,0.09,0:0.06,0.13,0:0.06,0.16,0:0.06,0.19,0:0.06,0.26,0:0.06,0.38,0:0.06,0.5,0:0.06,0.63,0:0.06,0.83,0:0.06,1,0.01:0.06,1.5,0.01:0.06,3,0.01:0.06,4.05,0.01:0.08,0.06,0.01:0.08,0.08,0.01:0.08,0.09,0.01:0.08,0.13,0:0.08,0.16,0.01:0.08,0.19,0:0.08,0.26,0:0.08,0.38,0:0.08,0.5,0:0.08,0.63,0:0.08,0.83,0:0.08,1,0.01:0.08,1.5,0.01:0.08,3,0.01:0.08,4.05,0.01:0.09,0.06,0.01:0.09,0.08,0.01:0.09,0.09,0.01:0.09,0.13,0:0.09,0.16,0.01:0.09,0.19,0:0.09,0.26,0:0.09,0.38,0:0.09,0.5,0:0.09,0.63,0:0.09,0.83,0:0.09,1,0.01:0.09,1.5,0.01:0.09,3,0.01:0.09,4.05,0.01:0.13,0.06,0.01:0.13,0.08,0.01:0.13,0.09,0.01:0.13,0.13,0:0.13,0.16,0.01:0.13,0.19,0:0.13,0.26,0:0.13,0.38,0:0.13,0.5,0:0.13,0.63,0:0.13,0.83,0:0.13,1,0.01:0.13,1.5,0.01:0.13,3,0.01:0.13,4.05,0.01:0.16,0.06,0.01:0.16,0.08,0.01:0.16,0.09,0.01:0.16,0.13,0:0.16,0.16,0.01:0.16,0.19,0:0.16,0.26,0:0.16,0.38,0:0.16,0.5,0:0.16,0.63,0:0.16,0.83,0:0.16,1,0.01:0.16,1.5,0.01:0.16,3,0.01:0.16,4.05,0.01:0.19,0.06,0.02:0.19,0.08,0.01:0.19,0.09,0.01:0.19,0.13,0:0.19,0.16,0.01:0.19,0.19,0:0.19,0.26,0:0.19,0.38,0:0.19,0.5,0:0.19,0.63,0:0.19,0.83,0:0.19,1,0.01:0.19,1.5,0.01:0.19,3,0.01:0.19,4.05,0.01:0.26,0.06,0.02:0.26,0.08,0.01:0.26,0.09,0.01:0.26,0.13,0:0.26,0.16,0.01:0.26,0.19,0:0.26,0.26,0:0.26,0.38,0:0.26,0.5,0:0.26,0.63,0:0.26,0.83,0:0.26,1,0.01:0.26,1.5,0.01:0.26,3,0.01:0.26,4.05,0.01:0.38,0.06,0.02:0.38,0.08,0.01:0.38,0.09,0.01:0.38,0.13,0:0.38,0.16,0.01:0.38,0.19,0:0.38,0.26,0:0.38,0.38,0:0.38,0.5,0:0.38,0.63,0:0.38,0.83,0:0.38,1,0.01:0.38,1.5,0.01:0.38,3,0.01:0.38,4.05,0.01:0.63,0.06,0.02:0.63,0.08,0.01:0.63,0.09,0.01:0.63,0.13,0:0.63,0.16,0.01:0.63,0.19,0:0.63,0.26,0:0.63,0.38,0:0.63,0.5,0:0.63,0.63,0:0.63,0.83,0:0.63,1,0.01:0.63,1.5,0.01:0.63,3,0.01:0.63,4.05,0.01:0.83,0.06,0.02:0.83,0.08,0.01:0.83,0.09,0.01:0.83,0.13,0:0.83,0.16,0.01:0.83,0.19,0:0.83,0.26,0:0.83,0.38,0:0.83,0.5,0:0.83,0.63,0:0.83,0.83,0:0.83,1,0.01:0.83,1.5,0.01:0.83,3,0.01:0.83,4.05,0.01:1.5,0.06,0.02:1.5,0.08,0.01:1.5,0.09,0.01:1.5,0.13,0:1.5,0.16,0.01:1.5,0.19,0:1.5,0.26,0:1.5,0.38,0:1.5,0.5,0:1.5,0.63,0:1.5,0.83,0:1.5,1,0.01:1.5,1.5,0.01:1.5,3,0.01:1.5,4.05,0.01:3,0.06,0.02:3,0.08,0.01:3,0.09,0.01:3,0.13,0:3,0.16,0.01:3,0.19,0:3,0.26,0:3,0.38,0:3,0.5,0:3,0.63,0:3,0.83,0:3,1,0.01:3,1.5,0.01:3,3,0.01:3,4.05,0.01:5,0.06,0.02:5,0.08,0.01:5,0.09,0.01:5,0.13,0:5,0.16,0.01:5,0.19,0:5,0.26,0:5,0.38,0:5,0.5,0:5,0.63,0:5,0.83,0:5,1,0.01:5,1.5,0.01:5,3,0.01:5,4.05,0.01 \
	- rcont_ndiff_metal1_conn_ndiff_conn,2,t \
	rcont_pdiff_metal1_conn_pdiff_conn,2,t rcont_poly,1,2,t \
	_nmos1v_MOS_2_mgvia,1,z _pmos1v_MOS_10_mgvia,1,z - L1T0,2,I

#==========================================================#
# Combine power non-power
#==========================================================#

/bin/rm -f ndiff_conn
geom np_rndiff_conn,p_rndiff_conn - ndiff_conn,1,i,1
/bin/rm -f nwell_conn
geom np_rnwell_conn,p_rnwell_conn - nwell_conn,1,i,1
/bin/rm -f pdiff_conn
geom np_rpdiff_conn,p_rpdiff_conn - pdiff_conn,1,i,1
/bin/rm -f poly_conn
geom np_rpoly_conn,p_rpoly_conn - poly_conn,1,i,1
/bin/rm -f pwell
geom np_rpwell,p_rpwell - pwell,1,i,1

#==========================================================#
# Reconnect MOSFET devices
#==========================================================#

reconnect -V -n NET -s mwires.res -mf -t \
	_nmos1v_MOS_2.trans:_nmos1v_MOS_2.transr _nmos1v_MOS_2 \
	ndiff_conn,_nmos1v_MOS_2_mgvia,pwell -t \
	_pmos1v_MOS_10.trans:_pmos1v_MOS_10.transr _pmos1v_MOS_10 \
	pdiff_conn,_pmos1v_MOS_10_mgvia,nwell_conn
changeTransFileNameAP _nmos1v_MOS_2.trans _nmos1v_MOS_2.transr
changeTransFileNameAP _pmos1v_MOS_10.trans _pmos1v_MOS_10.transr

#==========================================================#
# Generate netlister data files
#==========================================================#

cat <<ENDCAT> lvsmos.mod
xg45n1svt,	100000.0, 0,	xg45n1svt,	unused, unused, 100000.0
g45n1svt,	100000.0, 0,	g45n1svt,	unused, unused, 100000.0
xg45p1svt,	100000.0, 0,	xg45p1svt,	unused, unused, 100000.0
g45p1svt,	100000.0, 0,	g45p1svt,	unused, unused, 100000.0
ENDCAT

#==========================================================#
# Perform RC reduction
#==========================================================#

xreduce -V -mergecap -n NET -tech \
	/comelec/softs/opt/opus_kits/CADENCE_PDKS/gpdk045_v_4_0/qrc/typical \
	-d1 -mfactorR infinite -decoupled -danglingR -minR 0.001 -rP \
	np_rpoly_conn.res,np_rmetal1_conn.res,mwires.res L1T0 \
	_nmos1v_MOS_2.transr _pmos1v_MOS_10.transr

#==========================================================#
# Generate HSPICE file
#==========================================================#

advgen -V -g0 -li -f -n -o HSPICE -TL L1T0 -add0_net gnd! -nxref \
	/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF/TSPCFF.gnx \
	-dxref \
	/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/LVS/TSPCFF/TSPCFF.gdx \
	-sc caps2dversion -rPm res.mod np_rpoly_conn.res np_rmetal1_conn.res \
	-rPm mwires.mod mwires.res -ta lvsmos.mod,_nmos1v_MOS_2.net \
	_nmos1v_MOS_2.transr -ta lvsmos.mod,_pmos1v_MOS_10.net \
	_pmos1v_MOS_10.transr - NET - \
	/cal/exterieurs/afonlupt-25/afonlupt/projetCD2IC/CDS_wk_dir2/TSPCFF.sp
