---
title: 16. ალგორითმები
parent: ლექციები
---


## სორტირების ალგორითმები
### Bubble Sort 
- ვიწყებთ სიის პირველი ორი ელემენტით
- თუ პირველი მეტია მეორეზე, გავუცვლით ადგილს
- გადავალთ შემდეგ წყვილზე (მეორე და მესამე)
- სიას გადავუყვებით მანამ, სანამ დასაწყისიდან ბოლომდე არცერთ გაცვლას არ გავაკეთებთ (ანუ ყოველი ელემენტი იქნება მეტი წინაზე)

![](https://assets.digitalocean.com/articles/alligator/js/bubble-selection-insertion-sort/o/bubble-sort.gif)

### Selection Sort
- გადავუყვებით სიას, ვიპოვით ყველაზე პატარა ელემენტს (min)
- ჩავსვამთ ამ ელემენტს სიის დასაწყისში
- შემდეგ ვიპოვით ახალ მინიმალურს (ოღონდ დავიწყებთ მეორე ელემენტიდან) და ჩავსვამთ პირველის შემდეგ
- ასე ვაგრძელებთ (შემდეგ მესამედან გადავუყვებით) მანამ, სანამ ბოლომდე არ გავალთ

![](https://assets.digitalocean.com/articles/alligator/js/bubble-selection-insertion-sort/o/selection-sort.gif)

### Insertion Sort
- ვიწყებთ მეორე ელემენტიდან
- ყოველ იტერაციაზე გადავიტანთ ელემენტს მარცხნივ მანამ, სანამ ამ ელემენტის პოზიციას არ ვიპოვით (ანუ მანამ სანამ ეს ელემენტი ნაკლებია შესადარებელ ელემენტზე)
![](https://assets.digitalocean.com/articles/alligator/js/bubble-selection-insertion-sort/o/insertion-sort.gif)

### რესურსები
- 16 sorting algorithms in 6 minutes <https://www.youtube.com/watch?v=kPRA0W1kECg>
- <https://hackernoon.com/elementary-sorting-algorithm-in-javascript-izd1y30x2>
- ანიმაციების წყარო: <https://www.digitalocean.com/community/tutorials/js-bubble-selection-insertion-sort>

## ალგორითმების მთავარი პრინციპები
### დამტკიცება
- ისევე, როგორც მათემატიკური ფორმულები, აუცილებელია თეორიულად დაამტკიცო, რომ ნებისმიერი საწყისი მონაცემებისთვის **დაასრულებს** და **სწორ შედეგს** მოგცემს.

### performance
შემდეგ ვითვლით
ალგორითმების შეფასება ხდება შემდეგი კრიტერიუმებით:
- time constraints (რამდენი ოპერაცია იქნება საჭირო)
- space constraints (ზოგ ალგორითმში გვჭირება მონაცემების გადაკოპირება. დიდი სიის შემთხვევაში)

- best case performance (bogo sort example)
- worst case performance
- average performance


- complexity
    + როგორ დამოკიდებულებაშია performance
        * წრფივი - ცუდი
        * ექსპონენციალური - თითქმის უსარგებლო
        * ლოგარითმული

და ყველაზე მნიშვნელოვანი - საჭიროა იმ პრობლემის და მონაცემების სიღრმისეული ცოდნა, რომლისთვისაც ამ ალგორითმებს გამოვიყენებთ. შეიძლება ერთი ალგორითმის worst case performance მეორისას სჯობდეს, best case კი პირიქით. თუ ჩვენი მონაცემები worst case performance-ის ტოპოლოგიას ემთხვევა, რა თქმა უნდა პირველს ავირჩევთ, სხვა შემთხვევაში მეორეს.


