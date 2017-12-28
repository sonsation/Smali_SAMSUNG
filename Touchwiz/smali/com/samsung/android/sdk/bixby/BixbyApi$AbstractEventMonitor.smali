.class public abstract Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;
.super Ljava/lang/Object;
.source "BixbyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractEventMonitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPathRuleStarted(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V
    .locals 2
    .param p1, "pri"    # Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    .prologue
    .line 563
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onPathRuleStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method public onServiceBound(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 575
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceBound()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-void
.end method

.method public onServiceCreated()V
    .locals 2

    .prologue
    .line 589
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void
.end method

.method public onServiceDestroyed()V
    .locals 2

    .prologue
    .line 596
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void
.end method

.method public onServiceUnbound(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 582
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceUnbound()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-void
.end method
