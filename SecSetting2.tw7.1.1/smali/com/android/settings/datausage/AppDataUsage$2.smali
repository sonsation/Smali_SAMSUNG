.class Lcom/android/settings/datausage/AppDataUsage$2;
.super Landroid/database/ContentObserver;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/AppDataUsage;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 268
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v1}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "udsState"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 269
    .local v0, "state":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage;->-get7(Lcom/android/settings/datausage/AppDataUsage;)Landroid/app/DialogFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage;->-get7(Lcom/android/settings/datausage/AppDataUsage;)Landroid/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$2;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v1}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->close(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 267
    :cond_0
    return-void
.end method
