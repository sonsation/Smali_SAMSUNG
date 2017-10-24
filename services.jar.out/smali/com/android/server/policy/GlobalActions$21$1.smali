.class Lcom/android/server/policy/GlobalActions$21$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$21;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$21;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$21;

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/high16 v5, 0x14000000

    .line 1667
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$21;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "isBikeMode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1668
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1669
    .local v0, "bmOffIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.bikemode"

    .line 1670
    const-string/jumbo v4, "com.samsung.BikeMode.BMActivities.BMONUnpinnedScreen"

    .line 1669
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1671
    const-string/jumbo v2, "com.samsung.BikeMode.CloseApp"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1673
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$21;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1666
    .end local v0    # "bmOffIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1675
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1676
    .local v1, "bmOnIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.bikemode"

    .line 1677
    const-string/jumbo v4, "com.samsung.BikeMode.BMActivities.BMSplashScreen"

    .line 1676
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1678
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1679
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$21;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
