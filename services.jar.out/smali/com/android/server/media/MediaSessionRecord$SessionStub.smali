.class final Lcom/android/server/media/MediaSessionRecord$SessionStub;
.super Landroid/media/session/ISession$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISession$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$SessionStub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get24(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->destroySession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 741
    return-void
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get5(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getController()Landroid/media/session/ISessionController;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get6(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 747
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    .line 748
    if-nez p2, :cond_0

    .line 747
    :goto_0
    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 746
    return-void

    .line 748
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set4(Lcom/android/server/media/MediaSessionRecord;Z)Z

    .line 759
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get24(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->updateSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 760
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 757
    return-void
.end method

.method public setCurrentVolume(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set1(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 888
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 886
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 874
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get14(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 875
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    if-nez p1, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/server/media/MediaSessionRecord;->-set2(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 877
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 873
    return-void

    .line 875
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFlags(I)V
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 765
    const/high16 v2, 0x10000

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 766
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->getCallingPid()I

    move-result v0

    .line 767
    .local v0, "pid":I
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->getCallingUid()I

    move-result v1

    .line 768
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get24(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/media/MediaSessionService;->enforcePhoneStatePermission(II)V

    .line 772
    .end local v0    # "pid":I
    .end local v1    # "uid":I
    :cond_0
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->-get1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 773
    const-string/jumbo v2, "MediaSessionRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mFlags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get11(Lcom/android/server/media/MediaSessionRecord;)J

    move-result-wide v2

    const-wide/32 v4, 0x20000000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 775
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/high16 v3, 0x20000000

    or-int/2addr v3, p1

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord;->-set3(Lcom/android/server/media/MediaSessionRecord;J)J

    .line 782
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 764
    return-void

    .line 777
    :cond_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord;->-set3(Lcom/android/server/media/MediaSessionRecord;J)J

    goto :goto_0

    .line 779
    :cond_2
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    int-to-long v4, p1

    invoke-static {v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord;->-set3(Lcom/android/server/media/MediaSessionRecord;J)J

    goto :goto_0
.end method

.method public setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set6(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 791
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set8(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 786
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 797
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get14(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 798
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 803
    :goto_0
    if-eqz v0, :cond_0

    .line 804
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->size()I

    .line 806
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, v0}, Lcom/android/server/media/MediaSessionRecord;->-set9(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 808
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 796
    return-void

    .line 798
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "temp":Landroid/media/MediaMetadata;
    goto :goto_0

    .line 797
    .end local v0    # "temp":Landroid/media/MediaMetadata;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 12
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 814
    const/4 v7, 0x0

    .local v7, "oldState":I
    const/4 v3, 0x0

    .line 815
    .local v3, "newState":I
    const-wide/16 v4, 0x0

    .local v4, "oldPosition":J
    const-wide/16 v0, 0x0

    .line 816
    .local v0, "newPosition":J
    const/4 v6, 0x0

    .local v6, "oldSpeed":F
    const/4 v2, 0x0

    .line 818
    .local v2, "newSpeed":F
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->-get20(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 819
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->-get20(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    .line 820
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->-get20(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v4

    .line 821
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->-get20(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v6

    .line 824
    :cond_0
    if-eqz p1, :cond_1

    .line 825
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    .line 826
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v0

    .line 827
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v2

    .line 829
    :cond_1
    const-string/jumbo v8, "MediaSessionRecord"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setPlaybackState oldState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", newState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", packageName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v10}, Lcom/android/server/media/MediaSessionRecord;->-get19(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    if-ne v7, v3, :cond_2

    cmp-long v8, v4, v0

    if-eqz v8, :cond_5

    .line 834
    :cond_2
    :goto_0
    invoke-static {v7}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_3

    .line 835
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/android/server/media/MediaSessionRecord;->-set5(Lcom/android/server/media/MediaSessionRecord;J)J

    .line 837
    :cond_3
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->-get14(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 838
    :try_start_0
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v8, p1}, Lcom/android/server/media/MediaSessionRecord;->-set11(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 840
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->-get24(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v8, v9, v7, v3}, Lcom/android/server/media/MediaSessionService;->onSessionPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)V

    .line 841
    iget-object v8, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v8}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 812
    :cond_4
    return-void

    .line 832
    :cond_5
    cmpl-float v8, v6, v2

    if-nez v8, :cond_2

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-nez v8, :cond_4

    goto :goto_0

    .line 837
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 894
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get14(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 895
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get28(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 896
    .local v0, "typeChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionRecord;->-set16(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 897
    if-eqz p1, :cond_2

    .line 898
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->-set0(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    .line 903
    if-eqz v0, :cond_0

    .line 904
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get24(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V

    .line 905
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 892
    :cond_0
    return-void

    .line 895
    .end local v0    # "typeChanged":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "typeChanged":Z
    goto :goto_0

    .line 900
    :cond_2
    :try_start_1
    const-string/jumbo v1, "MediaSessionRecord"

    const-string/jumbo v3, "Received null audio attributes, using existing attributes"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 894
    .end local v0    # "typeChanged":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setPlaybackToRemote(II)V
    .locals 4
    .param p1, "control"    # I
    .param p2, "max"    # I

    .prologue
    .line 912
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get14(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get28(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 914
    .local v0, "typeChanged":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionRecord;->-set16(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 915
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->-set15(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 916
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p2}, Lcom/android/server/media/MediaSessionRecord;->-set7(Lcom/android/server/media/MediaSessionRecord;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 918
    if-eqz v0, :cond_0

    .line 919
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get24(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V

    .line 920
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 910
    :cond_0
    return-void

    .line 913
    .end local v0    # "typeChanged":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "typeChanged":Z
    goto :goto_0

    .line 912
    .end local v0    # "typeChanged":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setQueue(Landroid/content/pm/ParceledListSlice;)V
    .locals 2
    .param p1, "queue"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get14(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set12(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 863
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 859
    return-void

    .line 860
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set13(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 869
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 867
    return-void
.end method

.method public setRatingType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-set14(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 881
    return-void
.end method
