.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3782
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 3783
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3784
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3782
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3789
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_0

    .line 3790
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "mediaplayer went away with unhandled events"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    return-void

    .line 3793
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    sparse-switch v28, :sswitch_data_0

    .line 4095
    const-string/jumbo v28, "MediaPlayer"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Unknown message type "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    return-void

    .line 3796
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    const/16 v29, 0x2c7

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 3800
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3812
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v17

    .line 3813
    .local v17, "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    if-eqz v17, :cond_2

    .line 3814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 3815
    :cond_2
    return-void

    .line 3801
    .end local v17    # "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    :catch_0
    move-exception v9

    .line 3806
    .local v9, "e":Ljava/lang/RuntimeException;
    const/16 v28, 0x64

    const/16 v29, 0x1

    const/16 v30, -0x3f2

    const/16 v31, 0x0

    .line 3805
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 3807
    .local v12, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 3819
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "msg2":Landroid/os/Message;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v14

    .line 3820
    .local v14, "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v14, :cond_3

    .line 3821
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3823
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-wrap2(Landroid/media/MediaPlayer;Z)V

    .line 3824
    return-void

    .line 3836
    .end local v14    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :sswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get25(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3837
    .local v25, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_4

    .line 3838
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3788
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_4
    :goto_1
    :sswitch_3
    return-void

    .line 3840
    :catch_1
    move-exception v8

    .line 3841
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "handleMessage MEDIA_STOPPED e : "

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3857
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :sswitch_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get25(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3858
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_4

    .line 3859
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    const/16 v29, 0x7

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    const/16 v28, 0x1

    :goto_2
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 3861
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :catch_2
    move-exception v8

    .line 3862
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "handleMessage MEDIA_STARTED or MEDIA_PAUSED e : "

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3859
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_5
    const/16 v28, 0x0

    goto :goto_2

    .line 3868
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v13

    .line 3869
    .local v13, "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    if-eqz v13, :cond_6

    .line 3870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v13, v0, v1}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 3871
    :cond_6
    return-void

    .line 3874
    .end local v13    # "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v18

    .line 3875
    .local v18, "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    if-eqz v18, :cond_7

    .line 3876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 3890
    .end local v18    # "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    :cond_7
    :sswitch_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get25(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 3891
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_8

    .line 3892
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3898
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_8
    :goto_3
    return-void

    .line 3894
    :catch_3
    move-exception v8

    .line 3895
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "handleMessage MEDIA_SKIPPED e : "

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 3901
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get20(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v22

    .line 3902
    .local v22, "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    if-eqz v22, :cond_9

    .line 3904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    .line 3903
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 3907
    :cond_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    if-eqz v28, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    if-eqz v28, :cond_a

    .line 3908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set4(Landroid/media/MediaPlayer;I)I

    .line 3909
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 3910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const-string/jumbo v29, "com.samsung.intent.videoexist"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const-string/jumbo v31, "PID"

    const/16 v32, 0x0

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get23(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x1

    aput-object v31, v30, v32

    invoke-static/range {v28 .. v30}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3914
    :cond_a
    return-void

    .line 3917
    .end local v22    # "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    :sswitch_9
    const-string/jumbo v28, "MediaPlayer"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Error ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3918
    const/4 v10, 0x0

    .line 3919
    .local v10, "error_was_handled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v15

    .line 3920
    .local v15, "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    if-eqz v15, :cond_c

    .line 3924
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x31

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 3925
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x3c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_e

    .line 3928
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v28

    if-eqz v28, :cond_f

    .line 3930
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    if-eqz v28, :cond_10

    .line 3931
    const-string/jumbo v29, "MediaPlayer"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "PlayReadyAcquistion Failed \n sending onPlayReadyError "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3932
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get14(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move-object/from16 v4, v28

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnPlayReadyErrorListener;->onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v10

    .line 3969
    .end local v10    # "error_was_handled":Z
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v14

    .line 3970
    .restart local v14    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v14, :cond_d

    if-eqz v10, :cond_13

    .line 3973
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-wrap2(Landroid/media/MediaPlayer;Z)V

    .line 3974
    return-void

    .line 3926
    .end local v14    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    .restart local v10    # "error_was_handled":Z
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x3d

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 3927
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, -0x40

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 3940
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    const/16 v29, 0x12c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 3941
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "License Not Found, propagate error to MoviePlaybackService.java"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    invoke-interface/range {v28 .. v31}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v10

    .local v10, "error_was_handled":Z
    goto :goto_4

    .line 3935
    .local v10, "error_was_handled":Z
    :cond_10
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "PlayReadyAcquistion Failed \n sending onPlayReadyError NULL"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v15, v0, v1, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v10

    .local v10, "error_was_handled":Z
    goto/16 :goto_4

    .line 3952
    .local v10, "error_was_handled":Z
    :cond_11
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v28

    if-eqz v28, :cond_12

    .line 3953
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    invoke-interface/range {v28 .. v31}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v10

    .local v10, "error_was_handled":Z
    goto/16 :goto_4

    .line 3955
    .local v10, "error_was_handled":Z
    :cond_12
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "error listener is null "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 3958
    :catch_4
    move-exception v8

    .line 3959
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v28, "MediaPlayer"

    const-string/jumbo v29, "handleMessage e : "

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 3971
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v10    # "error_was_handled":Z
    .restart local v14    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto/16 :goto_5

    .line 3977
    .end local v14    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    .end local v15    # "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    sparse-switch v28, :sswitch_data_1

    .line 4007
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v16

    .line 4008
    .local v16, "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    if-eqz v16, :cond_15

    .line 4009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 4012
    :cond_15
    return-void

    .line 3979
    .end local v16    # "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    :sswitch_b
    const-string/jumbo v28, "MediaPlayer"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Info ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ","

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3983
    :sswitch_c
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 3992
    :goto_7
    :sswitch_d
    const/16 v28, 0x322

    move/from16 v0, v28

    move-object/from16 v1, p1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get24(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v28

    if-eqz v28, :cond_14

    .line 3995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get24(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto/16 :goto_6

    .line 3984
    :catch_5
    move-exception v9

    .line 3986
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    const/16 v28, 0x64

    const/16 v29, 0x1

    const/16 v30, -0x3f2

    const/16 v31, 0x0

    .line 3985
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 3987
    .restart local v12    # "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7

    .line 4000
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "msg2":Landroid/os/Message;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get25(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v25

    .line 4001
    .restart local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v25, :cond_14

    .line 4002
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    const/16 v29, 0x2bd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    const/16 v28, 0x1

    :goto_8
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto/16 :goto_6

    :cond_16
    const/16 v28, 0x0

    goto :goto_8

    .line 4014
    .end local v25    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get19(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v21

    .line 4015
    .local v21, "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    if-nez v21, :cond_17

    .line 4016
    return-void

    .line 4017
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    if-nez v28, :cond_19

    .line 4018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 4027
    :cond_18
    :goto_9
    return-void

    .line 4020
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v28, v0

    if-eqz v28, :cond_18

    .line 4021
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 4022
    .local v23, "parcel":Landroid/os/Parcel;
    new-instance v24, Landroid/media/TimedText;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 4023
    .local v24, "text":Landroid/media/TimedText;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 4024
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto :goto_9

    .line 4030
    .end local v21    # "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    .end local v23    # "parcel":Landroid/os/Parcel;
    .end local v24    # "text":Landroid/media/TimedText;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get17(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v19

    .line 4031
    .local v19, "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    if-nez v19, :cond_1a

    .line 4032
    return-void

    .line 4034
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v28, v0

    if-eqz v28, :cond_1b

    .line 4035
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 4036
    .restart local v23    # "parcel":Landroid/os/Parcel;
    new-instance v6, Landroid/media/SubtitleData;

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 4037
    .local v6, "data":Landroid/media/SubtitleData;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 4038
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v6}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    .line 4040
    .end local v6    # "data":Landroid/media/SubtitleData;
    .end local v23    # "parcel":Landroid/os/Parcel;
    :cond_1b
    return-void

    .line 4044
    .end local v19    # "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get18(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v20

    .line 4045
    .local v20, "onTimedMetaDataAvailableListener":Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    if-nez v20, :cond_1c

    .line 4046
    return-void

    .line 4048
    :cond_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v28, v0

    if-eqz v28, :cond_1d

    .line 4049
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 4050
    .restart local v23    # "parcel":Landroid/os/Parcel;
    invoke-static/range {v23 .. v23}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v7

    .line 4051
    .local v7, "data":Landroid/media/TimedMetaData;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 4052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v7}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    .line 4054
    .end local v7    # "data":Landroid/media/TimedMetaData;
    .end local v23    # "parcel":Landroid/os/Parcel;
    :cond_1d
    return-void

    .line 4060
    .end local v20    # "onTimedMetaDataAvailableListener":Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    :sswitch_12
    invoke-static {}, Landroid/media/MediaPlayer;->-get0()Z

    move-result v28

    if-eqz v28, :cond_20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v28, v0

    if-eqz v28, :cond_20

    .line 4062
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/os/Parcel;

    .line 4063
    .restart local v23    # "parcel":Landroid/os/Parcel;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 4064
    .local v26, "type":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 4065
    .local v27, "uri":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4067
    .local v11, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)I

    move-result v28

    if-nez v28, :cond_1f

    .line 4068
    const-string/jumbo v28, "start"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_1e

    .line 4069
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v11}, Landroid/media/MediaPlayer;->-set1(Landroid/media/MediaPlayer;I)I

    .line 4070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->-set3(Landroid/media/MediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 4071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set0(Landroid/media/MediaPlayer;I)I

    .line 4072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    .line 4074
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const-string/jumbo v29, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v30, 0xc

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const-string/jumbo v31, "TYPE"

    const/16 v32, 0x0

    aput-object v31, v30, v32

    const/16 v31, 0x1

    aput-object v26, v30, v31

    const-string/jumbo v31, "URI"

    const/16 v32, 0x2

    aput-object v31, v30, v32

    const/16 v31, 0x3

    aput-object v27, v30, v31

    const-string/jumbo v31, "ID"

    const/16 v32, 0x4

    aput-object v31, v30, v32

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x5

    aput-object v31, v30, v32

    const-string/jumbo v31, "PID"

    const/16 v32, 0x6

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get23(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x7

    aput-object v31, v30, v32

    const-string/jumbo v31, "DURATION_MS"

    const/16 v32, 0x8

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x9

    aput-object v31, v30, v32

    const-string/jumbo v31, "IS_VIDEO"

    const/16 v32, 0xa

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0xb

    aput-object v31, v30, v32

    invoke-static/range {v28 .. v30}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4077
    :cond_1f
    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    .line 4080
    .end local v11    # "id":I
    .end local v23    # "parcel":Landroid/os/Parcel;
    .end local v26    # "type":Ljava/lang/String;
    .end local v27    # "uri":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get22(Landroid/media/MediaPlayer;)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    .line 4081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const-string/jumbo v29, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v30, 0xc

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const-string/jumbo v31, "TYPE"

    const/16 v32, 0x0

    aput-object v31, v30, v32

    const-string/jumbo v31, "pause"

    const/16 v32, 0x1

    aput-object v31, v30, v32

    const-string/jumbo v31, "URI"

    const/16 v32, 0x2

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    aput-object v31, v30, v32

    const-string/jumbo v31, "ID"

    const/16 v32, 0x4

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x5

    aput-object v31, v30, v32

    const-string/jumbo v31, "PID"

    const/16 v32, 0x6

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get23(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x7

    aput-object v31, v30, v32

    const-string/jumbo v31, "DURATION_MS"

    const/16 v32, 0x8

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x9

    aput-object v31, v30, v32

    const-string/jumbo v31, "IS_VIDEO"

    const/16 v32, 0xa

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0xb

    aput-object v31, v30, v32

    invoke-static/range {v28 .. v30}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    .line 4090
    :cond_21
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set5(Landroid/media/MediaPlayer;I)I

    goto/16 :goto_1

    .line 4085
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/media/MediaPlayer;->-get22(Landroid/media/MediaPlayer;)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    .line 4086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const-string/jumbo v29, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v30, 0xc

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const-string/jumbo v31, "TYPE"

    const/16 v32, 0x0

    aput-object v31, v30, v32

    const-string/jumbo v31, "stop"

    const/16 v32, 0x1

    aput-object v31, v30, v32

    const-string/jumbo v31, "URI"

    const/16 v32, 0x2

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x3

    aput-object v31, v30, v32

    const-string/jumbo v31, "ID"

    const/16 v32, 0x4

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x5

    aput-object v31, v30, v32

    const-string/jumbo v31, "PID"

    const/16 v32, 0x6

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get23(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x7

    aput-object v31, v30, v32

    const-string/jumbo v31, "DURATION_MS"

    const/16 v32, 0x8

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get1(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0x9

    aput-object v31, v30, v32

    const-string/jumbo v31, "IS_VIDEO"

    const/16 v32, 0xa

    aput-object v31, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v32, 0xb

    aput-object v31, v30, v32

    invoke-static/range {v28 .. v30}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4088
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    invoke-static/range {v28 .. v29}, Landroid/media/MediaPlayer;->-set2(Landroid/media/MediaPlayer;I)I

    goto/16 :goto_a

    .line 3793
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_7
        0x63 -> :sswitch_f
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
        0x12c -> :sswitch_12
    .end sparse-switch

    .line 3977
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_b
        0x2bd -> :sswitch_e
        0x2be -> :sswitch_e
        0x322 -> :sswitch_c
        0x323 -> :sswitch_d
    .end sparse-switch
.end method
