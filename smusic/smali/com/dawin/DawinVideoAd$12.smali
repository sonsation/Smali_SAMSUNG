.class Lcom/dawin/DawinVideoAd$12;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dawin/DawinVideoAd;
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
    iput-object p1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/http/parser/ExtensionInfoParser;->getIsAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/dawin/objects/c;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/dawin/objects/c;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdSkippableStateChange(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->h(Lcom/dawin/DawinVideoAd;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->h(Lcom/dawin/DawinVideoAd;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->i(Lcom/dawin/DawinVideoAd;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->i(Lcom/dawin/DawinVideoAd;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->j(Lcom/dawin/DawinVideoAd;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->k(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->l(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->m(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->n(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    :sswitch_5
    :try_start_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v1}, Lcom/dawin/DawinVideoAd;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_6
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x7d0 -> :sswitch_5
        0xbb8 -> :sswitch_6
    .end sparse-switch
.end method
