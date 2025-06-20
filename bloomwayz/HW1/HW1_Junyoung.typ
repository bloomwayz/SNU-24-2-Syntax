#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
  footer: context [
    #set align(center)
    #set text(8pt)
    #counter(page).display(
      "1/1",
      both: true,
    )
  ]
)

#set par(
  justify: true,
  leading: 0.8em,
)

#import "syntool.typ": syntree

#align(center, text(15pt, font: "KoPubWorldDotum_Pro", weight: "bold")[
  통사론 과제 \#1
])

\ 

#align(right, text(10pt, font: "KoPubWorldDotum_Pro", weight: "medium")[
  인문대학 언어학과 \
  박준영
])

\ 

#let ko = text.with(lang: "ko")
#show text.where(lang: "ko"): set text(size: 10pt, font: "KoPubWorldBatang_Pro", weight: "light")

#let mytree = it => syntree(
  nonterminal: (font: "Linux Biolinum"),
  terminal: (font: "Linux Libertine"),
  child-spacing: 0.5em,
  layer-spacing: 1.5em,
  it
  )

#let mytree2 = it => syntree(
  nonterminal: (font: "Linux Biolinum"),
  terminal: (font: "Linux Libertine"),
  child-spacing: 0.4em,
  layer-spacing: 1.5em,
  it
  )

== \#1. Ambiguity
\ 
*(a)* Alvina said Moises went to the store quickly.

\ 

#grid(
  columns: (1fr, 1fr),
  rows: 2,
  align: center,
  
  align(center)[
    #mytree(
      "[TP [NP [!N Alvina]] [VP [!V said] [CP [!C $diameter$] [TP [NP [!N Moises]] [VP [!*V* *went*] [PP [!P to] [NP [!D the] [!N store]]] [*AdvP* [!Adv *quickly*]]]]]]]"
    )
  ],
  
  align(center)[
    #mytree(      
      "[TP [NP [!N Alvina]] [VP [!*V* *said*] [CP [!C $diameter$] [TP [NP [!N Moises]] [VP [!V went] [PP [!P to] [NP [!D the] [!N store]]]]]] [*AdvP* [!Adv *quickly*]]]]"
    )
  ],
  
  align(center)[
    #linebreak()
    (i) Alvina said \ that Moises *quickly went* to the store.
  ],

  align(center)[
    #linebreak()
    (ii) Alvina *quickly said* \ that Moises went to the store.
  ],
)

\ \ 

*(d)* Enraged cow injures farmer with ax

\ 

#grid(
  columns: (1fr, 1fr),
  rows: 2,
  align: center,
  
  align(center)[
    #mytree(
      "[TP [NP [AdjP [!Adj Enraged]] [!N cow]] [VP [!V injures] [NP [!*N* *farmer*] [*PP* [!P *with*] [NP [!N *ax*]]]]]]"
    )
  ],
  
  align(center)[
    #mytree(
      "[TP [NP [AdjP [!Adj Enraged]] [!N cow]] [VP [!*V* *injures*] [NP [!N farmer]] [*PP* [!P *with*] [NP [!N *ax*]]]]]"
    )
  ],

  align(center)[
    (i) The *farmer with ax* \ is injured by enraged cow
  ],

  align(center)[
    (ii) The farmer is injured \ by enraged *cow which uses ax*
  ],
)


#pagebreak()



== \#2. Using Constituency Tests

#set par(
  justify: true,
  leading: 1.2em,
  first-line-indent: 10pt,
)

#linebreak()

#align(center)[
  (a) Juliet says that Romeo lies to his parents a lot.
]

#linebreak()

#ko[
  (a)는 부사 'a lot'이 수식하는 성분에 따라 통사적 모호성을 지닌다. 구체적으로 다음 두 가지 방식 (i)과 (ii)로 해석할 수 있다.
]

#linebreak()

#set par(
  justify: true,
  leading: 0.8em,
  first-line-indent: 10pt,
)

