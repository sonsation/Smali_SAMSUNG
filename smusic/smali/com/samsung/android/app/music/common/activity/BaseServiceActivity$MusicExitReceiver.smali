.class Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$MusicExitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicExitReceiver"
.end annotation


# instance fields
.field private final mActivityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 157
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$MusicExitReceiver;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    .line 158
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    const-string v1, "com.samsung.android.app.music.core.state.EXIT_MUSIC"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$MusicExitReceiver;->mActivityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    .line 164
    .local v0, "activity":Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
    if-eqz v0, :cond_0

    .line 165
    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->access$000(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V

    .line 168
    .end local v0    # "activity":Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
    :cond_0
    return-void
.end method
