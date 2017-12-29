.class Lcom/android/server/policy/ReduceScreenManager$3;
.super Ljava/lang/Object;
.source "ReduceScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ReduceScreenManager;->stopService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ReduceScreenManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ReduceScreenManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ReduceScreenManager;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/server/policy/ReduceScreenManager$3;->this$0:Lcom/android/server/policy/ReduceScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 121
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyonehand"

    const-string v4, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 123
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "ForceHide"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    iget-object v3, p0, Lcom/android/server/policy/ReduceScreenManager$3;->this$0:Lcom/android/server/policy/ReduceScreenManager;

    invoke-static {v3}, Lcom/android/server/policy/ReduceScreenManager;->-get0(Lcom/android/server/policy/ReduceScreenManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