#grid(
  columns: (1fr,  1fr),
  rows: 2,
  align: center,
  
  align(center)[
    #mytree2(
      "[TP [NP [!N Juliet]] [VP [!V says] [CP [!C that] [TP [NP [!N Romeo]] [VP [!*V* *lies*] [PP [!P to] [NP [!D his] [!N parents]]][*AdvP* [!Adv *a*$space.thin$*lot*]]]]]]]"
    )
  ],
  
  align(center)[
    #mytree2(
      "[TP [NP [!N Juliet]] [VP [!*V* *says*] [CP [!C that] [TP [NP [!N Romeo]] [VP [!V lies] [PP [!P to] [NP [!D his] [!N parents]]]]]] [*AdvP* [!Adv *a*$space.thin$*lot*]]]]"
    )
  ],

  align(center)[
    #linebreak()
    (i) Juliet says \ that Romeo *frequently lies* to his parents.
  ],

  align(center)[
    #linebreak()
    (ii) Juliet *frequently says* \ that Romeo lies to his parents.
  ],
)

#linebreak()

#align(center)[
  (c) Lie to his parents a lot, Juliet says that Romeo does.
]

#linebreak()

#set par(
  justify: true,
  leading: 1.2em,
  first-line-indent: 10pt,
)

#ko[
  한편, 어떤 단어 연쇄가 문장의 구성소(constituent)인지 판별하는 방법으로 해당 단어 연쇄를 전치(prepose)하는 방법이 있다. (c)는 (a)의 'lie to his parents a lot'이 구성소인지 판별하기 위해 전치한 문장이다. 이때 (c)는 정문이므로, 'lie to his parents a lot'은 (a)를 이루는 구성소라고 할 수 있다.
]

#ko[
  여기서 주목할 것은, 'lies to his parents a lot'은 (i)에서는 구성소로 기능하지만, (ii)에서는 구성소가 아니라는 점이다. 이는 곧 'lies to his parents a lot'이 구성소라면 (i)의 구조만 성립할 수 있음을 의미한다. 따라서 (c)는 (i) 즉 로미오가 거짓말을 많이 한다는 의미로만 해석되고, 자연히 중의성은 해소된다.
]

#linebreak()

#align(center)[
  (d) Lie to his parents, Juliet says that Romeo does a lot.
]

#linebreak()

#ko[
  (d)는 (a)의 'lie to his parents'가 구성소인지 판별하기 위해 전치한 문장이다. (d)는 정문이므로, 'lie to his parents'는 (a)를 이루는 구성소가 된다. 이때 'lies to his parents a lot'은 (i)과 (ii) 모두에서 구성소이므로, (i)과 (ii)의 구조 모두가 성립할 수 있다. 따라서 (d)는 (i)과 (ii)의 의미 모두로 해석되고, 중의성이 여전히 남게 되었다.
]

#pagebreak()

== \#3. Leash and Clean up after your pet.

#linebreak()

#align(center)[
  (a) Leash and clean up after your pets.
]

#ko[
  위 문장 (a)를 생각하자. (a)는 비문이 아니지만, 이때까지 다룬 이론 위에서 설명하기에는 어려워 보인다. 그 이유는 크게 두 가지이다. 첫째는 'and'로 접속된 두 동사가 목적어를 공유하고 있다는 것이고, 둘째는 구동사(phrasal verb)를 수형도 내에서 표현할 방법이 마땅하지 않다는 것이다.
]

#align(center)[
  (b) _Leash_ your pets. \ 
  (c) _Clean up after_ your pets. \
  (d) $ast.basic$_Leash after_ your pets. \
]

#ko[
  우선 (b)\~(d)를 살펴보면서 (a)의 대략적인 문장 구조를 파악해 보자. (a)에 있는 등위 접속사 'and'는 통사 범주가 같은 두 구성소를 연결한다. 한편 (b)와 (c)를 보면, 동사 'leash'와 'clean up after' 모두 명사구가 후행할 것을 요구하고 있다. 이로부터 'leash'와 'clean up after'의 통사 범주가 같다는 점을 알 수 있다.
  
  물론 'leash'와 'clean up'이 전치사구가 후행할 것을 요구한다고도 생각해 볼 수 있다. 그러나 이 가설은 (d)를 통해 반박된다. 'leash' 뒤에 곧바로 전치사구가 이어지는 형태는 비문이기 때문이다.
  
  따라서 (a)는, 'and'로 접속된 동사구 'leash'와 'clean up with'가 공통의 목적어 'your pets'를 가지는 구조를 띠고 있다고 결론내릴 수 있다. 
]


