% -------------------------MAGYARÁZAT-------------------------
📌 Adott mátrix:
A=(−50−1−51435−4)A = \begin{pmatrix} -5 & 0 & -1 \\ -5 & 1 & 4 \\ 3 & 5 & -4 \\ \end{pmatrix}A=−5−53015−14−4 
________________________________________
✅ 1-es mátrixnorma:
Ez a maximális oszlopösszeg abszolút értékben:
∥A∥1=max⁡j∑i∣aij∣\|A\|_1 = \max_{j} \sum_{i} |a_{ij}|∥A∥1=jmaxi∑∣aij∣ 
Számoljuk:
•	
1.	oszlop: ∣−5∣+∣−5∣+∣3∣=5+5+3=13|-5| + |-5| + |3| = 5 + 5 + 3 = 13∣−5∣+∣−5∣+∣3∣=5+5+3=13
•	
2.	oszlop: ∣0∣+∣1∣+∣5∣=0+1+5=6|0| + |1| + |5| = 0 + 1 + 5 = 6∣0∣+∣1∣+∣5∣=0+1+5=6
•	
3.	oszlop: ∣−1∣+∣4∣+∣−4∣=1+4+4=9|-1| + |4| + |-4| = 1 + 4 + 4 = 9∣−1∣+∣4∣+∣−4∣=1+4+4=9
👉 Maximum = 13
∥A∥1=13\boxed{\|A\|_1 = 13}∥A∥1=13 
________________________________________
✅ ∞ (végtelen) mátrixnorma:
Ez a maximális sorösszeg abszolút értékben:
∥A∥∞=max⁡i∑j∣aij∣\|A\|_\infty = \max_{i} \sum_{j} |a_{ij}|∥A∥∞=imaxj∑∣aij∣ 
Számoljuk:
•	
1.	sor: ∣−5∣+∣0∣+∣−1∣=5+0+1=6|-5| + |0| + |-1| = 5 + 0 + 1 = 6∣−5∣+∣0∣+∣−1∣=5+0+1=6
•	
2.	sor: ∣−5∣+∣1∣+∣4∣=5+1+4=10|-5| + |1| + |4| = 5 + 1 + 4 = 10∣−5∣+∣1∣+∣4∣=5+1+4=10
•	
3.	sor: ∣3∣+∣5∣+∣−4∣=3+5+4=12|3| + |5| + |-4| = 3 + 5 + 4 = 12∣3∣+∣5∣+∣−4∣=3+5+4=12
👉 Maximum = 12
∥A∥∞=12\boxed{\|A\|_\infty = 12}∥A∥∞=12 
________________________________________
🎯 VÉGSŐ VÁLASZ:
•	∥A∥1=13\|A\|_1 = \boxed{13}∥A∥1=13
•	∥A∥∞=12\|A\|_\infty = \boxed{12}∥A∥∞=12


% ----------------------------
Ez a feladat a mátrix normájának kiszámításáról szól, méghozzá az 1-norma (∥A∥1\|A\|_1) és a végtelen-norma (∥A∥∞\|A\|_\infty) esetén.
1-norma (∥A∥1\|A\|_1)
Az 1-norma egy mátrix oszlopainak abszolút értékösszegeiből számolt maximális érték. Ez azt jelenti, hogy minden oszlopban összeadjuk az abszolút értékeket, majd a legnagyobb összeget választjuk.
A mátrixod:
A=(−50−1−51435−4)A = \begin{pmatrix} -5 & 0 & -1 \\ -5 & 1 & 4 \\ 3 & 5 & -4 \end{pmatrix}
1.	Az oszlopok abszolút értékösszegei:
o	Első oszlop: ∣−5∣+∣−5∣+∣3∣=5+5+3=13|-5| + |-5| + |3| = 5 + 5 + 3 = 13
o	Második oszlop: ∣0∣+∣1∣+∣5∣=0+1+5=6|0| + |1| + |5| = 0 + 1 + 5 = 6
o	Harmadik oszlop: ∣−1∣+∣4∣+∣−4∣=1+4+4=9|-1| + |4| + |-4| = 1 + 4 + 4 = 9
2.	A legnagyobb összeg: 13, így
∥A∥1=13\|A\|_1 = 13
Végtelen-norma (∥A∥∞\|A\|_\infty)
A végtelen-norma egy mátrix sorainak abszolút értékösszegeiből számolt maximális érték. Ez azt jelenti, hogy minden sorban összeadjuk az abszolút értékeket, majd a legnagyobb összeget választjuk.
1.	A sorok abszolút értékösszegei:
o	Első sor: ∣−5∣+∣0∣+∣−1∣=5+0+1=6|-5| + |0| + |-1| = 5 + 0 + 1 = 6
o	Második sor: ∣−5∣+∣1∣+∣4∣=5+1+4=10|-5| + |1| + |4| = 5 + 1 + 4 = 10
o	Harmadik sor: ∣3∣+∣5∣+∣−4∣=3+5+4=12|3| + |5| + |-4| = 3 + 5 + 4 = 12
2.	A legnagyobb összeg: 12, így
∥A∥∞=12\|A\|_\infty = 12
Összegzés:
•	Az 1-norma azt mutatja meg, melyik oszlopban van a legnagyobb abszolút értékösszeg.
•	A végtelen-norma pedig azt mutatja meg, melyik sorban van a legnagyobb abszolút értékösszeg.
•	A kapott értékek:
o	∥A∥1=13\|A\|_1 = 13
o	∥A∥∞=12


