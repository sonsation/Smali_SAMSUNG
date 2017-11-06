.class Lcom/dawin/DawinVideoAd$28;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/a/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd;->e()V
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
    iput-object p1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string/jumbo v1, "onVideoStarted =============>"

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->t(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1, v3}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;Z)V

    :try_start_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->u(Lcom/dawin/DawinVideoAd;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->v(Lcom/dawin/DawinVideoAd;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;Z)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getImpressionTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getImpressionTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v1

    const/16 v2, 0x384

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getImpressionTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&dawin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "A01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->w(Lcom/dawin/DawinVideoAd;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;Z)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getStartTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getStartTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v1

    const/16 v2, 0x3e8

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getStartTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&dawin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "A01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->r(Lcom/dawin/DawinVideoAd;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getActionMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Lcom/dawin/objects/AdInfos;->isAvailable(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v1, v2}, Lcom/dawin/objects/AdInfos;->isAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->B(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dawin/objects/c;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dawin/objects/c;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->D(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "exAction VISIBLE"

    invoke-static {v1}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->D(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dawin/objects/c;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->x(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->x(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->y(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->y(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->z(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->z(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->A(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->A(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->B(Lcom/dawin/DawinVideoAd;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2af8 -> :sswitch_2
        0x2ee0 -> :sswitch_3
        0x32c8 -> :sswitch_1
        0x36b0 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->d()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->i()V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;Z)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v1

    const/16 v2, 0x578

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getEndTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&dawin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "A01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "errorCode"    # I

    .prologue
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dawin/a/a;->i()V

    :cond_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\ube44\ub514\uc624 \uc624\ub958 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    const-string/jumbo v0, "onVideoSizeChange()"

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$28;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->E(Lcom/dawin/DawinVideoAd;)V

    return-void
.end method
