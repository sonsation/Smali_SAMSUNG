.class public Lcom/dawin/util/TickerAdBuilder$Ticker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/util/TickerAdBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ticker"
.end annotation


# instance fields
.field final synthetic a:Lcom/dawin/util/TickerAdBuilder;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/util/TickerAdBuilder$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dawin/util/TickerAdBuilder;ILjava/util/ArrayList;Lcom/dawin/util/CommonUtils$ScreenSize;)V
    .locals 3
    .param p2, "orientation"    # I
    .param p4, "size"    # Lcom/dawin/util/CommonUtils$ScreenSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/util/TickerAdBuilder$a;",
            ">;",
            "Lcom/dawin/util/CommonUtils$ScreenSize;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "_tickerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/dawin/util/TickerAdBuilder$a;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->a:Lcom/dawin/util/TickerAdBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->b:Z

    iput-boolean v2, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->c:Z

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->d:I

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->e:I

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->f:I

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->g:I

    if-ne p2, v1, :cond_1

    iput-object p3, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->c:Z

    invoke-virtual {p4}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->d:I

    invoke-virtual {p4}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->e:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iput-object p3, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->b:Z

    invoke-virtual {p4}, Lcom/dawin/util/CommonUtils$ScreenSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->f:I

    invoke-virtual {p4}, Lcom/dawin/util/CommonUtils$ScreenSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->g:I

    goto :goto_0
.end method

.method private a(ILcom/dawin/util/CommonUtils$ScreenSize;)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "size"    # Lcom/dawin/util/CommonUtils$ScreenSize;

    .prologue
    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .end local v0    # "i":I
    :cond_0
    return-void

    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/util/TickerAdBuilder$a;

    invoke-virtual {v1, p1}, Lcom/dawin/util/TickerAdBuilder$a;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/util/TickerAdBuilder$a;

    invoke-virtual {v1, p1, p2}, Lcom/dawin/util/TickerAdBuilder$a;->a(ILcom/dawin/util/CommonUtils$ScreenSize;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/util/TickerAdBuilder$a;

    invoke-virtual {v1, p1}, Lcom/dawin/util/TickerAdBuilder$a;->a(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/util/TickerAdBuilder$a;

    invoke-virtual {v1, p1, p2}, Lcom/dawin/util/TickerAdBuilder$a;->a(ILcom/dawin/util/CommonUtils$ScreenSize;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getParam(II)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 8
    .param p1, "number"    # I
    .param p2, "orientation"    # I

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/util/TickerAdBuilder$a;

    invoke-virtual {v1, p2}, Lcom/dawin/util/TickerAdBuilder$a;->b(I)I

    move-result v2

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/util/TickerAdBuilder$a;

    invoke-virtual {v1, p2}, Lcom/dawin/util/TickerAdBuilder$a;->c(I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/util/TickerAdBuilder$a;

    invoke-virtual {v1}, Lcom/dawin/util/TickerAdBuilder$a;->c()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/util/TickerAdBuilder$a;

    invoke-virtual {v1}, Lcom/dawin/util/TickerAdBuilder$a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dawin/util/TickerAdBuilder$a;

    invoke-virtual {v1}, Lcom/dawin/util/TickerAdBuilder$a;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getScreenSize(I)Lcom/dawin/util/CommonUtils$ScreenSize;
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->f:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->g:I

    if-lez v0, :cond_1

    new-instance v0, Lcom/dawin/util/CommonUtils$ScreenSize;

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->f:I

    iget v2, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->g:I

    invoke-direct {v0, v1, v2}, Lcom/dawin/util/CommonUtils$ScreenSize;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->d:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->e:I

    if-lez v0, :cond_1

    new-instance v0, Lcom/dawin/util/CommonUtils$ScreenSize;

    iget v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->d:I

    iget v2, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->e:I

    invoke-direct {v0, v1, v2}, Lcom/dawin/util/CommonUtils$ScreenSize;-><init>(II)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTickerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/util/TickerAdBuilder$a;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isReady(I)Z
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->c:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->b:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScreenSize(ILcom/dawin/util/CommonUtils$ScreenSize;)Z
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "size"    # Lcom/dawin/util/CommonUtils$ScreenSize;

    .prologue
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-boolean v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/dawin/util/TickerAdBuilder$Ticker;->a(ILcom/dawin/util/CommonUtils$ScreenSize;)V

    iput-boolean v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->c:Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->b:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/dawin/util/TickerAdBuilder$Ticker;->a(ILcom/dawin/util/CommonUtils$ScreenSize;)V

    iput-boolean v1, p0, Lcom/dawin/util/TickerAdBuilder$Ticker;->b:Z

    goto :goto_0
.end method