#grid(
  columns: (1fr,  1fr),
  rows: 2,
  align: center,
  
  align(center)[
    (i)
  ],

  align(center)[
    (ii)
  ],
  
  align(center)[
    #set par(leading: 0.8em)
    #linebreak()
    #mytree(
      "[VP [V [!V leash] [!conj and] [^V? clean up after]] [^NP your pets]]"
    )
  ],
  
  align(center)[
    #set par(leading: 0.8em)
    #linebreak()
    #mytree(
      "[$ast.basic$VP [VP [!V Leash]] [!conj and] [VP [!V *clean*$space.thin$*up*] [PP [!P *after*] [NP [!D your] [!N pets]]]]]"
    )
  ]
)


#ko[
  #h(10pt)
  문제는, 이때까지 학습한 구 구조 문법만을 사용해서는 (a)의 구조를 수형도로 나타낼 수 없다는 것이다.
  
  (i)은 'leash'와 'clean up after'가 목적어(NP)를 공유한다는 사실을 나타낼 수 있지만, 'clean up after'의 내부 구조를 분석하는 과정에서 오류가 발생한다. $V -> V "conj" V$이므로 'clean up after'에 할당되는 통사 범주는 필연적으로 동사일 수밖에 없는데, 'clean up'의 품사도 동사이므로 동사 안에 동사가 존재하는 모순이 발생한다.
  
  (ii) 역시 잘못 그려진 수형도이다. 타동사 'leash'에 연결되는 명사구 즉 목적어가 없기 때문이다. 명사구 'your pets'를 동사구 'leash'의 딸 절점으로 만들고자 선을 이으면 교차분지(crossing branch) 제약에 위반되므로 이 또한 적절하지 않은 수형도가 된다.
  
  따라서 명사구 'your pet'이 동사 'leash'의 목적어인 동시에 전치사 'after'의 목적어가 되도록 수형도를 그리는 것은 불가능하다.
]

#pagebreak()

== \#4. Draw a Tree

#align(center)[
  #syntree(
    nonterminal: (font: "Linux Biolinum"),
    terminal: (font: "Linux Biolinum"),
    child-spacing: 2em,
    layer-spacing: 1.5em,
    
    "[R [C B] [D [F] [E G H]]]"
  )
]

#linebreak()


== \#5. Negative Polarity Items

#linebreak()

#ko[
  (a)와 (b)로부터 any는 반드시 not과 함께 쓰여야 한다는 사실을 알 수 있었다. (e)와 (f)는 any가 not과 어떤 관계를 이루어야 하는지에 대한 실마리를 제공한다. 세울 수 있는 가설은 두 가지이다.
  
  첫 번째 가설은 'not이 any에 선행(precede)해야 한다.'이다. (e)에서는 not이 any에 선행하는 반면, (f)에서 any가 not에 선행하기 때문이다. 두 번째 가설은 'not이 any를 성분통어(c-command)해야 한다.'이다. (e)에서 not은 any를 성분통어하지만, (f)에서는 그렇지 않기 때문이다. (f)의 any를 관할하는 NP 절점이 not 절점을 관할하지 않는 데서 이 사실을 알 수 있다.
]

#grid(
  columns: (1fr,  1fr),
  rows: 2,
  align: center,
  
  align(center)[
    (e)
  ],

  align(center)[
    (f)
  ],
  
  align(center)[
    #set par(leading: 0.8em)
    #linebreak()
    #mytree(
      "[TP [NP [!N I]] [!T did] [VP [!Neg *not*] [!V have] [NP [!D *any*] [!N money]]]]"
    )
  ],
  
  align(center)[
    #set par(leading: 0.8em)
    #linebreak()
    #mytree(
      "[$ast.basic$TP [NP [!D *Any*] [!N money]] [!T was] [VP [!Neg *not*] [!V found] [PP [!P in] [NP [!D the] [!N box]]]]]"
    )
  ]
)


