cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  chronic-pulmonary-disease-charlson-primary-care-byssinosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-byssinosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  chronic-pulmonary-disease-charlson-primary-care-antiasthmatics---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-antiasthmatics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-byssinosis---primary/output
  interstitial-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: interstitial-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-antiasthmatics---primary/output
  chronic-pulmonary-disease-charlson-primary-care-selfmanagement---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-selfmanagement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: interstitial-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-asbestosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-asbestosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-selfmanagement---primary/output
  chronic-pulmonary-disease-charlson-primary-care-service---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-service---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-asbestosis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-worker---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-worker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-service---primary/output
  chronic-pulmonary-disease-charlson-primary-care-respiratory---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-respiratory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-worker---primary/output
  chronic-pulmonary-disease-charlson-primary-care-dissent---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-dissent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-respiratory---primary/output
  chronic-pulmonary-disease-charlson-primary-care-asthmaticu---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-asthmaticu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-dissent---primary/output
  chronic-pulmonary-disease-charlson-primary-care-fibrosing---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-fibrosing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-asthmaticu---primary/output
  chronic-pulmonary-disease-charlson-primary-care-theophylline---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-theophylline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-fibrosing---primary/output
  inorganic-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: inorganic-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-theophylline---primary/output
  chronic-pulmonary-disease-charlson-primary-care-compensatory---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-compensatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: inorganic-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-question---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-question---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-compensatory---primary/output
  chronic-pulmonary-disease-charlson-primary-care-obstruct---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-obstruct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-question---primary/output
  parietoalveolar-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: parietoalveolar-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-obstruct---primary/output
  chronic-pulmonary-disease-charlson-primary-care-farmer---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-farmer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: parietoalveolar-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-silicosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-silicosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-farmer---primary/output
  chronic-pulmonary-disease-charlson-primary-care-failure---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-failure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-silicosis---primary/output
  mucopurulent-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: mucopurulent-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-failure---primary/output
  chronic-pulmonary-disease-charlson-primary-care---primary:
    run: chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: mucopurulent-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-radiation---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-radiation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-tracheobronchitis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-tracheobronchitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-radiation---primary/output
  chronic-pulmonary-disease-charlson-primary-care-pneumonitis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-pneumonitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-tracheobronchitis---primary/output
  pneumopathy-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: pneumopathy-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-pneumonitis---primary/output
  perinatal-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: perinatal-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: pneumopathy-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-related---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-related---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: perinatal-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-pneumoconiosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-pneumoconiosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-related---primary/output
  recurrent-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: recurrent-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-pneumoconiosis---primary/output
  congenital-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: congenital-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: recurrent-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-condition---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-condition---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: congenital-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-emphysema---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-emphysema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-condition---primary/output
  chronic-pulmonary-disease-charlson-primary-care-causing---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-causing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-emphysema---primary/output
  chronic-pulmonary-disease-charlson-primary-care-flaxdressers'---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-flaxdressers'---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-causing---primary/output
  chronic-pulmonary-disease-charlson-primary-care-exacerbation---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-exacerbation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-flaxdressers'---primary/output
  intestinal-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: intestinal-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-exacerbation---primary/output
  fancier-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: fancier-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: intestinal-chronic-pulmonary-disease-charlson-primary-care---primary/output
  pleural-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: pleural-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: fancier-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-haemosiderosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-haemosiderosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: pleural-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-disturbing---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-disturbing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-haemosiderosis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-tuberculosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-tuberculosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-disturbing---primary/output
  chronic-pulmonary-disease-charlson-primary-care-bronchiectasis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-bronchiectasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-tuberculosis---primary/output
  rheumatoid-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: rheumatoid-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-bronchiectasis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-mediastinum---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-mediastinum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: rheumatoid-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-fistula---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-fistula---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-mediastinum---primary/output
  birdfancier-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: birdfancier-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-fistula---primary/output
  chronic-pulmonary-disease-charlson-primary-care-meconium---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-meconium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: birdfancier-chronic-pulmonary-disease-charlson-primary-care---primary/output
  wheezy-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: wheezy-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-meconium---primary/output
  chronic-pulmonary-disease-charlson-primary-care-manifestation---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-manifestation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: wheezy-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-attendance---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-attendance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-manifestation---primary/output
  plaque-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: plaque-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-attendance---primary/output
  chronic-pulmonary-disease-charlson-primary-care-appointment---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-appointment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: plaque-chronic-pulmonary-disease-charlson-primary-care---primary/output
  bullous-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: bullous-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-appointment---primary/output
  chronic-pulmonary-disease-charlson-primary-care-agent---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-agent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: bullous-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-cannabinosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-cannabinosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-agent---primary/output
  chronic-pulmonary-disease-charlson-primary-care-berylliosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-berylliosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-cannabinosis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-pneumonia---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-pneumonia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-berylliosis---primary/output
  unsuitable-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: unsuitable-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-pneumonia---primary/output
  chronic-pulmonary-disease-charlson-primary-care-congestion---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-congestion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: unsuitable-chronic-pulmonary-disease-charlson-primary-care---primary/output
  acute-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: acute-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-congestion---primary/output
  other-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: other-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: acute-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-abscess---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-abscess---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: other-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-reporting---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-reporting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-abscess---primary/output
  occasional-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: occasional-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-reporting---primary/output
  chemical-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: chemical-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: occasional-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-hypersensitivity---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-hypersensitivity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: chemical-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-doctor---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-doctor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-hypersensitivity---primary/output
  chronic-pulmonary-disease-charlson-primary-care-agreed---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-agreed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-doctor---primary/output
  chronic-pulmonary-disease-charlson-primary-care-frequency---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-frequency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-agreed---primary/output
  chronic-pulmonary-disease-charlson-primary-care-sequoiosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-sequoiosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-frequency---primary/output
  chronic-pulmonary-disease-charlson-primary-care-airway---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-airway---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-sequoiosis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-rescue---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-rescue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-airway---primary/output
  chronic-pulmonary-disease-charlson-primary-care-stannosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-stannosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-rescue---primary/output
  chronic-pulmonary-disease-charlson-primary-care-pneumothorax---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-pneumothorax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-stannosis---primary/output
  bronchial-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: bronchial-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-pneumothorax---primary/output
  chronic-pulmonary-disease-charlson-primary-care-confirmed---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-confirmed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: bronchial-chronic-pulmonary-disease-charlson-primary-care---primary/output
  massive-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: massive-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-confirmed---primary/output
  chronic-pulmonary-disease-charlson-primary-care-cirrhosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-cirrhosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: massive-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-hypostasis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-hypostasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-cirrhosis---primary/output
  mixed-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: mixed-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-hypostasis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-broncholithiasis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-broncholithiasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: mixed-chronic-pulmonary-disease-charlson-primary-care---primary/output
  hypostatic-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: hypostatic-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-broncholithiasis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-fever---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-fever---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: hypostatic-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-organising---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-organising---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-fever---primary/output
  chronic-pulmonary-disease-charlson-primary-care-pulmolithiasis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-pulmolithiasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-organising---primary/output
  chronic-pulmonary-disease-charlson-primary-care-pyothorax---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-pyothorax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-pulmolithiasis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-suberosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-suberosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-pyothorax---primary/output
  chronic-pulmonary-disease-charlson-primary-care-eosinophilia---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-eosinophilia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-suberosis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-obliteran---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-obliteran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-eosinophilia---primary/output
  clinical-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: clinical-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-obliteran---primary/output
  annual-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: annual-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: clinical-chronic-pulmonary-disease-charlson-primary-care---primary/output
  extrinsic-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: extrinsic-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: annual-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-followup---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-followup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: extrinsic-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-inhalation---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-inhalation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-followup---primary/output
  occupational-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: occupational-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-inhalation---primary/output
  cryptogenic-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: cryptogenic-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: occupational-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-number---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-number---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: cryptogenic-chronic-pulmonary-disease-charlson-primary-care---primary/output
  multiple-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: multiple-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-number---primary/output
  chronic-pulmonary-disease-charlson-primary-care-oedema---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-oedema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: multiple-chronic-pulmonary-disease-charlson-primary-care---primary/output
  chronic-pulmonary-disease-charlson-primary-care-druginduced---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-druginduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-oedema---primary/output
  chronic-pulmonary-disease-charlson-primary-care-unspecified---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-druginduced---primary/output
  chronic-pulmonary-disease-charlson-primary-care-silica---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-silica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-unspecified---primary/output
  chronic-pulmonary-disease-charlson-primary-care-visit---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-visit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-silica---primary/output
  chronic-pulmonary-disease-charlson-primary-care-empyema---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-empyema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-visit---primary/output
  chronic-pulmonary-disease-charlson-primary-care-alveolitis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-alveolitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-empyema---primary/output
  chronic-pulmonary-disease-charlson-primary-care-bronchiolitis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-bronchiolitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-alveolitis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-declined---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-declined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-bronchiolitis---primary/output
  chronic-pulmonary-disease-charlson-primary-care-emergency---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-emergency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-declined---primary/output
  chronic-pulmonary-disease-charlson-primary-care-given---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-given---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-emergency---primary/output
  chronic-pulmonary-disease-charlson-primary-care-leaflet---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-leaflet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-given---primary/output
  chronic-pulmonary-disease-charlson-primary-care-lung---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-lung---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-leaflet---primary/output
  chronic-pulmonary-disease-charlson-primary-care-pathway---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-pathway---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-lung---primary/output
  chronic-pulmonary-disease-charlson-primary-care-smoking---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-smoking---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-pathway---primary/output
  chronic-pulmonary-disease-charlson-primary-care-loeffler's---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-loeffler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-smoking---primary/output
  chronic-pulmonary-disease-charlson-primary-care-bagassosis---primary:
    run: chronic-pulmonary-disease-charlson-primary-care-bagassosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-loeffler's---primary/output
  simple-chronic-pulmonary-disease-charlson-primary-care---primary:
    run: simple-chronic-pulmonary-disease-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-charlson-primary-care-bagassosis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: simple-chronic-pulmonary-disease-charlson-primary-care---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
