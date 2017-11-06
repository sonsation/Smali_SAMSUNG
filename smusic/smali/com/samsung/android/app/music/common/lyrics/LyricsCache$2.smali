.class Lcom/samsung/android/app/music/common/lyrics/LyricsCache$2;
.super Ljava/lang/Object;
.source "LyricsCache.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$2;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 78
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$2;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$000(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V

    .line 65
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$2;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$100(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)V

    .line 70
    return-void
.end method
