.class Lcom/dawin/DawinVideoAd$27;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dawin/http/a$a;


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
    iput-object p1, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 4
    .param p1, "requestType"    # I
    .param p2, "statusCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x640

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onRequestError : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/16 v0, -0x64

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->r(Lcom/dawin/DawinVideoAd;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    const-string/jumbo v1, "\uc778\ud130\ub137 \uc5f0\uacb0 \uc624\ub958"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->r(Lcom/dawin/DawinVideoAd;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, -0xc8

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    const-string/jumbo v1, "xml \ud30c\uc2f1 \uc624\ub958"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=11&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xcc

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    const-string/jumbo v1, "\uad11\uace0 \uc5c6\uc74c"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=10&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    const-string/jumbo v1, "\uc11c\ubc84 \uc5f0\uacb0 \uc624\ub958"

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=21&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=20&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=30&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=40&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=50&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=70&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=80&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=60&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoComplete(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->s(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getErrorUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&ecd=90&dawin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "A01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdSkiped(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_2
        0x44c -> :sswitch_3
        0x4b0 -> :sswitch_4
        0x514 -> :sswitch_5
        0x578 -> :sswitch_8
        0x5dc -> :sswitch_9
        0x6a4 -> :sswitch_0
        0x76c -> :sswitch_6
        0x7d0 -> :sswitch_7
    .end sparse-switch
.end method

.method public a(ILorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 6
    .param p1, "requestType"    # I
    .param p2, "result"    # Lorg/apache/http/HttpResponse;
    .param p3, "extractString"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onRequestSuccess : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v3, "Request ad info receive success!!"

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3, v5}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;Z)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3, v5}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;Z)V

    :try_start_0
    const-string v3, "Content-Type"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "text/xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mimeType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "Content-Type"

    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/dawin/http/parser/a;

    invoke-direct {v2, p3}, Lcom/dawin/http/parser/a;-><init>(Ljava/lang/String;)V

    .local v2, "parser":Lcom/dawin/http/parser/a;
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-virtual {v2}, Lcom/dawin/http/parser/a;->a()Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;Lcom/dawin/objects/AdInfos;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->isParsingProblemOccured()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getAdId()Ljava/lang/String;

    move-result-object v0

    .local v0, "adId":Ljava/lang/String;
    if-eqz v0, :cond_7

    const-string v3, "-1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getSessionKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;I)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdLoaded(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action mode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getActionMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/http/parser/ExtensionInfoParser;->getExtensionBitmap()Lcom/dawin/objects/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/objects/b;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/http/parser/ExtensionInfoParser;->getExtensionBitmap()Lcom/dawin/objects/b;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->q(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dawin/objects/b;->a(Landroid/content/Context;)V

    :cond_2
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->isTickerAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getTickerList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;Ljava/util/ArrayList;)V

    :cond_3
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getActionMode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->isTickerAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getTickerList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/http/parser/ExtensionInfoParser;->getIsAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/http/parser/ExtensionInfoParser;->getExtensionInfo()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dawin/http/parser/ExtensionInfoParser;->getExtensionBitmap()Lcom/dawin/objects/b;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;Ljava/util/ArrayList;Lcom/dawin/objects/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v0    # "adId":Ljava/lang/String;
    .end local v2    # "parser":Lcom/dawin/http/parser/a;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    const-string v4, "SDK \uc624\ub958"

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const/16 v3, -0xc8

    :try_start_3
    const-string/jumbo v4, "xml \ud30c\uc2f1 \uc624\ub958"

    invoke-virtual {p0, p1, v3, v4}, Lcom/dawin/DawinVideoAd$27;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .restart local v0    # "adId":Ljava/lang/String;
    .restart local v2    # "parser":Lcom/dawin/http/parser/a;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    const-string/jumbo v4, "\uad11\uace0 \uc5c6\uc74c"

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->r(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    .end local v0    # "adId":Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->r(Lcom/dawin/DawinVideoAd;)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    const-string/jumbo v4, "\uad11\uace0 \uc218\uc2e0 \uc624\ub958"

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .end local v2    # "parser":Lcom/dawin/http/parser/a;
    :sswitch_2
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoStarted(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoFirstQuartile(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoMidpoint(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoThirdQuartile(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoComplete(Ljava/lang/String;)V

    :cond_b
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdSkiped(Ljava/lang/String;)V

    :cond_c
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->d(Lcom/dawin/DawinVideoAd;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;Z)V

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object v3

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$27;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdVideoProgress(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_3
        0x4b0 -> :sswitch_4
        0x514 -> :sswitch_5
        0x578 -> :sswitch_6
        0x5dc -> :sswitch_7
        0x640 -> :sswitch_0
        0x6a4 -> :sswitch_1
        0x76c -> :sswitch_8
        0x7d0 -> :sswitch_0
    .end sparse-switch
.end method
