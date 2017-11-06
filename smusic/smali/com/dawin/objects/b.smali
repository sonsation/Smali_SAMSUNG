.class public Lcom/dawin/objects/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    iput v0, p0, Lcom/dawin/objects/b;->g:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/dawin/objects/b;->h:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/dawin/objects/b;->i:I

    const/16 v0, 0x6a

    iput v0, p0, Lcom/dawin/objects/b;->j:I

    const/16 v0, 0x60

    iput v0, p0, Lcom/dawin/objects/b;->k:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/dawin/objects/b;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/objects/b;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/dawin/objects/b;->b:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dawin/objects/b;->c:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/dawin/objects/b;->d:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/dawin/objects/b;->e:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/dawin/objects/b;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    .local v4, "width":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/dawin/objects/b;->h:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    return-object v3

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "paint":Landroid/graphics/Paint;
    .end local v3    # "result":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "paint":Landroid/graphics/Paint;
    .restart local v3    # "result":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/dawin/objects/b;->g:I

    mul-int/2addr v6, v1

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/dawin/objects/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/dawin/objects/b;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/b;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lcom/dawin/objects/b;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/dawin/objects/b;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic b(Lcom/dawin/objects/b;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/b;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic c(Lcom/dawin/objects/b;)I
    .locals 1

    iget v0, p0, Lcom/dawin/objects/b;->g:I

    return v0
.end method

.method static synthetic c(Lcom/dawin/objects/b;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/b;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic d(Lcom/dawin/objects/b;)I
    .locals 1

    iget v0, p0, Lcom/dawin/objects/b;->h:I

    return v0
.end method

.method static synthetic d(Lcom/dawin/objects/b;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/dawin/objects/b;->f:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic e(Lcom/dawin/objects/b;)I
    .locals 1

    iget v0, p0, Lcom/dawin/objects/b;->i:I

    return v0
.end method

.method static synthetic f(Lcom/dawin/objects/b;)I
    .locals 1

    iget v0, p0, Lcom/dawin/objects/b;->j:I

    return v0
.end method

.method static synthetic g(Lcom/dawin/objects/b;)I
    .locals 1

    iget v0, p0, Lcom/dawin/objects/b;->k:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "bm":Landroid/graphics/Bitmap;
    const/16 v9, 0xa

    move/from16 v0, p2

    if-ne v0, v9, :cond_3

    :try_start_0
    iget-object v9, p0, Lcom/dawin/objects/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "mBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v5, v9, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    invoke-direct {p0, v6}, Lcom/dawin/objects/b;->a(Ljava/util/ArrayList;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .end local v5    # "i":I
    .end local v6    # "mBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v2, v9, Landroid/util/DisplayMetrics;->density:F

    .local v2, "density":F
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .local v8, "width":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .local v4, "height":I
    int-to-float v9, v8

    mul-float/2addr v9, v2

    iget v10, p0, Lcom/dawin/objects/b;->l:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v10, v4

    mul-float/2addr v10, v2

    iget v11, p0, Lcom/dawin/objects/b;->l:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v10, v10

    const/4 v11, 0x1

    invoke-static {v1, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .end local v2    # "density":F
    .end local v4    # "height":I
    .end local v8    # "width":I
    :cond_1
    return-object v1

    .restart local v5    # "i":I
    .restart local v6    # "mBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    :cond_2
    add-int/lit8 v9, v5, 0x1

    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .local v7, "temp":I
    :try_start_2
    iget-object v9, p0, Lcom/dawin/objects/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/dawin/objects/b;->g:I

    iget v13, p0, Lcom/dawin/objects/b;->h:I

    invoke-static {v9, v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v6    # "mBitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    .end local v7    # "temp":I
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v9, 0x64

    move/from16 v0, p2

    if-ne v0, v9, :cond_4

    :try_start_4
    iget-object v1, p0, Lcom/dawin/objects/b;->d:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    const/16 v9, 0x3e8

    move/from16 v0, p2

    if-ne v0, v9, :cond_5

    iget-object v1, p0, Lcom/dawin/objects/b;->e:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_5
    const/16 v9, 0x3e9

    move/from16 v0, p2

    if-ne v0, v9, :cond_0

    iget-object v1, p0, Lcom/dawin/objects/b;->f:Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/dawin/util/d;

    invoke-direct {v0, p1}, Lcom/dawin/util/d;-><init>(Landroid/content/Context;)V

    .local v0, "downloader":Lcom/dawin/util/d;
    new-instance v2, Lcom/dawin/objects/b$1;

    invoke-direct {v2, p0}, Lcom/dawin/objects/b$1;-><init>(Lcom/dawin/objects/b;)V

    invoke-virtual {v0, v2}, Lcom/dawin/util/d;->a(Lcom/dawin/util/d$a;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "url":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/dawin/objects/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/dawin/util/d;->a(Ljava/util/ArrayList;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/dawin/objects/b;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/dawin/objects/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/objects/b;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