#ko[
  #h(10pt)
  두 가설 가운데 어느 것이 맞는지는 (g)를 통해 알 수 있다. (g)에서 not은 any에 선행하는 동시에 any를 성분통어하지 않는다. (g)는 비문이므로, not과 any의 관계를 '선행'으로 파악한 첫 번째 가설은 기각된다. 따라서 *not은 any를 성분통어해야 한다*는 결론을 내릴 수 있다.
]

#grid(
  columns: 1fr,
  rows: 2,
  align: center,
  
  align(center)[
    (g)
  ],
  
  align(center)[
    #set par(leading: 0.8em)
    #linebreak()
    #syntree(
      nonterminal: (font: "Linux Biolinum"),
      terminal: (font: "Linux Libertine"),
      child-spacing: 0.6em,
      layer-spacing: 1.5em,
      "[$ast.basic$TP [NP [!D The] [!N man] [CP [!C that] [TP [NP [!N Susan]] [!T did] [VP [!Neg *n't*] [!V like]]]]] [VP [!V had] [NP [!D *any*] [!N money]]]]"
    )
  ]
)

== \#6. Binding Domain

#align(center)[
  #set par(leading: 0.8em)
  #linebreak()
  #syntree(
    nonterminal: (font: "Linux Biolinum"),
    terminal: (font: "Linux Libertine"),
    child-spacing: 1em,
    layer-spacing: 2em,
    "[TP [NP$zws_i$ [!N Andy]] [VP [!V dismayed] [NP$zws_m$ [NP$zws_i$ [!N his]] [!N father]]]]"
  )
]

#ko[
  #h(10pt)
  이때까지 다룬 이론에 따르면, 대명사는 결속 영역(binding domain) 내에서 결속되어서는 안 된다는 원칙이 있었다. 그러나 위 문장은 이 원칙을 위배하고 있다. 이 문장에서 'his' 명사구의 결속 영역은 TP인데, 'Andy' 명사구가 'his' 명사구를 TP 안에서 결속(bind)하기 때문이다. *대명사 'his'가 결속 영역 안에서 결속*되었으므로, 이론에 근거한다면 위 문장을 비문으로 평가해야 할 것이다.
]

#linebreak()

== \#7. Japanese

#linebreak()

*Q1*
#h(10pt)
#ko[
  (a)를 통해, 'zibunzisin'은 *대용어(anaphor)*임을 알 수 있다. (a)에서 'zibunzisin'을 결속하는 것은 'Kazuko'가 아니라 'Taroo'이다. 이때 'zibunzisin'의 결속 영역은 그를 포함하는 가장 작은 TP, 즉 'Tarooga zibunzisino hihansita'이므로, 'zibunzisin'은 결속 영역 안에서 결속된 것이다. 대명사는 결속 영역 안에서 결속할 수 없고, 대용어만 결속 영역 안에서 결속할 수 있으므로 'zibunzisin'은 대용어일 것이라고 예측해 볼 수 있다.
]

#linebreak()

*Q2*
#h(10pt)
#ko[
  한편 (b)를 통해 앞선 예측이 틀렸음을 알 수 있다. (b)에서 'zibunzisin'은 결속 영역 밖에 있는 선행사에도 결속되기 때문이다. 실제로 'zibunzisin'은 'Kazuko'에 결속되는데, 'Kazuko'는 결속 영역 밖에 있기 때문이다. 따라서 (b)에서 'zibunzisin'은 대명사적인 성격을 지닌다.
  
  (a)와 (b)를 종합하면, 'zibunzisin'은 격에 따라 성격이 달라진다는 결론을 내릴 수 있다. 'zibunzisin'이 (a)에서처럼 *목적격이면 대용어적인 성격*을, (b)에서처럼 *주격이면 대명사적인 성격*을 드러낸다는 것이다.
]

#linebreak()

*Q3*
#h(10pt)
#ko[
  (c)는 *결속 원칙 C에 위배*된다. 결속 원칙 C는 '고유명사(R-expression)는 결속되면 안 된다'는 것인데, (c)에서는 'zibunzisin'이 고유명사 'Taroo'를 결속하고 있다. 따라서 (c)는 결속 원칙 C를 위배하여 비문이 된다.
]