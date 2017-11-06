.class Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$2;
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
    .line 120
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$2;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    const-string v0, "com.sec.android.app.music.TAB_SETTING_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment$2;->this$0:Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->dismissAllowingStateLoss()V

    .line 126
    :cond_0
    return-void
.end method
