.class public Lcom/dawin/objects/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "density"    # I

    .prologue
    const/16 v1, 0x77

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4f

    iput v0, p0, Lcom/dawin/objects/a;->b:I

    const/16 v0, 0x6c

    iput v0, p0, Lcom/dawin/objects/a;->c:I

    const/16 v0, 0x131

    iput v0, p0, Lcom/dawin/objects/a;->d:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/dawin/objects/a;->e:I

    iput v1, p0, Lcom/dawin/objects/a;->f:I

    iput v1, p0, Lcom/dawin/objects/a;->g:I

    iput p1, p0, Lcom/dawin/objects/a;->a:I

    invoke-direct {p0}, Lcom/dawin/objects/a;->h()V

    return-void
.end method

.method private h()V
    .locals 7

    .prologue
    const/16 v6, 0x53

    const/16 v5, 0x37

    const/16 v4, 0x77

    const/16 v3, 0x47

    const/16 v2, 0x3c

    iget v0, p0, Lcom/dawin/objects/a;->a:I

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_0

    const-string v0, "-- LDPI"

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    const/16 v0, 0x28

    iput v0, p0, Lcom/dawin/objects/a;->b:I

    iput v5, p0, Lcom/dawin/objects/a;->c:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/dawin/objects/a;->e:I

    const/16 v0, 0x9b

    iput v0, p0, Lcom/dawin/objects/a;->d:I

    iput v2, p0, Lcom/dawin/objects/a;->f:I

    iput v2, p0, Lcom/dawin/objects/a;->g:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/dawin/objects/a;->a:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    const-string v0, "-- MDPI"

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    const/16 v0, 0x2f

    iput v0, p0, Lcom/dawin/objects/a;->b:I

    const/16 v0, 0x41

    iput v0, p0, Lcom/dawin/objects/a;->c:I

    iput v2, p0, Lcom/dawin/objects/a;->e:I

    const/16 v0, 0xb6

    iput v0, p0, Lcom/dawin/objects/a;->d:I

    iput v3, p0, Lcom/dawin/objects/a;->f:I

    iput v3, p0, Lcom/dawin/objects/a;->g:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/dawin/objects/a;->a:I

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    const-string v0, "-- HDPI"

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iput v5, p0, Lcom/dawin/objects/a;->b:I

    const/16 v0, 0x4c

    iput v0, p0, Lcom/dawin/objects/a;->c:I

    iput v3, p0, Lcom/dawin/objects/a;->e:I

    const/16 v0, 0xd6

    iput v0, p0, Lcom/dawin/objects/a;->d:I

    iput v6, p0, Lcom/dawin/objects/a;->f:I

    iput v6, p0, Lcom/dawin/objects/a;->g:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/dawin/objects/a;->a:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_3

    const-string v0, "-- XHDPI"

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    const/16 v0, 0x4f

    iput v0, p0, Lcom/dawin/objects/a;->b:I

    const/16 v0, 0x6c

    iput v0, p0, Lcom/dawin/objects/a;->c:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/dawin/objects/a;->e:I

    const/16 v0, 0x131

    iput v0, p0, Lcom/dawin/objects/a;->d:I

    iput v4, p0, Lcom/dawin/objects/a;->f:I

    iput v4, p0, Lcom/dawin/objects/a;->g:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/dawin/objects/a;->a:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_4

    const/16 v0, 0x63

    iput v0, p0, Lcom/dawin/objects/a;->b:I

    const/16 v0, 0x87

    iput v0, p0, Lcom/dawin/objects/a;->c:I

    const/16 v0, 0x80

    iput v0, p0, Lcom/dawin/objects/a;->e:I

    const/16 v0, 0x17d

    iput v0, p0, Lcom/dawin/objects/a;->d:I

    const/16 v0, 0x95

    iput v0, p0, Lcom/dawin/objects/a;->f:I

    const/16 v0, 0x95

    iput v0, p0, Lcom/dawin/objects/a;->g:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/dawin/objects/a;->a:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_5

    iput v4, p0, Lcom/dawin/objects/a;->b:I

    const/16 v0, 0xa2

    iput v0, p0, Lcom/dawin/objects/a;->c:I

    const/16 v0, 0x9a

    iput v0, p0, Lcom/dawin/objects/a;->e:I

    const/16 v0, 0x1c9

    iput v0, p0, Lcom/dawin/objects/a;->d:I

    const/16 v0, 0xb3

    iput v0, p0, Lcom/dawin/objects/a;->f:I

    const/16 v0, 0xb3

    iput v0, p0, Lcom/dawin/objects/a;->g:I

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/dawin/objects/a;->a:I

    mul-int/lit8 v0, v0, 0x77

    div-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lcom/dawin/objects/a;->b:I

    iget v0, p0, Lcom/dawin/objects/a;->a:I

    mul-int/lit16 v0, v0, 0xa2

    div-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lcom/dawin/objects/a;->c:I

    iget v0, p0, Lcom/dawin/objects/a;->a:I

    mul-int/lit16 v0, v0, 0x9a

    div-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lcom/dawin/objects/a;->e:I

    iget v0, p0, Lcom/dawin/objects/a;->a:I

    mul-int/lit16 v0, v0, 0x1c9

    div-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lcom/dawin/objects/a;->d:I

    iget v0, p0, Lcom/dawin/objects/a;->a:I

    mul-int/lit16 v0, v0, 0xb3

    div-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lcom/dawin/objects/a;->f:I

    iget v0, p0, Lcom/dawin/objects/a;->a:I

    mul-int/lit16 v0, v0, 0xb3

    div-int/lit16 v0, v0, 0x1e0

    iput v0, p0, Lcom/dawin/objects/a;->g:I

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/dawin/objects/a;->f:I

    iget v2, p0, Lcom/dawin/objects/a;->g:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public b()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/dawin/objects/a;->c:I

    iget v2, p0, Lcom/dawin/objects/a;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public c()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/dawin/objects/a;->d:I

    iget v2, p0, Lcom/dawin/objects/a;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public d()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/dawin/objects/a;->b:I

    iget v2, p0, Lcom/dawin/objects/a;->b:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "progressParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public e()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "buttonLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public f()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "skipLayoutParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public g()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "videoParam":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method
