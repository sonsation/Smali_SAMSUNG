.class Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "LegacySoundAliveDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->access$100(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$SoundAliveAdapter;->notifyDataSetChanged()V

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->getLegacySoundAlivePreset()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->access$002(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;I)I

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/utils/LegacySoundAliveUtils;->getPresetPosition(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->access$202(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;I)I

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->access$300(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 156
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->access$200(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 157
    new-instance v1, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4$1;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/dialog/LegacySoundAliveDialogFragment$4;Landroid/widget/ListView;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method
