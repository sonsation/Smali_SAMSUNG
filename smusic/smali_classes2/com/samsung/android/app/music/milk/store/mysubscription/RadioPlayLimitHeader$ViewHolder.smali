.class Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;
.super Ljava/lang/Object;
.source "RadioPlayLimitHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# static fields
.field private static final NO_VALUE:Ljava/lang/String; = "-"


# instance fields
.field private availableCount:Landroid/widget/TextView;

.field private basicOffer:Landroid/widget/TextView;

.field private bonusOffer:Landroid/widget/TextView;

.field private duration:Landroid/widget/TextView;

.field private listenCount:Landroid/widget/TextView;

.field private modelName:Landroid/widget/TextView;

.field private totalOffer:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const v0, 0x7f120499

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->totalOffer:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f12049a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->basicOffer:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f12049b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->bonusOffer:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f12049c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->listenCount:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f12049d

    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->availableCount:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f120497

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->modelName:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f12049e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->duration:Landroid/widget/TextView;

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->init()V

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->modelName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->duration:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->basicOffer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->bonusOffer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->totalOffer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->listenCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->availableCount:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->totalOffer:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->basicOffer:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->bonusOffer:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->listenCount:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/RadioPlayLimitHeader$ViewHolder;->availableCount:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method
