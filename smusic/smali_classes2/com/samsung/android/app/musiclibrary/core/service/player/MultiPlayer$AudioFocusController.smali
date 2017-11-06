.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;
.super Landroid/os/Handler;
.source "MultiPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioFocusController"
.end annotation


# static fields
.field private static final FOCUS_CHANGE:I = 0x1


# instance fields
.field private mAudioFocusGained:Z

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private mPausedByTransientLossOfFocus:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "multiPlayer"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    const/4 v0, 0x0

    .line 1103
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1094
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mPausedByTransientLossOfFocus:Z

    .line 1100
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusGained:Z

    .line 1109
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1104
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 1105
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mContext:Landroid/content/Context;

    .line 1106
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioManager:Landroid/media/AudioManager;

    .line 1107
    return-void
.end method

.method private handleAudioFocus(I)V
    .locals 4
    .param p1, "focusChange"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1143
    packed-switch p1, :pswitch_data_0

    .line 1188
    :pswitch_0
    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusGained:Z

    .line 1191
    :goto_0
    return-void

    .line 1145
    :pswitch_1
    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS in DMR case so ignore it."

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->pause()V

    .line 1151
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusGained:Z

    goto :goto_0

    .line 1155
    :pswitch_2
    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK this will fade down until volume 20%"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->fadeDown(F)V

    .line 1158
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusGained:Z

    goto :goto_0

    .line 1161
    :pswitch_3
    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1163
    const-string v0, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT in DMR case so ignore it."

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1168
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mPausedByTransientLossOfFocus:Z

    .line 1171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Z)V

    .line 1173
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusGained:Z

    goto :goto_0

    .line 1176
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN paused by focus before ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_3

    .line 1180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1400(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;F)V

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    .line 1185
    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusGained:Z

    goto/16 :goto_0

    .line 1183
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1600(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;F)V

    goto :goto_1

    .line 1143
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method abandonAudioFocus()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusGained:Z

    .line 1135
    :cond_0
    return-void
.end method

.method clearPausedByAudioFocus()V
    .locals 1

    .prologue
    .line 1138
    const-string v0, "AudioFocus: clearPausedByAudioFocus"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mPausedByTransientLossOfFocus:Z

    .line 1140
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1195
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->handleAudioFocus(I)V

    .line 1196
    return-void
.end method

.method hasAudioFocus()Z
    .locals 1

    .prologue
    .line 1203
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusGained:Z

    return v0
.end method

.method public isPausedByAudioFocus()Z
    .locals 1

    .prologue
    .line 1199
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method requestAudioFocus()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1118
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isDmrPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1119
    const-string v1, "AudioFocus: requestAudioFocus but, this is dmr playing. ignore this request."

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    .line 1127
    :goto_0
    return v0

    .line 1123
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$AudioFocusController;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    .line 1124
    invoke-virtual {v1, v2, v3, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 1126
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request audio focus result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    goto :goto_0
.end method
