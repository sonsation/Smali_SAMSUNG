.class Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get0()[Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get0()[Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 100
    if-nez v1, :cond_0

    .line 102
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get0()[Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 100
    if-eqz v1, :cond_2

    .line 104
    :cond_0
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "URI changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get0()[Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 109
    const-string/jumbo v2, "lockscreen_aod_servicebox_page"

    .line 108
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "settingPkgName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Page changed. New page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " current page key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v3}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    const-string/jumbo v3, " current page id="

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v3}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-get4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getCurrentItem()I

    move-result v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v1, v0, v4, v4}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onEmergencyStateChanged()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    .line 134
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    .line 128
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-set0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)Z

    .line 90
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    .line 94
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 1
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->-wrap2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    .line 121
    return-void
.end method
