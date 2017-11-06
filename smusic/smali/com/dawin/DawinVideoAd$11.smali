.class Lcom/dawin/DawinVideoAd$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/util/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd;->b(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/DawinVideoAd;


# direct methods
.method constructor <init>(Lcom/dawin/DawinVideoAd;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "bitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v7, 0x1

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onBitmapDownloadFinished---- bitmap count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    new-instance v4, Lcom/dawin/util/TickerAdBuilder;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getTickerList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v4, v1, p1}, Lcom/dawin/util/TickerAdBuilder;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->U(Lcom/dawin/DawinVideoAd;)I

    move-result v5

    new-instance v6, Lcom/dawin/util/CommonUtils$ScreenSize;

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->U(Lcom/dawin/DawinVideoAd;)I

    move-result v1

    if-ne v1, v7, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->V(Lcom/dawin/DawinVideoAd;)I

    move-result v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->U(Lcom/dawin/DawinVideoAd;)I

    move-result v1

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->X(Lcom/dawin/DawinVideoAd;)I

    move-result v1

    :goto_1
    invoke-direct {v6, v2, v1}, Lcom/dawin/util/CommonUtils$ScreenSize;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Lcom/dawin/util/TickerAdBuilder;->build(ILcom/dawin/util/CommonUtils$ScreenSize;)Lcom/dawin/util/TickerAdBuilder$Ticker;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;Lcom/dawin/util/TickerAdBuilder$Ticker;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->W(Lcom/dawin/DawinVideoAd;)I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->Y(Lcom/dawin/DawinVideoAd;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$11;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->I(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
