.class final Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyStartStateListener;
.super Ljava/lang/Object;
.source "BixbyCompat.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BixbyStartStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyStartStateListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)V

    return-void
.end method


# virtual methods
.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 3
    .param p1, "ruleId"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartStateListener#onRuleCanceled() - ruleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartStateListener#onStateReceived() - null state."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartStateListener#onStateReceived() - state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "499"

    const-string v2, "0026"

    .line 375
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$400(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;->convert(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$302(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$500(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$300(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z

    goto :goto_0
.end method
