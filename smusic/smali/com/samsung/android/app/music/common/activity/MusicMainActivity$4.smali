.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "MusicMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1010
    const-string v0, "com.sec.android.app.music.TAB_SETTING_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$400(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$4;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$400(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1015
    :cond_0
    return-void
.end method
