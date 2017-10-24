.class Lcom/android/server/policy/GlobalActions$23$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$23;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$23;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$23;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$23;

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$23$1;->this$1:Lcom/android/server/policy/GlobalActions$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1922
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$23$1;->this$1:Lcom/android/server/policy/GlobalActions$23;

    iget-object v1, v1, Lcom/android/server/policy/GlobalActions$23;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    .line 1923
    const/16 v2, 0x124

    .line 1922
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1924
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1925
    const/4 v2, 0x1

    .line 1924
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1919
    :goto_0
    return-void

    .line 1926
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
