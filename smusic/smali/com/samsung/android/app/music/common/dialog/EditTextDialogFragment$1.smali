.class Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "EditTextDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$002(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;J)J

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$1;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->access$102(Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;Z)Z

    .line 117
    return-void
.end method
