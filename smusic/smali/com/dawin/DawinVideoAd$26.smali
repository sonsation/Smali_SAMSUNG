.class Lcom/dawin/DawinVideoAd$26;
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
    iput-object p1, p0, Lcom/dawin/DawinVideoAd$26;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onCallStateChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$26;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->p(Lcom/dawin/DawinVideoAd;)I

    move-result v0

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$26;->a:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v0}, Lcom/dawin/DawinVideoAd;->onPause()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$26;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0, p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$26;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->p(Lcom/dawin/DawinVideoAd;)I

    move-result v0

    if-ne v0, v2, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$26;->a:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v0}, Lcom/dawin/DawinVideoAd;->onResume()V

    goto :goto_0
.end method
