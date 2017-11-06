.class Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "ViewCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

.field final synthetic val$listener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->val$listener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 115
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->val$listener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$1;->val$listener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;->onCoverStateChanged(Z)V

    .line 120
    :cond_0
    return-void
.end method
