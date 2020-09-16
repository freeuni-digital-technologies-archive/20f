---
title: "სამუშაო გარემოს გამართვა: კარელი"
parent: რესურსები
--- 

სამუშაო გარემოს გასამართად საჭიროა ჯავას დაყენება და შემდეგ კარელის გადმოწერა და ჩართვა. ამ გვერდზე არის ორივე ნაბიჯის ინსტრუქცია Windows/Mac/Linux ოპერატიული სისტემებისთვის. ასევე მითითებულია შესაძლო პრობლემები და მათი გამოსწორების გზები. 

## ჯავას დაყენების ინსტრუქცია

### Windows
გადმოწერეთ [JDK for windows¹](https://drive.google.com/file/d/16RfvDKklqyx_cvou7twgWr18JAjrXQsa/view?usp=sharing), გადმოწერის შემდეგ გაუშვით ინსტალაცია და მიყევით ბოლომდე.

1. თუ არ იცით JDK windows (32-bit) გჭირდებათ თუ windows (64-bit), start menu-ში მოძებნეთ __"about your pc" > Device Specifications > System type__. თუ ამ გზით ვერ პოულობთ, დაგუგლეთ Windows 10 find out 32 or 64 bit

### MacOS
გადმოწერეთ [JDK for the Mac](https://drive.google.com/file/d/1R_dDPnpfEYMKk5WvIcFy1th585NAVPhl/view?usp=sharing). გადმოწერის შემდეგ გაუშვით ინსტალაცია და მიყევით ბოლომდე.

### Linux
სისტემის package manager-ის მეშვეობით დააყენეთ jre-8 და jdk-8. 

თუ არ გაქვთ გამოცდილება ლინუქსთან, ყველაზე მარტივია კონსოლით დაყენება, რადგან უბრალოდ შესაბამისი ტექსტი უნდა ჩააკოპიროთ ტერმინალში. ორი დისტრიბუციის მაგალითს მოვიყვან:

1. Debian (ubuntu, linux mint)
```bash
sudo apt-get install default-java
sudo apt-get install openjdk-6-jdk
```

2. Arch Linux (manjaro, endeavouros)
```bash
sudo pacman -S jdk8-openjdk jre8-openjdk
```

## კარელის გაშვების ინსტრუქცია

### Windows
გადმოწერეთ [JSKarel for windows](https://drive.google.com/file/d/1utLHfYGnPfDShb7D5H9bNcgI66gKK-ji/view?usp=sharing) და ამოარქივეთ სასურველ ადგილას¹. შემდეგ ამოარქივებულ ფოლდერში გაუშვით JSKarel.jar²

1. თუ ვერ ხსნით ავტომატურად, გადმოწერილ ფაილზე right click > open with > windows explorer. დაინახავთ ფოლდერს JSKarel for Windows. დააკოპირეთ და გადაიტანეთ სასურველ ადგილას
2. თუ JSKarel.jar-ზე დაჭერისას კარელი არ ირთვება, right click > open with > Java

### MacOS
გადმოწერეთ [JSKarel for Mac](https://drive.google.com/file/d/1Fhx_g1FVozPerGi_UFPdXE6ZBj-yjJVb/view?usp=sharing). ფაილზე დაჭერისას ავტომატურად ამოარქივდება და დაინახავთ იგივე სახელის ფოლდერს. ამ ფოლდერში გაუშვით JSKarel.jar¹

1. თუკი გიწერთ მესიჯს: _“JSKarel.jar” cannot be opened because it is from an unidentified developer_:

   გახსენით __System Preferences > Security & Privacy__ და დააჭირეთ Open Anyway ღილაკს. 

### Linux
გადმოწერეთ [JSKarel for Linux](https://drive.google.com/file/d/1Fhx_g1FVozPerGi_UFPdXE6ZBj-yjJVb/view?usp=sharing). ამოარქივეთ და ამოარქივებულ ფოლდერში გაუშვით JSKarel.jar¹

1. თუ JSKarel.jar-ზე დაჭერისას კარელი არ ირთვება, __right click > open with > Java Runtime__ (ან რამე მსგავსი სახელი). თუ მაინც არ ირთვება, გახსენით ტერმინალი, გადადით JSKarel-ის ფოლდერში და გაუშვით ამ ბრძანებით:
```bash
java -jar JSKarel.jar
```