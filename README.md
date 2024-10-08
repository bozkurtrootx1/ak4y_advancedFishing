# AK4Y Advanced Fishing

## English Version

**AK4Y Advanced Fishing** is a simple and secure fishing system for FiveM servers. Players can fish, earn various items, and are protected by security systems that prevent cheating. This script allows players to catch items while ensuring fair gameplay through several security measures.

The script ensures that players can only receive allowed items and prevents them from speeding up the fishing process through cheating mechanisms.

## Security Measures

- **Time-Based Protection**: Players are automatically banned if they attempt to trigger the fishing process again within 9 seconds. This prevents the exploitation of the system using cheats.
  
- **Invalid Item Control**: Only allowed items can be added to a player’s inventory. If a player tries to add an invalid item, they are permanently banned.

## Installation

1. **Download and Install the Script**: Place the files into your server's `resources` folder.
2. **Activate on the Server**: Add the following line to your `server.cfg`: `ensure ak4y-advancedFishing`
3. **Anticheat Setup**: Replace `exports["anticheatname"]` with your anticheat file name in `server/main.lua` at lines 466 and 477. This ensures that player banning works correctly.
4. **Item Configuration**: Adjust the `allowedItems` list to suit your server’s needs and specify which items can be distributed to players.
5. **Server Name Setup**: Change the `server name` on line 42 in `config.lua` to your own server’s name. This ensures your server name appears correctly.

Players can fish at designated fishing spots and earn various rewards. The script prevents cheating and ensures fair gameplay.

![](https://i.imgur.com/LD3JlBA.png)

---

## Türkçe Versiyon

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

![](https://i.imgur.com/LD3JlBA.png)
