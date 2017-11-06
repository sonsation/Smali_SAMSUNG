.class Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;
.super Ljava/lang/Object;
.source "BixbyCompat.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

.field final synthetic val$cancelNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

.field final synthetic val$listener:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;->val$listener:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;->val$cancelNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;)V
    .locals 5
    .param p1, "confirmResult"    # Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    .prologue
    const/4 v1, 0x0

    .line 300
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->YES:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    .line 301
    .local v0, "positive":Z
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfirmResult() - confirmResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", positive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    if-eqz v0, :cond_1

    .line 304
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;->val$listener:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;->onPositiveReceived()V

    .line 308
    :goto_1
    return-void

    .end local v0    # "positive":Z
    :cond_0
    move v0, v1

    .line 300
    goto :goto_0

    .line 306
    .restart local v0    # "positive":Z
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;->val$cancelNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    invoke-direct {v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    goto :goto_1
.end method
