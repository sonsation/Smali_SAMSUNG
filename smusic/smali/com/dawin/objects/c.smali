.class public Lcom/dawin/objects/c;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public a:Lcom/dawin/objects/d;

.field public b:Lcom/dawin/objects/b;

.field public c:I

.field public d:I

.field public e:Z

.field private f:Landroid/content/Context;

.field private g:Lcom/dawin/util/d;

.field private h:Landroid/widget/ImageButton;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/dawin/objects/c;->k:I

    iput v2, p0, Lcom/dawin/objects/c;->l:I

    iput v1, p0, Lcom/dawin/objects/c;->c:I

    iput v1, p0, Lcom/dawin/objects/c;->d:I

    iput-boolean v2, p0, Lcom/dawin/objects/c;->e:Z

    iput v1, p0, Lcom/dawin/objects/c;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    iput v1, p0, Lcom/dawin/objects/c;->p:I

    iput v2, p0, Lcom/dawin/objects/c;->q:I

    iput v1, p0, Lcom/dawin/objects/c;->r:I

    iput v1, p0, Lcom/dawin/objects/c;->s:I

    iput-object p1, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    new-instance v0, Lcom/dawin/util/d;

    iget-object v1, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/dawin/util/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dawin/objects/c;->g:Lcom/dawin/util/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dawin/objects/c;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    return-void
.end method

