require 'csv'
require 'open-uri'

Filter.destroy_all
Product.destroy_all

puts "Generating filters and pictures (spanish)..."

img_1 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808616/Filtros%20%28pictures%29/richard-catabay-05kHY7AYCp8-unsplash_ijecsa.jpg')
img_2 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808615/Filtros%20%28pictures%29/national-cancer-institute-KrsoedfRAf4-unsplash_awd3et.jpg')
img_3 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808615/Filtros%20%28pictures%29/rsz_national-cancer-institute-c6rgp7k5rxc-unsplash_eb6hyv.jpg')
img_4 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808613/Filtros%20%28pictures%29/piron-guillaume-y5hQCIn1c6o-unsplash_r1l3dy.jpg')
img_5 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808612/Filtros%20%28pictures%29/piron-guillaume-vNFHg0J0wRs-unsplash_nk8kkc.jpg')
img_6 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808611/Filtros%20%28pictures%29/rsz_1rsz_national-cancer-institute-j55tmqkzq4k-unsplash_opwqnc.jpg')
img_7 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808606/Filtros%20%28pictures%29/hush-naidoo-ZCO_5Y29s8k-unsplash_xmrymo.jpg')
img_8 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808606/Filtros%20%28pictures%29/artur-tumasjan-qLzWvcQq-V8-unsplash_vrzfa1.jpg')
img_9 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808605/Filtros%20%28pictures%29/piron-guillaume-U4FyCp3-KzY-unsplash_kipljg.jpg')
img_10 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808601/Filtros%20%28pictures%29/photo-1581595220892-b0739db3ba8c_fv4edp.jpg')
img_11 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808601/Filtros%20%28pictures%29/photo-1551884170-09fb70a3a2ed_pjf6c0.jpg')
img_12 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808600/Filtros%20%28pictures%29/natanael-melchor-43LwvC-eQPM-unsplash_axlydx.jpg')
img_13 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808600/Filtros%20%28pictures%29/photo-1575278617117-86484b220657_svtcc3.jpg')
img_14 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808598/Filtros%20%28pictures%29/h-shaw-ObI8mL772cI-unsplash_shjq51.jpg')
img_15 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808594/Filtros%20%28pictures%29/olga-guryanova-tMFeatBSS4s-unsplash_w0jshd.jpg')
img_16 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808584/Filtros%20%28pictures%29/photo-1593759281583-cdb22d636071_wfephh.jpg')
img_17 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600808584/Filtros%20%28pictures%29/photo-1588623358844-fd118c056dfc_vnmxjn.jpg')

images = [img_1, img_2, img_3, img_4, img_5, img_6, img_7, img_8, img_9, img_10, img_11, img_12, img_13, img_14, img_15, img_16, img_17]

filters_es = [
  "Filtro de Intercambio de calor y humedad (HMEF)",
  "Filtro Bacterial/Viral (BVF)",
  "Circuito Respiratorio",
  "Montaje de cateter",
  "Mascarilla anestesia",
  "Bolsa de respiración",
  "Resucitador",
  "Mascarilla CPAP",
  "Mascarilla CPR",
  "Mascarilla Nasal",
  "Conectores",
  "Mascarilla laríngea",
  "Vias respiratorias (Airway)",
  "Traqueotomía y Endotraqueal",
  "Tubo Endobronqueal (Lado izquierdo/derecho)",
  "Mascarilla Respiratoria",
  "Atomizador y Nabulizador"
]

filters_es.zip(images).each do |filter, img|
  filt = Filter.new(name: "#{filter}")
  filt.image.attach(io: img, filename: 'nes.png', content_type: 'image/png')
  filt.save!
end

puts "Generating products and photos (spanish)..."

