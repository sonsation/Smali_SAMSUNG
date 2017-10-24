.class Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverFlatPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;

    iput-object p1, v0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 48
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->-get0(Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->-get0(Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    .line 46
    :cond_0
    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 4
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 41
    iget-object v0, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 42
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoteViewUpdated : Type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;

    invoke-static {v1, p1}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    .line 40
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->-get0(Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;->-get0(Lcom/sec/android/cover/clearcover/ClearCoverFlatPage;)Lcom/sec/android/cover/widget/RemoteViewContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    .line 54
    :cond_0
    return-void
.end method
