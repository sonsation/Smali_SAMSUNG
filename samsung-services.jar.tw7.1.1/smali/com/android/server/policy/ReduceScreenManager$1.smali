.class Lcom/android/server/policy/ReduceScreenManager$1;
.super Ljava/lang/Object;
.source "ReduceScreenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ReduceScreenManager;->screenTurnedOff()V
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
    .line 80
    iput-object p1, p0, Lcom/android/server/policy/ReduceScreenManager$1;->this$0:Lcom/android/server/policy/ReduceScreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.EASYONEHAND_SERVICE_SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "eohIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyonehand"

    const-string v4, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    iget-object v2, p0, Lcom/android/server/policy/ReduceScreenManager$1;->this$0:Lcom/android/server/policy/ReduceScreenManager;

    invoke-static {v2}, Lcom/android/server/policy/ReduceScreenManager;->-get0(Lcom/android/server/policy/ReduceScreenManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "eohIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
