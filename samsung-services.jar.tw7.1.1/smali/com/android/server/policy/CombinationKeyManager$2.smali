.class Lcom/android/server/policy/CombinationKeyManager$2;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/CombinationKeyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/CombinationKeyManager;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/server/policy/CombinationKeyManager$2;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 703
    const-string v2, ""

    const-string v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 707
    const-string v2, "com.sec.android.app.servicemodeapp"

    .line 708
    const-string v3, "com.sec.android.app.servicemodeapp.SysDump"

    .line 707
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v2, "remote"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 710
    const-string v2, "noti"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 711
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager$2;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method
