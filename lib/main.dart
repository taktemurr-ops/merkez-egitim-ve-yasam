import 'package:egitim_motoru/egitim_motoru.dart';
import 'package:flutter/material.dart';
import 'package:studio_core/apps/apps.dart';
import 'package:uyg_arac_bakim_takibi/uyg_arac_bakim_takibi.dart';
import 'package:uyg_ay_evreleri_ve_gunes_saatleri/uyg_ay_evreleri_ve_gunes_saatleri.dart';
import 'package:uyg_bahce_planlayici/uyg_bahce_planlayici.dart';
import 'package:uyg_bilgi_kartlari/uyg_bilgi_kartlari.dart';
import 'package:uyg_bitki_sulama_hatirlatici/uyg_bitki_sulama_hatirlatici.dart';
import 'package:uyg_camasir_sembolleri_rehberi/uyg_camasir_sembolleri_rehberi.dart';
import 'package:uyg_cevrimdisi_sozluk/uyg_cevrimdisi_sozluk.dart';
import 'package:uyg_deneme_net_hesaplayici/uyg_deneme_net_hesaplayici.dart';
import 'package:uyg_deprem_cantasi_ve_aile_plani/uyg_deprem_cantasi_ve_aile_plani.dart';
import 'package:uyg_dogum_gunu_hatirlatici/uyg_dogum_gunu_hatirlatici.dart';
import 'package:uyg_dugum_rehberi/uyg_dugum_rehberi.dart';
import 'package:uyg_dugun_planlayici/uyg_dugun_planlayici.dart';
import 'package:uyg_dunya_atlasi/uyg_dunya_atlasi.dart';
import 'package:uyg_ev_bakim_plani/uyg_ev_bakim_plani.dart';
import 'package:uyg_ev_envanteri/uyg_ev_envanteri.dart';
import 'package:uyg_evcil_hayvan_bakim_ve_asi_takibi/uyg_evcil_hayvan_bakim_ve_asi_takibi.dart';
import 'package:uyg_fizik_simulasyonlari/uyg_fizik_simulasyonlari.dart';
import 'package:uyg_formul_kitabi/uyg_formul_kitabi.dart';
import 'package:uyg_gokyuzu_haritasi/uyg_gokyuzu_haritasi.dart';
import 'package:uyg_hediye_listesi/uyg_hediye_listesi.dart';
import 'package:uyg_hicri_takvim_ve_dini_gunler/uyg_hicri_takvim_ve_dini_gunler.dart';
import 'package:uyg_hizli_okuma/uyg_hizli_okuma.dart';
import 'package:uyg_ilk_yardim_rehberi/uyg_ilk_yardim_rehberi.dart';
import 'package:uyg_imsakiye_ve_oruc_vakitleri/uyg_imsakiye_ve_oruc_vakitleri.dart';
import 'package:uyg_kible_pusulasi/uyg_kible_pusulasi.dart';
import 'package:uyg_kiler_ve_son_kullanma_takibi/uyg_kiler_ve_son_kullanma_takibi.dart';
import 'package:uyg_klavye_egitimi/uyg_klavye_egitimi.dart';
import 'package:uyg_kodlama_ogrenme/uyg_kodlama_ogrenme.dart';
import 'package:uyg_konu_takip_cizelgesi/uyg_konu_takip_cizelgesi.dart';
import 'package:uyg_matematik_pratigi/uyg_matematik_pratigi.dart';
import 'package:uyg_molekul_goruntuleyici/uyg_molekul_goruntuleyici.dart';
import 'package:uyg_namaz_vakitleri/uyg_namaz_vakitleri.dart';
import 'package:uyg_park_yeri_bulucu/uyg_park_yeri_bulucu.dart';
import 'package:uyg_periyodik_tablo/uyg_periyodik_tablo.dart';
import 'package:uyg_saat_dilimi_planlayici/uyg_saat_dilimi_planlayici.dart';
import 'package:uyg_seyahat_gunlugu/uyg_seyahat_gunlugu.dart';
import 'package:uyg_seyahat_ifadeleri_cep_sozlugu/uyg_seyahat_ifadeleri_cep_sozlugu.dart';
import 'package:uyg_seyahat_kontrol_listesi/uyg_seyahat_kontrol_listesi.dart';
import 'package:uyg_sinav_geri_sayimi/uyg_sinav_geri_sayimi.dart';
import 'package:uyg_tarif_kutusu/uyg_tarif_kutusu.dart';
import 'package:uyg_temizlik_ve_ev_isi_cizelgesi/uyg_temizlik_ve_ev_isi_cizelgesi.dart';
import 'package:uyg_tr_en_kelime_ezberi/uyg_tr_en_kelime_ezberi.dart';
import 'package:uyg_yemek_planlayici/uyg_yemek_planlayici.dart';
import 'package:uyg_yolculuk_gider_bolusme/uyg_yolculuk_gider_bolusme.dart';
import 'package:uyg_zikirmatik/uyg_zikirmatik.dart';
import 'package:uyg_cok_dilli_temel_kelimeler/uyg_cok_dilli_temel_kelimeler.dart';
import 'package:uyg_tarih_zaman_cizelgesi/uyg_tarih_zaman_cizelgesi.dart';
import 'package:uyg_ehliyet_sinavi_pratigi/uyg_ehliyet_sinavi_pratigi.dart';
import 'package:uyg_turkce_dilbilgisi/uyg_turkce_dilbilgisi.dart';

