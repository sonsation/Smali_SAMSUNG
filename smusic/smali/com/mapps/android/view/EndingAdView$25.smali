.class Lcom/mapps/android/view/EndingAdView$25;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Lcom/mezzo/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->requestSSPClick(Lcom/mezzo/common/network/data/DataNTSSP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$data:Lcom/mezzo/common/network/data/DataNTSSP;

.field private final synthetic val$request_key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$25;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$25;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    iput-object p3, p0, Lcom/mapps/android/view/EndingAdView$25;->val$request_key:Ljava/lang/String;

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isConnection"    # Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;
    .param p3, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 962
    sget-object v0, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v0, :cond_0

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendapi -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$25;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$25;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    sget-object v1, Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;->YES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/data/DataNTSSP;->setChk_ssp_click(Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$25;->val$request_key:Ljava/lang/String;

    sput-object v0, Lcom/mapps/android/view/EndingAdView;->SAVEREQUESTKEY:Ljava/lang/String;

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendapi -->request_key : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$25;->val$request_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$25;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 970
    :goto_0
    return-void

    .line 968
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendapi -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$25;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendapi -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$25;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : onInternetNotSupport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 958
    return-void
.end method
