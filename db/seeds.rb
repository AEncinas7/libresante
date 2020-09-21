require 'csv'
require 'open-uri'

Filter.destroy_all
Product.destroy_all

puts "Generating filters and pictures..."

img_1 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600707927/Filtros%20%28pictures%29/Filtros/national-cancer-institute-KrsoedfRAf4-unsplash_vly9un.jpg')
img_2 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600707912/Filtros%20%28pictures%29/Circuitos/richard-catabay-05kHY7AYCp8-unsplash_wnpsjk.jpg')
img_3 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600707928/Filtros%20%28pictures%29/Montajes/artur-tumasjan-qLzWvcQq-V8-unsplash_cbhb8f.jpg')
img_4 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600707925/Filtros%20%28pictures%29/Mascarillas/h-shaw-ObI8mL772cI-unsplash_hxdzsf.jpg')
img_5 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600707923/Filtros%20%28pictures%29/Bolsas%20de%20respiraci%C3%B3n/natanael-melchor-43LwvC-eQPM-unsplash_t3fgf5.jpg')
img_6 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600707927/Filtros%20%28pictures%29/Resucitadores/piron-guillaume-y5hQCIn1c6o-unsplash_oeub7i.jpg')
img_7 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600707913/Filtros%20%28pictures%29/Conectores/olga-guryanova-tMFeatBSS4s-unsplash_jlwl4k.jpg')
img_8 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600709042/Filtros%20%28pictures%29/Vias%20respiratorias/rsz_1rsz_national-cancer-institute-j55tmqkzq4k-unsplash_qp99iw.jpg')
img_9 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600707914/Filtros%20%28pictures%29/Canulas/hush-naidoo-ZCO_5Y29s8k-unsplash_zflcc9.jpg')
img_10 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600707928/Filtros%20%28pictures%29/Tubos/piron-guillaume-vNFHg0J0wRs-unsplash_agyxlq.jpg')
img_11 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600707906/Filtros%20%28pictures%29/Atomizadores%20_%20Nebulizadores/piron-guillaume-U4FyCp3-KzY-unsplash_sd7uql.jpg')
img_12 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600708583/Filtros%20%28pictures%29/Humidificadores/rsz_national-cancer-institute-c6rgp7k5rxc-unsplash_fmdjhl.jpg')

images = [img_1, img_2, img_3, img_4, img_5, img_6, img_7, img_8, img_9, img_10, img_11, img_12]

filters = [
  "Filtros",
  "Circuitos",
  "Montajes",
  "Mascarillas",
  "Bolsas de respiración",
  "Resucitadores",
  "Conectores",
  "Vias respiratorias",
  "Canulas",
  "Tubos",
  "Atomizadores & Nebulizadores",
  "Humidificadores" 
]

filters.zip(images).each do |filter, img|
  filt = Filter.new(name: "#{filter}")
  filt.image.attach(io: img, filename: 'nes.png', content_type: 'image/png')
  filt.save!
end

# filters.each do |filter|
#   Filter.create!(name: "#{filter}")
# end

puts "Generating products and photos..."

