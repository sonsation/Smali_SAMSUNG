.class Lcom/android/server/power/Notifier$4;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$interactive:Z

.field final synthetic val$wakefulness:I

.field final synthetic val$why:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;ZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;
    .param p2, "val$interactive"    # Z
    .param p3, "val$why"    # I
    .param p4, "val$wakefulness"    # I

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/server/power/Notifier$4;->this$0:Lcom/android/server/power/Notifier;

    iput-boolean p2, p0, Lcom/android/server/power/Notifier$4;->val$interactive:Z

    iput p3, p0, Lcom/android/server/power/Notifier$4;->val$why:I

    iput p4, p0, Lcom/android/server/power/Notifier$4;->val$wakefulness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/server/power/Notifier$4;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v1}, Lcom/android/server/power/Notifier;->-get3(Lcom/android/server/power/Notifier;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/power/Notifier$4;->val$interactive:Z

    if-eq v1, v2, :cond_0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier$4;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v1}, Lcom/android/server/power/Notifier;->-get4(Lcom/android/server/power/Notifier;)Landroid/net/INetworkPolicyManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/Notifier$4;->val$interactive:Z

    iget v3, p0, Lcom/android/server/power/Notifier$4;->val$why:I

    invoke-interface {v1, v2, v3}, Landroid/net/INetworkPolicyManager;->onScreenStateChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/Notifier$4;->this$0:Lcom/android/server/power/Notifier;

    iget-boolean v2, p0, Lcom/android/server/power/Notifier$4;->val$interactive:Z

    invoke-static {v1, v2}, Lcom/android/server/power/Notifier;->-set0(Lcom/android/server/power/Notifier;Z)Z

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier$4;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v1}, Lcom/android/server/power/Notifier;->-get0(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/Notifier$4;->val$wakefulness:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->onWakefulnessChanged(I)V

    .line 410
    return-void

    .line 415
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
