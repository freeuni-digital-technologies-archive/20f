---
title: "სამუშაო გარემოს გამართვა: კარელი"
parent: რესურსები
--- 

სამუშაო გარემოს გასამართად საჭიროა ჯავას დაყენება და შემდეგ კარელის გადმოწერა და ჩართვა. ამ გვერდზე არის ორივე ნაბიჯის ინსტრუქცია Windows/Mac/Linux ოპერატიული სისტემებისთვის. ასევე მითითებულია შესაძლო პრობლემები და მათი გამოსწორების გზები. 

## ჯავას დაყენების ინსტრუქცია

### Windows
გადმოწერეთ [JDK for windows 64 bit¹](https://drive.google.com/file/d/16RfvDKklqyx_cvou7twgWr18JAjrXQsa/view?usp=sharing), გადმოწერის შემდეგ გაუშვით ინსტალაცია და მიყევით ბოლომდე.

1. უმრაველოსობისთვის ზედა ლინკი იმუშავებს. ძველ კომპიუტერებზე არის შანსი რომ 32 ბიტიანი ჯავა გჭირდებოდეთ რომელსაც გადმოწერეთ აქედან: [JDK for windows 32 bit](https://drive.google.com/file/d/1FyukeiWKFBxjD1uxakteLXCYyIDtQET8/view?usp=sharing). თუ არ იცით JDK windows (32-bit) გჭირდებათ თუ 64-bit, start menu-ში მოძებნეთ _"about your pc" > Device Specifications > System type_. თუ ამ გზით ვერ პოულობთ, დაგუგლეთ: "Windows 10 find out 32 or 64 bit"

### MacOS
გადმოწერეთ [JDK for the Mac](https://drive.google.com/file/d/1R_dDPnpfEYMKk5WvIcFy1th585NAVPhl/view?usp=sharing). გადმოწერის შემდეგ გაუშვით ინსტალაცია და მიყევით ბოლომდე.

### Linux
სისტემის package manager-ის მეშვეობით დააყენეთ jre-8 და jdk-8. 

თუ არ გაქვთ გამოცდილება ლინუქსთან, ყველაზე მარტივია კონსოლით დაყენება, რადგან უბრალოდ შესაბამისი ტექსტი უნდა ჩააკოპიროთ ტერმინალში. ორი დისტრიბუციის მაგალითს მოვიყვან:

1. Debian (ubuntu, linux mint, elementary)
```bash
sudo apt install default-jdk
```

2. Arch Linux (manjaro, endeavouros)
```bash
sudo pacman -S jdk8-openjdk jre8-openjdk
```

## კარელის გაშვების ინსტრუქცია

### Windows
გადმოწერეთ [JSKarel for windows](https://drive.google.com/file/d/1utLHfYGnPfDShb7D5H9bNcgI66gKK-ji/view?usp=sharing) და ამოარქივეთ სასურველ ადგილას¹. შემდეგ ამოარქივებულ ფოლდერში გაუშვით JSKarel.jar²

1. თუ ვერ ხსნით ავტომატურად, გადმოწერილ ფაილზე _right click > open with > windows explorer_. დაინახავთ ფოლდერს JSKarel for Windows. დააკოპირეთ და გადაიტანეთ სასურველ ადგილას
2. თუ JSKarel.jar-ზე დაჭერისას კარელი არ ირთვება, _right click > open with > Java_

### MacOS
გადმოწერეთ [JSKarel for Mac](https://drive.google.com/file/d/1Fhx_g1FVozPerGi_UFPdXE6ZBj-yjJVb/view?usp=sharing). ფაილზე დაჭერისას ავტომატურად ამოარქივდება და დაინახავთ იგივე სახელის ფოლდერს. ამ ფოლდერში გაუშვით JSKarel.jar¹

1. თუკი გიწერთ მესიჯს: ```“JSKarel.jar” cannot be opened because it is from an unidentified developer```. მაშინ:

   გახსენით _System Preferences > Security & Privacy_ და დააჭირეთ Open Anyway ღილაკს. 

### Linux
გადმოწერეთ [JSKarel for Linux](https://drive.google.com/file/d/1Fhx_g1FVozPerGi_UFPdXE6ZBj-yjJVb/view?usp=sharing). ამოარქივეთ და ამოარქივებულ ფოლდერში გაუშვით JSKarel.jar¹

1. თუ JSKarel.jar-ზე დაჭერისას კარელი არ ირთვება, _right click > open with > Java Runtime_ (ან რამე მსგავსი სახელი). თუ მაინც არ ირთვება, გახსენით ტერმინალი, გადადით JSKarel-ის ფოლდერში და გაუშვით ამ ბრძანებით:
```bash
java -jar JSKarel.jar
```