.method private a(IILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "minute"    # I
    .param p2, "second"    # I
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, ""

    .local v0, "result":Ljava/lang/String;
    const-string/jumbo v1, "s"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%01d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "ss"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "sss"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%03d"

    new-array v3, v7, [Ljava/lang/Object;

    mul-int/lit8 v4, p1, 0x3c

    add-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "m:ss"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%01d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "mm:ss"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/dawin/objects/c;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/c;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/dawin/objects/c;)I
    .locals 1

    iget v0, p0, Lcom/dawin/objects/c;->m:I

    return v0
.end method

.method static synthetic c(Lcom/dawin/objects/c;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/dawin/objects/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/dawin/objects/c;)I
    .locals 1

    iget v0, p0, Lcom/dawin/objects/c;->s:I

    return v0
.end method


# virtual methods
.method public a(F)I
    .locals 2
    .param p1, "px"    # F

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 4
    .param p1, "pxString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    if-eqz p1, :cond_1

    const-string/jumbo v2, "px"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "px"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    :goto_0
    int-to-float v2, v1

    invoke-virtual {p0, v2}, Lcom/dawin/objects/c;->a(F)I

    move-result v2

    return v2

    :cond_1
    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, -0x2

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->h:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->h:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/dawin/objects/c;->k:I

    :goto_0
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->i:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->i:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/dawin/objects/c;->l:I

    :goto_1
    iget v1, p0, Lcom/dawin/objects/c;->k:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/dawin/objects/c;->l:I

    if-lez v1, :cond_6

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/dawin/objects/c;->k:I

    iget v2, p0, Lcom/dawin/objects/c;->l:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_2
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->d:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->d:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_3
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->e:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->e:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_4
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->f:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->f:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_5
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->g:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->g:Ljava/lang/String;

    const-string v2, "%"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :goto_6
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_0
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_2
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_3
    return-object v0

    .end local v0    # "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dawin/objects/c;->k:I

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/dawin/objects/c;->l:I

    goto/16 :goto_1

    :cond_6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v0    # "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_3

    :cond_8
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_4

    :cond_9
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->f:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_5

    :cond_a
    iget-object v1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v1, v1, Lcom/dawin/objects/d;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_6
.end method

.method public a()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v0, v0, Lcom/dawin/objects/d;->a:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    invoke-virtual {v0}, Lcom/dawin/objects/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/dawin/objects/c$2;

    invoke-direct {v1, p0}, Lcom/dawin/objects/c$2;-><init>(Lcom/dawin/objects/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5
    .param p1, "currenttime"    # I

    .prologue
    const/4 v4, -0x1

    iget-object v2, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v2, v2, Lcom/dawin/objects/d;->a:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v2, v2, Lcom/dawin/objects/d;->c:I

    const v3, 0x9c40

    if-ne v2, v3, :cond_1

    if-lez p1, :cond_3

    iget v2, p0, Lcom/dawin/objects/c;->p:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/dawin/objects/c;->m:I

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/dawin/objects/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/dawin/objects/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/dawin/objects/c;->m:I

    if-lt v2, v3, :cond_3

    div-int/lit16 p1, p1, 0x3e8

    const/4 v1, 0x0

    .local v1, "time":I
    iget-object v2, p0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, p1

    :cond_0
    :goto_0
    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit16 v3, v1, 0xe10

    rem-int/lit8 v3, v3, 0x3c

    iget-object v4, p0, Lcom/dawin/objects/c;->n:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/dawin/objects/c;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "rTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/dawin/objects/c$3;

    invoke-direct {v3, p0, v0}, Lcom/dawin/objects/c$3;-><init>(Lcom/dawin/objects/c;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v0    # "rTime":Ljava/lang/String;
    .end local v1    # "time":I
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "time":I
    :cond_2
    iget-object v2, p0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    const-string v3, "down"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/dawin/objects/c;->p:I

    iget v3, p0, Lcom/dawin/objects/c;->q:I

    add-int/2addr v3, p1

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/dawin/objects/c;->p:I

    if-le v2, p1, :cond_0

    iget v2, p0, Lcom/dawin/objects/c;->p:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/dawin/objects/c;->q:I

    iget v1, p0, Lcom/dawin/objects/c;->q:I

    goto :goto_0

    .end local v1    # "time":I
    :cond_3
    if-lez p1, :cond_1

    iget v2, p0, Lcom/dawin/objects/c;->p:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/dawin/objects/c;->m:I

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/dawin/objects/c;->m:I

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/dawin/objects/c$4;

    invoke-direct {v3, p0}, Lcom/dawin/objects/c$4;-><init>(Lcom/dawin/objects/c;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    div-int/lit16 p1, p1, 0x3e8

    const/4 v1, 0x0

    .restart local v1    # "time":I
    iget-object v2, p0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, p1

    :cond_4
    :goto_2
    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit16 v3, v1, 0xe10

    rem-int/lit8 v3, v3, 0x3c

    iget-object v4, p0, Lcom/dawin/objects/c;->n:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/dawin/objects/c;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "rTime":Ljava/lang/String;
    iget v2, p0, Lcom/dawin/objects/c;->r:I

    if-eq v2, v1, :cond_1

    iput v1, p0, Lcom/dawin/objects/c;->r:I

    iget-object v2, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/dawin/objects/c$5;

    invoke-direct {v3, p0, v0}, Lcom/dawin/objects/c$5;-><init>(Lcom/dawin/objects/c;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .end local v0    # "rTime":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    const-string v3, "down"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/dawin/objects/c;->p:I

    iget v3, p0, Lcom/dawin/objects/c;->q:I

    add-int/2addr v3, p1

    if-gt v2, v3, :cond_4

    iget v2, p0, Lcom/dawin/objects/c;->p:I

    if-le v2, p1, :cond_4

    iget v2, p0, Lcom/dawin/objects/c;->p:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/dawin/objects/c;->q:I

    iget v1, p0, Lcom/dawin/objects/c;->q:I

    goto :goto_2
.end method

.method public a(Lcom/dawin/objects/d;Lcom/dawin/objects/b;I)V
    .locals 14
    .param p1, "extensionInfo"    # Lcom/dawin/objects/d;
    .param p2, "extensionBitmap"    # Lcom/dawin/objects/b;
    .param p3, "duration"    # I

    .prologue
    iput-object p1, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    move/from16 v0, p3

    iput v0, p0, Lcom/dawin/objects/c;->s:I

    :try_start_0
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->q:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->q:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->q:Ljava/lang/String;

    invoke-static {v10}, Lcom/dawin/util/CommonUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/dawin/objects/c;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->r:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->r:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->r:Ljava/lang/String;

    invoke-static {v10}, Lcom/dawin/util/CommonUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/dawin/objects/c;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v10, v10, Lcom/dawin/objects/d;->a:I

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_3

    new-instance v10, Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/dawin/objects/c;->h:Landroid/widget/ImageButton;

    iget-object v10, p0, Lcom/dawin/objects/c;->g:Lcom/dawin/util/d;

    iget-object v11, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v11, v11, Lcom/dawin/objects/d;->p:Ljava/lang/String;

    iget-object v12, p0, Lcom/dawin/objects/c;->h:Landroid/widget/ImageButton;

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/dawin/util/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;Z)Z

    iget-object v10, p0, Lcom/dawin/objects/c;->h:Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v10, p0, Lcom/dawin/objects/c;->h:Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v10, p0, Lcom/dawin/objects/c;->h:Landroid/widget/ImageButton;

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v10, v11}, Lcom/dawin/objects/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v10, v10, Lcom/dawin/objects/d;->a:I

    const/16 v11, 0x64

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v5, v10, :cond_5

    const/4 v8, 0x0

    .local v8, "radius":I
    const/4 v1, 0x0

    .local v1, "bEdgeSize":I
    :try_start_2
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->o:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v8

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->n:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->l:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->l:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .local v4, "gDrawable":Landroid/graphics/drawable/GradientDrawable;
    if-lez v1, :cond_4

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->m:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->m:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->m:Ljava/lang/String;

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v1, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_4
    int-to-float v10, v8

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->l:Ljava/lang/String;

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0, v4}, Lcom/dawin/objects/c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .end local v4    # "gDrawable":Landroid/graphics/drawable/GradientDrawable;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .end local v1    # "bEdgeSize":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "radius":I
    :cond_5
    :try_start_3
    iget-object v10, p0, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    invoke-virtual {v10}, Lcom/dawin/objects/b;->a()Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-boolean v10, v10, Lcom/dawin/objects/d;->k:Z

    if-eqz v10, :cond_f

    new-instance v6, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v6, "imageView":Landroid/widget/ImageView;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setFocusable(Z)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v10, v10, Lcom/dawin/objects/d;->c:I

    const v11, 0x9c40

    if-ne v10, v11, :cond_6

    iget v10, p0, Lcom/dawin/objects/c;->p:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    :try_start_4
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->c:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/dawin/objects/c;->p:I

    iget v10, p0, Lcom/dawin/objects/c;->p:I

    iput v10, p0, Lcom/dawin/objects/c;->q:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_4
    :try_start_5
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->b:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->a:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    iput v5, p0, Lcom/dawin/objects/c;->m:I

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->b:Ljava/lang/String;

    iput-object v10, p0, Lcom/dawin/objects/c;->n:Ljava/lang/String;

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->a:Ljava/lang/String;

    iput-object v10, p0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    iget-object v10, p0, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    iget-object v11, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    const/16 v12, 0xa

    iget v13, p0, Lcom/dawin/objects/c;->p:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/dawin/objects/b;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_7
    :goto_5
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v7, "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->j:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->k:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->l:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->m:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->j:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->j:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    const/16 v10, 0x9

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_8
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->k:Ljava/lang/String;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->k:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_9
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->l:Ljava/lang/String;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->l:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const/16 v10, 0xb

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_a
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->m:Ljava/lang/String;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->m:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const/16 v10, 0xc

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_b
    iget-object v10, p0, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v6, v7}, Lcom/dawin/objects/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v7    # "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .restart local v6    # "imageView":Landroid/widget/ImageView;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "imageView":Landroid/widget/ImageView;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "imageView":Landroid/widget/ImageView;
    :cond_c
    :try_start_6
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v10, v10, Lcom/dawin/objects/d;->c:I

    const/16 v11, 0x7530

    if-ne v10, v11, :cond_d

    iget-object v10, p0, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    iget-object v11, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    const/16 v12, 0x64

    const-string v13, ""

    invoke-virtual {v10, v11, v12, v13}, Lcom/dawin/objects/b;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    :cond_d
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v10, v10, Lcom/dawin/objects/d;->c:I

    const v11, 0x9c40

    if-ne v10, v11, :cond_7

    iget v10, p0, Lcom/dawin/objects/c;->s:I

    const/16 v11, 0x3e80

    if-lt v10, v11, :cond_e

    iget-object v10, p0, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    iget-object v11, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    const/16 v12, 0x3e8

    const-string v13, ""

    invoke-virtual {v10, v11, v12, v13}, Lcom/dawin/objects/b;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    :cond_e
    iget-object v10, p0, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    iget-object v11, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    const/16 v12, 0x3e9

    const-string v13, ""

    invoke-virtual {v10, v11, v12, v13}, Lcom/dawin/objects/b;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .end local v6    # "imageView":Landroid/widget/ImageView;
    :cond_f
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .local v9, "textView":Landroid/widget/TextView;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v10, v10, Lcom/dawin/objects/d;->c:I

    const v11, 0x9c40

    if-ne v10, v11, :cond_10

    iget v10, p0, Lcom/dawin/objects/c;->p:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_10

    :try_start_7
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->c:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/dawin/objects/c;->p:I

    iget v10, p0, Lcom/dawin/objects/c;->p:I

    iput v10, p0, Lcom/dawin/objects/c;->q:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_10
    :goto_7
    :try_start_8
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->f:Ljava/lang/String;

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    .local v3, "fontStyle":I
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->g:Ljava/lang/String;

    const-string v11, "bold"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_18

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->g:Ljava/lang/String;

    const-string v11, "italic"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v3, 0x3

    :cond_11
    :goto_8
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->d:Ljava/lang/String;

    const-string/jumbo v11, "sans-serif"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1a

    sget-object v10, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_9
    const/4 v11, 0x0

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->e:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->i:Ljava/lang/String;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->i:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->i:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v10

    int-to-float v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->h:Ljava/lang/String;

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v11, v12, v13, v10}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_12
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->b:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->a:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iput v5, p0, Lcom/dawin/objects/c;->m:I

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->b:Ljava/lang/String;

    iput-object v10, p0, Lcom/dawin/objects/c;->n:Ljava/lang/String;

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->a:Ljava/lang/String;

    iput-object v10, p0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    :cond_13
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v7, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .restart local v7    # "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->j:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->k:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->l:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->m:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/dawin/objects/c;->a(Ljava/lang/String;)I

    move-result v10

    iput v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->j:Ljava/lang/String;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->j:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    const/16 v10, 0x9

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_14
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->k:Ljava/lang/String;

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->k:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_15
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->l:Ljava/lang/String;

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->l:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    const/16 v10, 0xb

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_16
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->m:Ljava/lang/String;

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->m:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    const/16 v10, 0xc

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_17
    iget-object v10, p0, Lcom/dawin/objects/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v9, v7}, Lcom/dawin/objects/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .end local v3    # "fontStyle":I
    .end local v7    # "mParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "fontStyle":I
    :cond_18
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->g:Ljava/lang/String;

    const-string v11, "bold"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_19

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_19
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->g:Ljava/lang/String;

    const-string v11, "italic"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v3, 0x2

    goto/16 :goto_8

    :cond_1a
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->d:Ljava/lang/String;

    const-string/jumbo v11, "serif"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1b

    sget-object v10, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_9

    :cond_1b
    iget-object v10, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget-object v10, v10, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dawin/objects/d$a;

    iget-object v10, v10, Lcom/dawin/objects/d$a;->d:Ljava/lang/String;

    const-string v11, "monospace"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1c

    sget-object v10, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_9

    :cond_1c
    sget-object v10, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_9