/// Eğitim ve Yaşam: 49 çevrimdışı araç tek uygulamada. Her aracın verisi
/// ayrı saklanır; reklam yalnızca bir araçtan çıkarken ve en az 3 dakika
/// arayla gösterilir.
final hubConfig = AppHubConfig(
  hubId: 'merkez-egitim-ve-yasam',
  title: egitimHubTitle,
  tagline: egitimHubTagline,
  icon: Icons.school_rounded,
  style: egitimHubStyle,
  categories: egitimCategories,
  tools: [
    bilgiKartlariTool,
    periyodikTabloTool,
    formulKitabiTool,
    cevrimdisiSozlukTool,
    matematikPratigiTool,
    klavyeEgitimiTool,
    tarifKutusuTool,
    bitkiSulamaHatirlaticiTool,
    evEnvanteriTool,
    dogumGunuHatirlaticiTool,
    namazVakitleriTool,
    kiblePusulasiTool,
    zikirmatikTool,
    seyahatKontrolListesiTool,
    parkYeriBulucuTool,
    yolculukGiderBolusmeTool,
    trEnKelimeEzberiTool,
    fizikSimulasyonlariTool,
    molekulGoruntuleyiciTool,
    dunyaAtlasiTool,
    gokyuzuHaritasiTool,
    kodlamaOgrenmeTool,
    hizliOkumaTool,
    sinavGeriSayimiTool,
    denemeNetHesaplayiciTool,
    konuTakipCizelgesiTool,
    evBakimPlaniTool,
    aracBakimTakibiTool,
    hediyeListesiTool,
    dugunPlanlayiciTool,
    temizlikVeEvIsiCizelgesiTool,
    yemekPlanlayiciTool,
    kilerVeSonKullanmaTakibiTool,
    camasirSembolleriRehberiTool,
    evcilHayvanBakimVeAsiTakibiTool,
    bahcePlanlayiciTool,
    ayEvreleriVeGunesSaatleriTool,
    imsakiyeVeOrucVakitleriTool,
    hicriTakvimVeDiniGunlerTool,
    seyahatGunluguTool,
    saatDilimiPlanlayiciTool,
    seyahatIfadeleriCepSozluguTool,
    dugumRehberiTool,
    ilkYardimRehberiTool,
    depremCantasiVeAilePlaniTool,
    cokDilliTemelKelimelerTool,
    tarihZamanCizelgesiTool,
    ehliyetSinaviPratigiTool,
    turkceDilbilgisiTool,
  ],
  featured: egitimFeatured,
  privacyUrl: 'https://github.com/taktemurr-ops/merkez-egitim-ve-yasam/blob/main/PRIVACY.md',
);

void main() => bootstrapAppHub(hubConfig);
