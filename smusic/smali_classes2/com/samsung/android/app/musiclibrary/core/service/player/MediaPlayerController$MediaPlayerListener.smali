.class final Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;
.super Ljava/lang/Object;
.source "MediaPlayerController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaPlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$1;

    .prologue
    .line 970
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1030
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate percent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1302(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;I)I

    .line 1033
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1014
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string v1, "-- onCompletion() --"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playingCompleted()V

    .line 1016
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1055
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-- onError -- what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;I)I

    .line 1058
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1600(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    .line 1062
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1700(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V

    .line 1063
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;I)I

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1800(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z

    move-result v0

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1037
    const-string v2, "SMUSIC-SV-PlayerMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInfo [what:] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " [extra:] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    packed-switch p2, :pswitch_data_0

    move v0, v1

    .line 1050
    :goto_0
    return v0

    .line 1040
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1402(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)Z

    .line 1041
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V

    goto :goto_0

    .line 1044
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1402(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)Z

    .line 1045
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V

    goto :goto_0

    .line 1038
    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 977
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isStop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 978
    const-string v1, "SMUSIC-SV-PlayerMedia"

    const-string v2, "-- onPrepared -- but this player already stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :goto_0
    return-void

    .line 981
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;I)I

    .line 982
    const-string v2, "SMUSIC-SV-PlayerMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- onPrepared - audio session id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsSupposedToBePlaying : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 983
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSeekPosition : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 984
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 987
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->seekTo(J)J

    .line 994
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const-wide/16 v4, -0x1

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$802(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;J)J

    .line 998
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setPlaySpeed(F)V

    .line 1000
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1001
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPrepared(Z)V

    .line 1004
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1005
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;ZI)V

    .line 1008
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1100(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    .line 1009
    .local v0, "dataSource":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    goto/16 :goto_0

    .line 989
    .end local v0    # "dataSource":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 990
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 1009
    .restart local v0    # "dataSource":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    goto :goto_2
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1020
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string v1, "-- onSeekComplete -- "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V

    .line 1022
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onSeekComplete()V

    .line 1025
    :cond_0
    return-void
.end method
