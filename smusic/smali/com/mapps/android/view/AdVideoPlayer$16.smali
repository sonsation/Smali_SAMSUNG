.class Lcom/mapps/android/view/AdVideoPlayer$16;
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 919
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v4, v4, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_5

    .line 921
    :try_start_0
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v4, v4, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 922
    .local v1, "currentPosition":I
    div-int/lit16 v3, v1, 0x3e8

    .line 924
    .local v3, "second":I
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-boolean v4, v4, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    if-nez v4, :cond_0

    if-lez v1, :cond_0

    .line 925
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 926
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$3(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 927
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$5(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mapps/android/listner/AdVideoPlayerListener;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v6, v6, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/mapps/android/listner/AdVideoPlayerListener;->onAdPlayerDurationReceive(Landroid/view/View;I)V

    .line 928
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/mapps/android/view/AdVideoPlayer;->sendCallback:Z

    .line 930
    :cond_0
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$31(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 931
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4, v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$32(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 932
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$31(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$33(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 938
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$34(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 939
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 941
    :cond_2
    if-lez v1, :cond_3

    .line 942
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 944
    :cond_3
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v4, v4, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-lt v3, v4, :cond_7

    .line 945
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$37(Lcom/mapps/android/view/AdVideoPlayer;Z)V

    .line 946
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 947
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->getOrientations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/mapps/android/view/AdVideoPlayer;->setloction(Ljava/lang/String;I)V

    .line 949
    :cond_4
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$39(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 950
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$39(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 966
    .end local v1    # "currentPosition":I
    .end local v3    # "second":I
    :cond_5
    :goto_1
    return-void

    .line 933
    .restart local v1    # "currentPosition":I
    .restart local v3    # "second":I
    :cond_6
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-boolean v4, v4, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    if-nez v4, :cond_1

    .line 934
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/mapps/android/view/AdVideoPlayer;->initView:Z

    .line 935
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4, v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$33(Lcom/mapps/android/view/AdVideoPlayer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    .end local v1    # "currentPosition":I
    .end local v3    # "second":I
    :catch_0
    move-exception v2

    .line 963
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 953
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "currentPosition":I
    .restart local v3    # "second":I
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v4, v4, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    if-le v4, v3, :cond_8

    .line 954
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget v4, v4, Lcom/mapps/android/view/AdVideoPlayer;->m_nlimtSec:I

    sub-int v0, v4, v3

    .line 955
    .local v0, "cal":I
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$27(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 956
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->getOrientations(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/mapps/android/view/AdVideoPlayer;->setloction(Ljava/lang/String;I)V

    .line 959
    .end local v0    # "cal":I
    :cond_8
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$39(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 960
    iget-object v4, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceView;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/AdVideoPlayer$16;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$39(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/SurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
