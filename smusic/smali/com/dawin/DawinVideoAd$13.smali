.class Lcom/dawin/DawinVideoAd$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd;->o()V
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
    iput-object p1, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer;)V
    .locals 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/16 v4, 0x3e8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string/jumbo v3, "onPrepared"

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    const-string/jumbo v4, "\uae30\ud0c0 \uc624\ub958"

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->I(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .local v2, "msg":Landroid/os/Message;
    iput v4, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->I(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->Z(Lcom/dawin/DawinVideoAd;)V

    if-eqz p1, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "media width : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", media height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->c(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "greatest common measure : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/dawin/util/CommonUtils;->a(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3, v7}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->U(Lcom/dawin/DawinVideoAd;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/dawin/a/a;->a(I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->V(Lcom/dawin/DawinVideoAd;)I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->X(Lcom/dawin/DawinVideoAd;)I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->U(Lcom/dawin/DawinVideoAd;)I

    move-result v4

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->V(Lcom/dawin/DawinVideoAd;)I

    move-result v5

    iget-object v6, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v6}, Lcom/dawin/DawinVideoAd;->X(Lcom/dawin/DawinVideoAd;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/dawin/a/a;->a(III)V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->E(Lcom/dawin/DawinVideoAd;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .local v0, "duration":I
    :try_start_0
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getChargeTime()I

    move-result v3

    add-int/lit16 v3, v3, 0x1f4

    if-ge v3, v0, :cond_5

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getChargeTime()I

    move-result v4

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->h(Lcom/dawin/DawinVideoAd;I)V

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Duration : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", chargetime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->G(Lcom/dawin/DawinVideoAd;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / real chargetime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getChargeTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/dawin/objects/AdInfos;->getQuarterTime(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->i(Lcom/dawin/DawinVideoAd;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/dawin/objects/AdInfos;->getQuarterTime(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->j(Lcom/dawin/DawinVideoAd;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/dawin/objects/AdInfos;->getQuarterTime(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->k(Lcom/dawin/DawinVideoAd;I)V

    :cond_3
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/a/a;->k()V

    goto/16 :goto_0

    .end local v0    # "duration":I
    :cond_4
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3, v8}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->U(Lcom/dawin/DawinVideoAd;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/dawin/a/a;->a(I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->W(Lcom/dawin/DawinVideoAd;)I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->Y(Lcom/dawin/DawinVideoAd;)I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->U(Lcom/dawin/DawinVideoAd;)I

    move-result v4

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->W(Lcom/dawin/DawinVideoAd;)I

    move-result v5

    iget-object v6, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v6}, Lcom/dawin/DawinVideoAd;->Y(Lcom/dawin/DawinVideoAd;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/dawin/a/a;->a(III)V

    goto/16 :goto_1

    .restart local v0    # "duration":I
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    add-int/lit16 v4, v0, -0x1f4

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->h(Lcom/dawin/DawinVideoAd;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getChargeTime()I

    move-result v4

    add-int/lit16 v4, v4, -0x3e8

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->h(Lcom/dawin/DawinVideoAd;I)V

    goto/16 :goto_3

    .end local v0    # "duration":I
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    const-string/jumbo v4, "\uae30\ud0c0 \uc624\ub958"

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$13;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0
.end method