.end method

.method public b(II)V
    .locals 5
    .param p1, "currenttime"    # I
    .param p2, "duration"    # I

    .prologue
    iget-object v2, p0, Lcom/dawin/objects/c;->a:Lcom/dawin/objects/d;

    iget v2, v2, Lcom/dawin/objects/d;->c:I

    const v3, 0xc350

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/dawin/objects/c;->m:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/dawin/objects/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/dawin/objects/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/dawin/objects/c;->m:I

    if-lt v2, v3, :cond_1

    const/4 v1, 0x0

    .local v1, "time":I
    iget-object v2, p0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    div-int/lit16 v1, p1, 0x3e8

    :cond_0
    :goto_0
    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit16 v3, v1, 0xe10

    rem-int/lit8 v3, v3, 0x3c

    iget-object v4, p0, Lcom/dawin/objects/c;->n:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/dawin/objects/c;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "rTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/dawin/objects/c;->f:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/dawin/objects/c$1;

    invoke-direct {v3, p0, v0}, Lcom/dawin/objects/c$1;-><init>(Lcom/dawin/objects/c;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v0    # "rTime":Ljava/lang/String;
    .end local v1    # "time":I
    :cond_1
    return-void

    .restart local v1    # "time":I
    :cond_2
    iget-object v2, p0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    const-string v3, "down"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    div-int/lit16 v2, p2, 0x3e8

    div-int/lit16 v3, p1, 0x3e8

    sub-int v1, v2, v3

    goto :goto_0
.end method
