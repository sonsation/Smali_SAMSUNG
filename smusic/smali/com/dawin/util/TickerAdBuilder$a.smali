.class public Lcom/dawin/util/TickerAdBuilder$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/util/TickerAdBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/util/TickerAdBuilder;

.field private b:D

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/graphics/Bitmap;

.field private p:Lcom/dawin/http/parser/AdditionalInfoParser$a;


# direct methods
.method public constructor <init>(Lcom/dawin/util/TickerAdBuilder;IIILandroid/graphics/Bitmap;Lcom/dawin/http/parser/AdditionalInfoParser$a;)V
    .locals 5
    .param p2, "orientation"    # I
    .param p3, "_parentWidth"    # I
    .param p4, "_parentHeight"    # I
    .param p5, "_image"    # Landroid/graphics/Bitmap;
    .param p6, "_tickerAd"    # Lcom/dawin/http/parser/AdditionalInfoParser$a;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/dawin/util/TickerAdBuilder$a;->a:Lcom/dawin/util/TickerAdBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->b:D

    iput v2, p0, Lcom/dawin/util/TickerAdBuilder$a;->c:I

    iput v2, p0, Lcom/dawin/util/TickerAdBuilder$a;->d:I

    iput v2, p0, Lcom/dawin/util/TickerAdBuilder$a;->e:I

    iput v2, p0, Lcom/dawin/util/TickerAdBuilder$a;->f:I

    iput v2, p0, Lcom/dawin/util/TickerAdBuilder$a;->g:I

    iput v2, p0, Lcom/dawin/util/TickerAdBuilder$a;->h:I

    iput v4, p0, Lcom/dawin/util/TickerAdBuilder$a;->i:I

    iput v4, p0, Lcom/dawin/util/TickerAdBuilder$a;->j:I

    iput v4, p0, Lcom/dawin/util/TickerAdBuilder$a;->k:I

    iput v4, p0, Lcom/dawin/util/TickerAdBuilder$a;->l:I

    iput-boolean v4, p0, Lcom/dawin/util/TickerAdBuilder$a;->m:Z

    iput-boolean v4, p0, Lcom/dawin/util/TickerAdBuilder$a;->n:Z

    iput-object v3, p0, Lcom/dawin/util/TickerAdBuilder$a;->o:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/dawin/util/TickerAdBuilder$a;->p:Lcom/dawin/http/parser/AdditionalInfoParser$a;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iput p3, p0, Lcom/dawin/util/TickerAdBuilder$a;->c:I

    iput p4, p0, Lcom/dawin/util/TickerAdBuilder$a;->d:I

    :goto_0
    iput-object p6, p0, Lcom/dawin/util/TickerAdBuilder$a;->p:Lcom/dawin/http/parser/AdditionalInfoParser$a;

    iput-object p5, p0, Lcom/dawin/util/TickerAdBuilder$a;->o:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->g:I

    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->h:I

    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->p:Lcom/dawin/http/parser/AdditionalInfoParser$a;

    invoke-virtual {v0}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->c()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->b:D

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "######################################  Image ratio : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/dawin/util/TickerAdBuilder$a;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sizepercent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->p:Lcom/dawin/http/parser/AdditionalInfoParser$a;

    invoke-virtual {v1}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 50/100 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/dawin/util/TickerAdBuilder$a;->d(I)V

    :cond_0
    return-void

    :cond_1
    iput p3, p0, Lcom/dawin/util/TickerAdBuilder$a;->e:I

    iput p4, p0, Lcom/dawin/util/TickerAdBuilder$a;->f:I

    goto :goto_0
.end method

.method private d(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "-- set Ticker size - TickerInfo class"

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image ratio : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/dawin/util/TickerAdBuilder$a;->b:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitmap width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitmapHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    if-ne p1, v4, :cond_1

    iget-boolean v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->m:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->c:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/dawin/util/TickerAdBuilder$a;->b:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->i:I

    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->i:I

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->h:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->g:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->j:I

    iput-boolean v4, p0, Lcom/dawin/util/TickerAdBuilder$a;->m:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "portparentwidth : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", portParentHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "portAdjustedWidth : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", portAdjustedHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->n:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->e:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/dawin/util/TickerAdBuilder$a;->b:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->k:I

    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->k:I

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->h:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->g:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->l:I

    iput-boolean v4, p0, Lcom/dawin/util/TickerAdBuilder$a;->n:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "landParentwidth : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", landParentHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "landAdjustedWidth : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", landAdjustedHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a(ILcom/dawin/util/CommonUtils$ScreenSize;)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "size"    # Lcom/dawin/util/CommonUtils$ScreenSize;

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->m:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->c:I

    invoke-virtual {p2}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->d:I

    invoke-direct {p0, p1}, Lcom/dawin/util/TickerAdBuilder$a;->d(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->n:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->e:I

    invoke-virtual {p2}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->f:I

    invoke-direct {p0, p1}, Lcom/dawin/util/TickerAdBuilder$a;->d(I)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->f:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->e:I

    if-lez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->d:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$a;->c:I

    if-gtz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->i:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->k:I

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->p:Lcom/dawin/http/parser/AdditionalInfoParser$a;

    invoke-virtual {v0}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->p:Lcom/dawin/http/parser/AdditionalInfoParser$a;

    invoke-virtual {v0}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->b()I

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->j:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->l:I

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->p:Lcom/dawin/http/parser/AdditionalInfoParser$a;

    invoke-virtual {v0}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->d()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->p:Lcom/dawin/http/parser/AdditionalInfoParser$a;

    invoke-virtual {v0}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->e()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->p:Lcom/dawin/http/parser/AdditionalInfoParser$a;

    invoke-virtual {v0}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$a;->p:Lcom/dawin/http/parser/AdditionalInfoParser$a;

    invoke-virtual {v0}, Lcom/dawin/http/parser/AdditionalInfoParser$a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
