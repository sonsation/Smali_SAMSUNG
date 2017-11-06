.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PrivateFolderSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 81
    sget-object v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrivateModeOffReceiver : onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity$1;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->finish()V

    .line 83
    return-void
.end method