pic_1 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458047/HMEFLFM01_y4bbst.jpg')
pic_2 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458046/HMEFHFM01_vvv46j.jpg')
pic_3 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458046/HMEFHFM02_ehrq5x.jpg')
pic_4 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458046/HMEFHFM03_kehtkr.png')
pic_5 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458047/HMEFHFM04_grna7m.png')
pic_6 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458048/HMEFHFM05_uobwbj.png')
pic_7 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458040/BVFHFM01_csgi7k.png')
pic_8 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458042/BCEXM01_u1uc8w.png')
pic_9 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458041/BCCOM01_iifqik.png')
pic_10 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458041/BCCXM01_cyv4jf.png')
pic_11 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458042/BCSMM01_bgbe4c.png')
pic_12 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458044/BCWWM01_sin_orificio_-_BCWWM02_2_orificios_psugzr.png')
pic_13 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458043/BCHWM01_simple_-_BCHWM02_doble_zsn9si.png')
pic_14 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458046/FGIM01K_kit_-_FGIM01C_circuito_b3dpxr.png')
pic_15 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458052/SCWTM01_yghmlc.png')
pic_16 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458040/CMM01_qbrbdn.png')
pic_17 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458051/SCAMM01_pjabud.png')
pic_18 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458040/AMPVCFM01_zg8ab1.png')
pic_19 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458051/SAMM01_woz0an.png')
pic_20 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458041/AMSTBM01_ieftwv.png')
pic_21 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458040/AMSTAM01_du9e04.png')
pic_22 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458040/AMSTAM01_du9e04.png')
pic_23 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458043/bolsa_de_respiracion_dnbiwq.png')
pic_24 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458043/bolsa_de_respiracion_dnbiwq.png')
pic_25 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458043/bolsa_de_respiracion_dnbiwq.png')
pic_26 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458043/bolsa_de_respiracion_dnbiwq.png')
pic_27 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458051/RESSEBSM01_sg6qep.png')
pic_28 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458051/RESPVCM01_nxnxuf.png')
pic_29 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458050/RESSM01_j8duax.png')
pic_30 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458050/RESLSM01_g8re0z.png')
pic_31 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458044/CPAPMM01_krxt51.png')
pic_32 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458044/CPRMM01_gksbef.png')
pic_33 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458048/NMM01_av0zkq.png')
pic_34 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458052/2WMM01_wre8dg.png')
pic_35 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458040/3WMM01_u9n3fv.png')
pic_36 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458040/3WMPM01_r9vzj3.png')
pic_37 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458044/DLMPVCM01_ywaykx.png')
pic_38 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458044/DLMSM01_ngnxzw.png')
pic_39 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458051/RLMSM01_wdjpym.png')
pic_40 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458052/SWLMAM01_kykppo.png')
pic_41 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458052/2WLMM01_nk1axm.png')
pic_42 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458040/ALSM01_yyttwj.png')
pic_43 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458047/NAM01_dtyhxv.png')
pic_44 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458046/GUAM01_h0amcm.png')
pic_45 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458052/TRTCM01_bn3pkz.png')
pic_46 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458044/ETTCM01_wsxicz.png')
pic_47 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458050/RETTCM01_htmbpc.png')
pic_48 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458045/ETTUCM01_yii6d4.png')
pic_49 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458045/ETTOPM01_shbjtu.png')
pic_50 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458045/ETTNPM01_qmptpr.png')
pic_51 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458044/ETBTM01_pxksih.png')
pic_52 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458052/TMM01_zycq63.png')
pic_53 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458052/SOMM01_nixuua.png')
pic_54 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458047/NAMM01_huemv0.png')
pic_55 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458049/NRRBM01_kr2fo4.png')
pic_56 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458047/MVMM01_gu2qbf.png')
pic_57 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458041/AVMM01_b4fs9y.png')
pic_58 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458043/ACM01_vay8sg.png')
pic_59 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458041/CNM01_hbdwar.png')
pic_60 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458049/NMPM01_ccj5jw.png')
pic_61 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458049/NOCM01_ykur9s.png')
pic_62 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458043/CO2OCM01_ysuumr.png')
pic_63 = URI.open('https://res.cloudinary.com/libresante/image/upload/v1600458046/HM01_hlfwzp.png')

photos = [pic_1, pic_2, pic_3, pic_4, pic_5, pic_6, pic_7, pic_8, pic_9, pic_10, pic_11, pic_12, pic_13, pic_14, pic_15, pic_16,
          pic_17, pic_18, pic_19, pic_20, pic_21, pic_22, pic_23, pic_24, pic_25, pic_26, pic_27, pic_28, pic_29, pic_30, pic_31,
          pic_32, pic_33, pic_34, pic_35, pic_36, pic_37, pic_38, pic_39, pic_40, pic_41, pic_42, pic_43, pic_44, pic_45, pic_46,
          pic_47, pic_48, pic_49, pic_50, pic_51, pic_52, pic_53, pic_54, pic_55, pic_56, pic_57, pic_58, pic_59, pic_60, pic_61,
          pic_62, pic_63]


filepath = 'data_libresante_ES.csv'
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

# CSV.foreach(filepath, csv_options) do |row|
#   Product.create!(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: row[0]).id)
# end

CSV.foreach(filepath, csv_options).zip(photos) do |row, pic|
  prod = Product.new(name: row[2], description: row[3], category: row[1], filter_id: Filter.find_by(name: row[0]).id)
  prod.image.attach(io: pic, filename: 'nes.png', content_type: 'image/png')
  prod.save!
end

puts "Seed finished!"