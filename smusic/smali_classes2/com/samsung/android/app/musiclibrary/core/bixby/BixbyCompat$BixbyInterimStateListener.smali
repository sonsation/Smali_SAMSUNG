.class final Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;
.super Ljava/lang/Object;
.source "BixbyCompat.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BixbyInterimStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 3
    .param p1, "paramFilling"    # Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    .prologue
    .line 421
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParamFillingReceived() - paramFilling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 3
    .param p1, "ruleId"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterimStateListener#onRuleCanceled() - ruleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 3

    .prologue
    .line 409
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenStatesRequested() - mCurrentScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    .line 410
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$600(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$600(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$600(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    .line 414
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/sdk/bixby/data/State;

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 394
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterimStateListener#onStateReceived() - null state."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterimStateListener#onStateReceived() - state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 398
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$400(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;->convert(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$302(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$300(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->executeCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z

    goto :goto_0
.end method
