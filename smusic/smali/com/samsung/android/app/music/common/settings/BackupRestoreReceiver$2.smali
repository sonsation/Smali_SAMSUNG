.class Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;
.super Ljava/lang/Thread;
.source "BackupRestoreReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;->this$0:Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;->this$0:Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;->val$data:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->access$200(Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v3

    .line 129
    .local v3, "err":I
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;->this$0:Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;->val$context:Landroid/content/Context;

    if-nez v3, :cond_0

    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver$2;->val$data:Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;->access$300(Lcom/samsung/android/app/music/common/settings/BackupRestoreReceiver;Landroid/content/Context;IIILandroid/os/Bundle;)V

    .line 131
    return-void

    .line 129
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
