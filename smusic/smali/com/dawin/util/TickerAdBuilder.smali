.class public Lcom/dawin/util/TickerAdBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/util/TickerAdBuilder$Ticker;,
        Lcom/dawin/util/TickerAdBuilder$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/http/parser/AdditionalInfoParser$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/http/parser/AdditionalInfoParser$a;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dawin/http/parser/AdditionalInfoParser$a;>;"
    .local p2, "bitmap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dawin/util/TickerAdBuilder;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/dawin/util/TickerAdBuilder;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public build(ILcom/dawin/util/CommonUtils$ScreenSize;)Lcom/dawin/util/TickerAdBuilder$Ticker;
    .locals 10
    .param p1, "orientation"    # I
    .param p2, "size"    # Lcom/dawin/util/CommonUtils$ScreenSize;

    .prologue
    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_0
    return-object v8

    :cond_2
    const/4 v8, 0x0

    .local v8, "ticker":Lcom/dawin/util/TickerAdBuilder$Ticker;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "tickerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dawin/util/TickerAdBuilder$a;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v7, v1, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v8, Lcom/dawin/util/TickerAdBuilder$Ticker;

    .end local v8    # "ticker":Lcom/dawin/util/TickerAdBuilder$Ticker;
    invoke-direct {v8, p0, p1, v9, p2}, Lcom/dawin/util/TickerAdBuilder$Ticker;-><init>(Lcom/dawin/util/TickerAdBuilder;ILjava/util/ArrayList;Lcom/dawin/util/CommonUtils$ScreenSize;)V

    .restart local v8    # "ticker":Lcom/dawin/util/TickerAdBuilder$Ticker;
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .local v0, "tickerInfo":Lcom/dawin/util/TickerAdBuilder$a;
    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    :cond_4
    new-instance v0, Lcom/dawin/util/TickerAdBuilder$a;

    .end local v0    # "tickerInfo":Lcom/dawin/util/TickerAdBuilder$a;
    invoke-virtual {p2}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v4

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dawin/http/parser/AdditionalInfoParser$a;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/dawin/util/TickerAdBuilder$a;-><init>(Lcom/dawin/util/TickerAdBuilder;IIILandroid/graphics/Bitmap;Lcom/dawin/http/parser/AdditionalInfoParser$a;)V

    .restart local v0    # "tickerInfo":Lcom/dawin/util/TickerAdBuilder$a;
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
