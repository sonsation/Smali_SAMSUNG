.class Lcom/dawin/DawinVideoAd$4;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd;->f()V
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
    iput-object p1, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    :try_start_0
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->F(Lcom/dawin/DawinVideoAd;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->f()I

    move-result v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->G(Lcom/dawin/DawinVideoAd;)I

    move-result v8

    if-le v7, v8, :cond_0

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->h()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;Z)V

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/objects/AdInfos;->getChargeTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/objects/AdInfos;->getChargeTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v7

    const/16 v8, 0x76c

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v10}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v10

    invoke-virtual {v10}, Lcom/dawin/objects/AdInfos;->getChargeTag()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&dawin="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "A01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/http/parser/ExtensionInfoParser;->getIsAvailable()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    iget-object v7, v7, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    iget-object v7, v7, Lcom/dawin/objects/c;->b:Lcom/dawin/objects/b;

    invoke-virtual {v7}, Lcom/dawin/objects/b;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/objects/c;->a()V

    :cond_1
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->H(Lcom/dawin/DawinVideoAd;)Z

    move-result v7

    if-nez v7, :cond_2

    :try_start_1
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->h()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->f()I

    move-result v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dawin/http/parser/ExtensionInfoParser;->getSkipShowTime()I

    move-result v8

    if-le v7, v8, :cond_2

    const-string v7, "SKIP BUTTON DISPLAY"

    invoke-static {v7}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->I(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->h()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->J(Lcom/dawin/DawinVideoAd;)I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->f()I

    move-result v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->K(Lcom/dawin/DawinVideoAd;)I

    move-result v8

    if-le v7, v8, :cond_a

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->f()I

    move-result v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->L(Lcom/dawin/DawinVideoAd;)I

    move-result v8

    if-ge v7, v8, :cond_a

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v7

    const/16 v8, 0x44c

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v10}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/dawin/objects/AdInfos;->getQuarterTag(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&dawin="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "A01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_3
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->h()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->N(Lcom/dawin/DawinVideoAd;)Lcom/dawin/util/TickerAdBuilder$Ticker;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->N(Lcom/dawin/DawinVideoAd;)Lcom/dawin/util/TickerAdBuilder$Ticker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->N(Lcom/dawin/DawinVideoAd;)Lcom/dawin/util/TickerAdBuilder$Ticker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->O(Lcom/dawin/DawinVideoAd;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/objects/AdInfos;->getAdDuration()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "duration":I
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->P(Lcom/dawin/DawinVideoAd;)I

    move-result v0

    .local v0, "currentPosition":I
    if-lez v0, :cond_5

    if-gt v0, v1, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->N(Lcom/dawin/DawinVideoAd;)Lcom/dawin/util/TickerAdBuilder$Ticker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "maxCount":I
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->O(Lcom/dawin/DawinVideoAd;)I

    move-result v7

    if-ge v7, v6, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->N(Lcom/dawin/DawinVideoAd;)Lcom/dawin/util/TickerAdBuilder$Ticker;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/util/TickerAdBuilder$Ticker;->getTickerList()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->O(Lcom/dawin/DawinVideoAd;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dawin/util/TickerAdBuilder$a;

    .local v4, "info":Lcom/dawin/util/TickerAdBuilder$a;
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->Q(Lcom/dawin/DawinVideoAd;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v4}, Lcom/dawin/util/TickerAdBuilder$a;->e()I

    move-result v7

    if-lt v0, v7, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->I(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x66

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .end local v0    # "currentPosition":I
    .end local v1    # "duration":I
    .end local v4    # "info":Lcom/dawin/util/TickerAdBuilder$a;
    .end local v6    # "maxCount":I
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/objects/c;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dawin/a/a;->f()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/dawin/objects/c;->a(I)V

    :cond_6
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/objects/c;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dawin/a/a;->f()I

    move-result v8

    iget-object v9, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v9}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/dawin/a/a;->g()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/dawin/objects/c;->b(II)V

    :cond_7
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->R(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->R(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    if-eqz v7, :cond_8

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->R(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_f

    const/4 v3, 0x0

    :goto_5
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->R(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_12

    .end local v3    # "i":I
    :cond_8
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->h(Lcom/dawin/DawinVideoAd;)Landroid/widget/ImageButton;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->H(Lcom/dawin/DawinVideoAd;)Z

    move-result v7

    if-nez v7, :cond_2

    :try_start_3
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->h()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->f()I

    move-result v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v8

    const/16 v9, 0x190

    invoke-virtual {v8, v9}, Lcom/dawin/objects/AdInfos;->getIconShowTime(I)I

    move-result v8

    if-le v7, v8, :cond_2

    const-string v7, "SKIP BUTTON DISPLAY"

    invoke-static {v7}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->I(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_4
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->J(Lcom/dawin/DawinVideoAd;)I

    move-result v7

    if-ne v7, v11, :cond_c

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->f()I

    move-result v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->L(Lcom/dawin/DawinVideoAd;)I

    move-result v8

    if-le v7, v8, :cond_c

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->f()I

    move-result v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->M(Lcom/dawin/DawinVideoAd;)I

    move-result v8

    if-ge v7, v8, :cond_c

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v7

    const/16 v8, 0x4b0

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v10}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/dawin/objects/AdInfos;->getQuarterTag(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&dawin="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "A01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_b
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_5
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->J(Lcom/dawin/DawinVideoAd;)I

    move-result v7

    if-ne v7, v12, :cond_4

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dawin/a/a;->f()I

    move-result v7

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->M(Lcom/dawin/DawinVideoAd;)I

    move-result v8

    if-le v7, v8, :cond_4

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v7

    const/16 v8, 0x514

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v10}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/dawin/objects/AdInfos;->getQuarterTag(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&dawin="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "A01"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_d
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .restart local v0    # "currentPosition":I
    .restart local v1    # "duration":I
    .restart local v4    # "info":Lcom/dawin/util/TickerAdBuilder$a;
    .restart local v6    # "maxCount":I
    :cond_e
    invoke-virtual {v4}, Lcom/dawin/util/TickerAdBuilder$a;->d()I

    move-result v7

    if-lt v0, v7, :cond_5

    invoke-virtual {v4}, Lcom/dawin/util/TickerAdBuilder$a;->e()I

    move-result v7

    if-gt v0, v7, :cond_5

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->I(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x65

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .end local v0    # "currentPosition":I
    .end local v1    # "duration":I
    .end local v4    # "info":Lcom/dawin/util/TickerAdBuilder$a;
    .end local v6    # "maxCount":I
    .restart local v3    # "i":I
    :cond_f
    :try_start_6
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->R(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dawin/objects/c;

    .local v5, "mButton":Lcom/dawin/objects/c;
    iget v7, v5, Lcom/dawin/objects/c;->c:I

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dawin/a/a;->f()I

    move-result v8

    if-gt v7, v8, :cond_10

    invoke-virtual {v5}, Lcom/dawin/objects/c;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_10

    iget-boolean v7, v5, Lcom/dawin/objects/c;->e:Z

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    new-instance v8, Lcom/dawin/DawinVideoAd$4$1;

    invoke-direct {v8, p0, v5}, Lcom/dawin/DawinVideoAd$4$1;-><init>(Lcom/dawin/DawinVideoAd$4;Lcom/dawin/objects/c;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_10
    iget v7, v5, Lcom/dawin/objects/c;->d:I

    iget-object v8, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v8}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dawin/a/a;->f()I

    move-result v8

    if-gt v7, v8, :cond_11

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    new-instance v8, Lcom/dawin/DawinVideoAd$4$2;

    invoke-direct {v8, p0, v5}, Lcom/dawin/DawinVideoAd$4$2;-><init>(Lcom/dawin/DawinVideoAd$4;Lcom/dawin/objects/c;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .end local v5    # "mButton":Lcom/dawin/objects/c;
    :cond_11
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_12
    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->R(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dawin/objects/c;

    iget-boolean v7, v7, Lcom/dawin/objects/c;->e:Z

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/dawin/DawinVideoAd$4;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v7}, Lcom/dawin/DawinVideoAd;->R(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5
.end method