pic_1 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809913/products%20%28pictures%29/1-HMEFLFM01_ier8ib.jpg')
pic_2 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809913/products%20%28pictures%29/2-HMEFHFM01_wcjbvo.jpg')
pic_3 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809914/products%20%28pictures%29/3-HMEFHFM02_wusyyj.jpg')
pic_4 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809915/products%20%28pictures%29/4-HMEFHFM03_ty0ya5.png')
pic_5 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809914/products%20%28pictures%29/5-HMEFHFM04_oykene.png')
pic_6 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809915/products%20%28pictures%29/6-HMEFHFM05_wd7buj.png')
pic_7 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809915/products%20%28pictures%29/7-BVFHFM01_vjtuv8.png')
pic_8 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809915/products%20%28pictures%29/8-BCEXM01_rjgphx.png')
pic_9 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809915/products%20%28pictures%29/9-BCCOM01_naatna.png')
pic_10 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809915/products%20%28pictures%29/10-BCCXM01_o6fq6g.png')
pic_11 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809915/products%20%28pictures%29/11-BCSMM01_zfqzcj.png')
pic_12 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809916/products%20%28pictures%29/12-BCWWM01_sin_orificio_-_BCWWM02_2_orificios_lq3u6e.png')
pic_13 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809916/products%20%28pictures%29/13-BCHWM01_simple_-_BCHWM02_doble_syqc2p.png')
pic_14 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809917/products%20%28pictures%29/14-FGIM01K_kit_-_FGIM01C_circuito_huutsn.png')
pic_15 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809917/products%20%28pictures%29/15-SCWTM01_skczvh.png')
pic_16 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809916/products%20%28pictures%29/16-CMM01_yux1ys.png')
pic_17 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809917/products%20%28pictures%29/17-SCAMM01_exnvxi.png')
pic_18 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809917/products%20%28pictures%29/18-AMPVCFM01_xawyku.png')
pic_19 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809917/products%20%28pictures%29/19-SAMM01_hwoqnf.png')
pic_20 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809917/products%20%28pictures%29/20-AMSTBM01_n9ndag.png')
pic_21 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809917/products%20%28pictures%29/21-AMSTAM01_gxbmxz.png')
pic_22 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809918/products%20%28pictures%29/22-23-24-25-bolsa_de_respiracion_as3jmw.png')
pic_23 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809918/products%20%28pictures%29/22-23-24-25-bolsa_de_respiracion_as3jmw.png')
pic_24 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809918/products%20%28pictures%29/22-23-24-25-bolsa_de_respiracion_as3jmw.png')
pic_25 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809918/products%20%28pictures%29/22-23-24-25-bolsa_de_respiracion_as3jmw.png')
pic_26 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809919/products%20%28pictures%29/26-RESSEBSM01_mrmqc0.png')
pic_27 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809919/products%20%28pictures%29/27-RESPVCM01_juuada.png')
pic_28 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809907/products%20%28pictures%29/28-RESSM01_tvhup5.png')
pic_29 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809907/products%20%28pictures%29/29-RESLSM01_edsh8r.png')
pic_30 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809908/products%20%28pictures%29/30-CPAPMM01_geuejv.png')
pic_31 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809907/products%20%28pictures%29/31-CPRMM01_nn5ury.png')
pic_32 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809907/products%20%28pictures%29/32-NMM01_k71psk.png')
pic_33 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809907/products%20%28pictures%29/33-2WMM01_a3pncq.png')
pic_34 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809908/products%20%28pictures%29/34-3WMM01_nzweqg.png')
pic_35 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809908/products%20%28pictures%29/35-3WMPM01_qcualt.png')
pic_36 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809908/products%20%28pictures%29/36-DLMPVCM01_jdum4q.png')
pic_37 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809908/products%20%28pictures%29/37-DLMSM01_qvtbik.png')
pic_38 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809908/products%20%28pictures%29/38-RLMSM01_vbr9lq.png')
pic_39 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809908/products%20%28pictures%29/39-SWLMAM01_r85nup.png')
pic_40 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809909/products%20%28pictures%29/40-2WLMM01_hevzld.png')
pic_41 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809909/products%20%28pictures%29/41-ALSM01_iopcim.png')
pic_42 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809909/products%20%28pictures%29/42-NAM01_snk3bd.png')
pic_43 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809909/products%20%28pictures%29/43-GUAM01_bfoylz.png')
pic_44 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809909/products%20%28pictures%29/44-TRTCM01_rnlbnv.png')
pic_45 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809909/products%20%28pictures%29/45-ETTCM01_u0rxki.png')
pic_46 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809909/products%20%28pictures%29/46-RETTCM01_edjvxu.png')
pic_47 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809909/products%20%28pictures%29/47-ETTUCM01_tkgwnl.png')
pic_48 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809910/products%20%28pictures%29/48-ETTOPM01_pioaoz.png')
pic_49 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809910/products%20%28pictures%29/49-ETTNPM01_aatosn.png')
pic_50 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809910/products%20%28pictures%29/50-ETBTM01_nazkxx.png')
pic_51 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809911/products%20%28pictures%29/51-TMM01_e107tn.png')
pic_52 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809910/products%20%28pictures%29/52-SOMM01_jd7qhr.png')
pic_53 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809911/products%20%28pictures%29/53-NAMM01_u65bgu.png')
pic_54 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809911/products%20%28pictures%29/54-NRRBM01_usziu1.png')
pic_55 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809911/products%20%28pictures%29/55-MVMM01_fgvu4n.png')
pic_56 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809911/products%20%28pictures%29/56-AVMM01_stunzu.png')
pic_57 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809912/products%20%28pictures%29/57-ACM01_b7dqlu.png')
pic_58 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809912/products%20%28pictures%29/58-CNM01_zq8jky.png')
pic_59 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809913/products%20%28pictures%29/59-NMPM01_hcf5oe.png')
pic_60 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809914/products%20%28pictures%29/60-NOCM01_zbub94.png')
pic_61 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809913/products%20%28pictures%29/61-CO2OCM01_cpwk38.png')
pic_62 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600809913/products%20%28pictures%29/62-HM01_p6iftq.png')

