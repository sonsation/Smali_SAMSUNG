.class public Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;
.super Ljava/lang/Object;
.source "LyricsLogger.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$ILyricsLogger;
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;,
        Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$CloseType;
    }
.end annotation


# instance fields
.field private final mCloseId:Ljava/lang/String;

.field private final mJumpId:Ljava/lang/String;

.field private final mMagnificationId:Ljava/lang/String;

.field private final mScreenId:Ljava/lang/String;

.field private final mTriggerEventId:Ljava/lang/String;

.field private final mTriggerScreenId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->access$000(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mScreenId:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->access$100(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mTriggerScreenId:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->access$200(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mTriggerEventId:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->access$300(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mMagnificationId:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->access$400(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mJumpId:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;->access$500(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mCloseId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;-><init>(Lcom/samsung/android/app/music/common/lyrics/LyricsLogger$Builder;)V

    return-void
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method public onLoggingLyricsClosed()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->onLoggingLyricsClosed(I)V

    .line 66
    return-void
.end method

.method public onLoggingLyricsClosed(I)V
    .locals 3
    .param p1, "closeType"    # I

    .prologue
    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mCloseId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    const-string v0, "Close button"

    .line 82
    .local v0, "argCloseType":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->getScreenId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mCloseId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    .end local v0    # "argCloseType":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Tap Screen"

    .line 78
    .restart local v0    # "argCloseType":Ljava/lang/String;
    goto :goto_1

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoggingLyricsJumped()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mJumpId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mJumpId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onLoggingLyricsOpened()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mTriggerScreenId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mTriggerEventId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mTriggerScreenId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mTriggerEventId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->getScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendScreenId(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onLoggingLyricsTextMagnificationChanged(I)V
    .locals 3
    .param p1, "magnification"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mMagnificationId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 97
    packed-switch p1, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 99
    :pswitch_0
    const-string v0, "*1"

    .line 110
    .local v0, "argMagnification":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->getScreenId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsLogger;->mMagnificationId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    .end local v0    # "argMagnification":Ljava/lang/String;
    :pswitch_1
    const-string v0, "*2"

    .line 103
    .restart local v0    # "argMagnification":Ljava/lang/String;
    goto :goto_1

    .line 105
    .end local v0    # "argMagnification":Ljava/lang/String;
    :pswitch_2
    const-string v0, "*3"

    .line 106
    .restart local v0    # "argMagnification":Ljava/lang/String;
    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
