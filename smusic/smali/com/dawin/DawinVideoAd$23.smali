.class Lcom/dawin/DawinVideoAd$23;
.super Landroid/telephony/PhoneStateListener;


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
    iput-object p1, p0, Lcom/dawin/DawinVideoAd$23;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceStateChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$23;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0, v2}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$23;->a:Lcom/dawin/DawinVideoAd;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$23;->a:Lcom/dawin/DawinVideoAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$23;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0, v2}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$23;->a:Lcom/dawin/DawinVideoAd;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
