.class Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;
.super Ljava/lang/Object;
.source "ClearCoverMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicClickListener"
.end annotation


# instance fields
.field mKeyCode:I

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;
    .param p2, "keyCode"    # I

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;->mKeyCode:I

    .line 98
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v0

    .line 104
    .local v0, "monitor":Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
    new-instance v1, Landroid/view/KeyEvent;

    iget v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;->mKeyCode:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 105
    new-instance v1, Landroid/view/KeyEvent;

    iget v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;->mKeyCode:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 102
    return-void
.end method
