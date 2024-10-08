# AK4Y Advanced Fishing

**AK4Y Advanced Fishing**, FiveM sunucuları için basit ve güvenli bir balıkçılık sistemidir. Oyuncular balık tutabilir, çeşitli itemler kazanabilir ve güvenlik sistemleri sayesinde hileye karşı korunur. Oyuncuların balık tutarak item kazanmalarını sağlayan bu script, aynı zamanda hile yapmayı engelleyen güvenlik kontrolleri içerir.

Script, oyuncuların sadece izin verilen itemleri almasını ve bir hile aracılığıyla balık tutma işlemini hızlandırmalarını önlemek amacıyla birkaç temel güvenlik önlemi ile donatılmıştır.

## Güvenlik Önlemleri

- **Zaman Tabanlı Koruma**: Oyuncuların balık tutma işlemini hileli bir şekilde sık sık tetiklemesini önlemek için 9 saniyeden önce tekrar tetiklenirse oyuncuya otomatik ban uygulanır. Bu, hileli yazılımların suistimalini engeller.
  
- **Geçersiz Item Kontrolü**: Oyuncuların sadece izin verilen itemleri alabilmesi sağlanır. Oyuncu geçersiz bir item eklemeye çalışırsa kalıcı ban uygulanır.

## Kurulum

1. **Script'i İndir ve Yükle**: Dosyaları sunucunuzun `resources` klasörüne atın.
2. **Sunucuda Aktifleştirin**: `server.cfg` dosyanıza şu satırı ekleyin: `ensure ak4y-advancedFishing`
3. **Anticheat Ayarı**: `server/main.lua` dosyasındaki 466 ve 477. satırlarda bulunan `exports["anticheatname"]` kısmını kendi anticheat dosya isminizle değiştirin. Bu adım, oyuncuları banlama işleminin doğru çalışması için gereklidir.
4. **Güvenlik Ayarları**: `allowedItems` listesini kendi sunucunuza göre düzenleyin ve hangi itemlerin oyunculara dağıtılabileceğini belirleyin.
5. **Sunucu İsmi Ayarı**: `config.lua` dosyasındaki 42. satırda bulunan `server name` kısmına kendi sunucu isminizi yazın. Bu, sunucunuzun isminin doğru şekilde görünebilmesi için gereklidir.


Oyuncular balık tutma noktalarında balık tutabilir ve çeşitli ödüller kazanabilirler. Script, güvenlik kontrolleri sayesinde hileleri engeller ve sunucunun adil bir şekilde işlemesini sağlar.

![Alt text](https://i.imgur.com/LD3JlBA.png)
