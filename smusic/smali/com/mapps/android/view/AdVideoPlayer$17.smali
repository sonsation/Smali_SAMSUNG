.class Lcom/mapps/android/view/AdVideoPlayer$17;
.super Ljava/lang/Object;
.source "AdVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->startVideoPlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 974
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v3, v3, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 976
    :try_start_0
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v3, v3, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 977
    .local v0, "currentPosition":I
    div-int/lit16 v2, v0, 0x3e8

    .line 978
    .local v2, "second":I
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-boolean v3, v3, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    if-nez v3, :cond_0

    if-lez v0, :cond_0

    .line 979
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 980
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$5(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mapps/android/listner/AdVideoPlayerListener;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v5, v5, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/mapps/android/listner/AdVideoPlayerListener;->onAdPlayerDurationReceive(Landroid/view/View;I)V

    .line 981
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    .line 984
    :cond_0
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$31(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 985
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3, v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$32(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 986
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$31(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$33(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 992
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$34(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 993
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 995
    :cond_2
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v3, v3, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lt v2, v3, :cond_3

    .line 996
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$37(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 997
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 998
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 999
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->getOrientations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/mapps/android/view/AdVideoPlayer;->setloction(Ljava/lang/String;I)V

    .line 1002
    :cond_3
    if-lez v0, :cond_6

    .line 1003
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$39(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1004
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$39(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1014
    .end local v0    # "currentPosition":I
    .end local v2    # "second":I
    :cond_4
    :goto_1
    return-void

    .line 987
    .restart local v0    # "currentPosition":I
    .restart local v2    # "second":I
    :cond_5
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-boolean v3, v3, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    if-nez v3, :cond_1

    .line 988
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    .line 989
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3, v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$33(Lcom/mapps/android/view/AdVideoPlayer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1010
    .end local v0    # "currentPosition":I
    .end local v2    # "second":I
    :catch_0
    move-exception v1

    .line 1011
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1006
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentPosition":I
    .restart local v2    # "second":I
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$39(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1007
    iget-object v3, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$39(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x96

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
