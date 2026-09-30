#set page(paper: "a4", flipped: true)
#import "@preview/mmdr:0.2.0": mermaid

#mermaid(
  "flowchart TD
    R[\"R - Praktický\"]
    I[\"I - Intelektuální\"]
    A[\"A - Umělecký\"]
    S[\"S - Sociální\"]
    E[\"E - Podnikavý\"]
    C(\"C - Organizační\")

    %% R - Praktický
    R --> R_eng[\"Strojírenství a technika\"]
    R --> R_agri[\"Zemědělství a příroda\"]
    R --> R_serv[\"Řemesla a služby\"]
    R_eng --> R_eng_mech[\"Mechanika a opravárenství\"]
    R_eng --> R_eng_elec[\"Elektrotechnika\"]
    R_eng --> R_eng_con[\"Stavebnictví\"]
    R_agri --> R_agri_farm[\"Zemědělská výroba\"]
    R_agri --> R_agri_for[\"Lesnictví\"]
    R_agri --> R_agri_hort[\"Zahradnictví\"]
    R_serv --> R_serv_cul[\"Gastronomie\"]
    R_serv --> R_serv_beauty[\"Péče o vzhled\"]
    R_serv --> R_serv_craft[\"Tradiční řemesla\"]

    %% I - Intelektuální
    I --> I_it[\"Informatika a technologie\"]
    I --> I_sci[\"Přírodní vědy\"]
    I --> I_health[\"Zdravotnictví (analytické)\"]
    I_it --> I_it_prog[\"Programování\"]
    I_it --> I_it_net[\"Sítě a systémy\"]
    I_it --> I_it_game[\"Herní průmysl\"]
    I_sci --> I_sci_chem[\"Chemie\"]
    I_sci --> I_sci_bio[\"Biologie\"]
    I_sci --> I_sci_phys[\"Fyzika a matematika\"]
    I_health --> I_health_lab[\"Laboratorní medicína\"]
    I_health --> I_health_tech[\"Zdravotnická technika\"]
    I_health --> I_health_nutri[\"Výživa a dietetika\"]

    %% A - Umělecký
    A --> A_vis[\"Vizuální umění\"]
    A --> A_perf[\"Scénické umění\"]
    A --> A_music[\"Hudba\"]
    A_vis --> A_vis_des[\"Design\"]
    A_vis --> A_vis_fine[\"Výtvarné umění\"]
    A_vis --> A_vis_photo[\"Fotografie a video\"]
    A_perf --> A_perf_the[\"Divadlo\"]
    A_perf --> A_perf_dance[\"Tanec\"]
    A_perf --> A_perf_ent[\"Zábavní průmysl\"]
    A_music --> A_music_perf[\"Hudební vystupování\"]
    A_music --> A_music_teach[\"Hudební pedagogika\"]
    A_music --> A_music_tech[\"Hudební technika\"]

    %% S - Sociální
    S --> S_edu[\"Pedagogika\"]
    S --> S_health[\"Zdravotnictví (pečující)\"]
    S --> S_soc[\"Sociální sféra\"]
    S_edu --> S_edu_pre[\"Předškolní pedagogika\"]
    S_edu --> S_edu_elem[\"Základní a střední vzdělávání\"]
    S_edu --> S_edu_leis[\"Zájmová pedagogika\"]
    S_health --> S_health_nurse[\"Ošetřovatelství\"]
    S_health --> S_health_ther[\"Terapeutické obory\"]
    S_health --> S_health_emerg[\"Urgentní péče\"]
    S_soc --> S_soc_care[\"Sociální péče\"]
    S_soc --> S_soc_couns[\"Poradenství\"]
    S_soc --> S_soc_dis[\"Práce s handicapovanými\"]

    %% E - Podnikavý
    E --> E_biz[\"Obchod a prodej\"]
    E --> E_mgmt[\"Management a řízení\"]
    E --> E_hosp[\"Pohostinství a cestovní ruch\"]
    E_biz --> E_biz_sales[\"Prodej\"]
    E_biz --> E_biz_retail[\"Maloobchod\"]
    E_biz --> E_biz_mkt[\"Marketing\"]
    E_mgmt --> E_mgmt_ops[\"Provozní management\"]
    E_mgmt --> E_mgmt_proj[\"Projektové řízení\"]
    E_mgmt --> E_mgmt_hr[\"Personalistika\"]
    E_hosp --> E_hosp_hotel[\"Hotelnictví\"]
    E_hosp --> E_hosp_tour[\"Cestovní ruch\"]
    E_hosp --> E_hosp_cat[\"Stravovací služby\"]

    %% C - Organizační
    C --> C_admin(\"Administrativa a kancelář\")
    C --> C_fin(\"Finance a účetnictví\")
    C --> C_log(\"Logistika a skladování\")
    C_admin --> C_admin_off[\"Kancelářská práce\"]
    C_admin --> C_admin_data[\"Správa dat\"]
    C_admin --> C_admin_doc[\"Dokumentace\"]
    C_fin --> C_fin_acc[\"Účetnictví\"]
    C_fin --> C_fin_bank[\"Bankovnictví\"]
    C_fin --> C_fin_ins[\"Pojišťovnictví\"]
    C_log --> C_log_wh[\"Skladové hospodářství\"]
    C_log --> C_log_trans[\"Přeprava a distribuce\"]
    C_log --> C_log_plan[\"Plánování a nákup\"]

    classDef typeR fill:#ef4444,color:#fff,stroke:#333
    classDef typeI fill:#8b5cf6,color:#fff,stroke:#333
    classDef typeA fill:#ec4899,color:#fff,stroke:#333
    classDef typeS fill:#10b981,color:#fff,stroke:#333
    classDef typeE fill:#f59e0b,color:#fff,stroke:#333
    classDef typeC fill:#3b82f6,color:#fff,stroke:#333

    class R,R_eng,R_agri,R_serv,R_eng_mech,R_eng_elec,R_eng_con,R_agri_farm,R_agri_for,R_agri_hort,R_serv_cul,R_serv_beauty,R_serv_craft typeR
    class I,I_it,I_sci,I_health,I_it_prog,I_it_net,I_it_game,I_sci_chem,I_sci_bio,I_sci_phys,I_health_lab,I_health_tech,I_health_nutri typeI
    class A,A_vis,A_perf,A_music,A_vis_des,A_vis_fine,A_vis_photo,A_perf_the,A_perf_dance,A_perf_ent,A_music_perf,A_music_teach,A_music_tech typeA
    class S,S_edu,S_health,S_soc,S_edu_pre,S_edu_elem,S_edu_leis,S_health_nurse,S_health_ther,S_health_emerg,S_soc_care,S_soc_couns,S_soc_dis typeS
    class E,E_biz,E_mgmt,E_hosp,E_biz_sales,E_biz_retail,E_biz_mkt,E_mgmt_ops,E_mgmt_proj,E_mgmt_hr,E_hosp_hotel,E_hosp_tour,E_hosp_cat typeE
    class C,C_admin,C_fin,C_log,C_admin_off,C_admin_data,C_admin_doc,C_fin_acc,C_fin_bank,C_fin_ins,C_log_wh,C_log_trans,C_log_plan typeC
  ",
  base-theme: "default",
  theme: (
    font_size: 35,
    background: "#ffffff",
    primary_color: "#ff0000",
  ),
  layout: (
    node_spacing: 50,
    rank_spacing: 0,
  ),
)