photos = [pic_1, pic_2, pic_3, pic_4, pic_5, pic_6, pic_7, pic_8, pic_9, pic_10, pic_11, pic_12, pic_13, pic_14, pic_15, pic_16,
          pic_17, pic_18, pic_19, pic_20, pic_21, pic_22, pic_23, pic_24, pic_25, pic_26, pic_27, pic_28, pic_29, pic_30, pic_31,
          pic_32, pic_33, pic_34, pic_35, pic_36, pic_37, pic_38, pic_39, pic_40, pic_41, pic_42, pic_43, pic_44, pic_45, pic_46,
          pic_47, pic_48, pic_49, pic_50, pic_51, pic_52, pic_53, pic_54, pic_55, pic_56, pic_57, pic_58, pic_59, pic_60, pic_61,
          pic_62]


filepath = 'libresante_ES_EN.csv'
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

CSV.foreach(filepath, csv_options).zip(photos) do |row, pic|
  prod = Product.new(catalog: row[2], name: row[4], description: row[6], detail: row[8], category: row[0], filter_id: Filter.find_by(name: row[0]).id)
  prod.image.attach(io: pic, filename: 'nes.png', content_type: 'image/png')
  prod.save!
end

puts "Generating translations (english)..."

filters_en = [
  "Heat moisture exchanger filters (HMEF)",
  "Bacterial/Viral Filter (BVF)",
  "Breathing Circuit",
  "Catheter Mount",
  "Anesthesia mask",
  "Breathing bag",
  "Resuscitator",
  "CPAP mask",
  "CPR mask",
  "Nasal mask",
  "Connectors",
  "Laryngeal mask",
  "Airway",
  "Tracheostomy & endotracheal",
  "Endobronchial tube (left/right)",
  "Respiratory mask",
  "Atomizing & nebulizer"
]

Filter.all.zip(filters_en).each do |filter, translation|
  I18n.locale = :en
  filter.update_attribute(:name, translation)
end

CSV.foreach(filepath, csv_options).zip(Product.all) do |row, prod|
  I18n.locale = :en
  prod.update_attribute(:catalog, row[3])  
  prod.update_attribute(:name, row[5])  
  prod.update_attribute(:description, row[7])  
  prod.update_attribute(:detail, row[9])  
  prod.update_attribute(:category, row[1])  
end

puts "Seed finished!"