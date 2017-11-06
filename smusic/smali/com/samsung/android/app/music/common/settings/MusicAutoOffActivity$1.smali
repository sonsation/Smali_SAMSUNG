.class Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicAutoOffActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity$1;->this$0:Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->access$000(Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/settings/MusicAutoOffActivity;->setItemChecked(IZ)V

    .line 162
    return-void
.end method
