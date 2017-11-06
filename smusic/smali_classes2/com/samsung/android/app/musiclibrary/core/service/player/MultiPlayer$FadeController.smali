.class public Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;
.super Landroid/os/Handler;
.source "MultiPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FadeController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;
    }
.end annotation


# static fields
.field private static final FADE_DOWN:I = 0x2

.field private static final FADE_UP:I = 0x3

.field private static final MAX_VOLUME:F = 1.0f

.field private static final UPDATE_INTERVAL_MS:I = 0xa

.field private static final VOLUME_CHANGE_DIFF:F = 0.01f


# instance fields
.field mCurrentVolume:F

.field private final mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;

.field mTargetVolume:F


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "player"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1220
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    .line 1232
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 1233
    return-void
.end method


# virtual methods
.method fadeDown(F)V
    .locals 1
    .param p1, "targetVolume"    # F

    .prologue
    .line 1286
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mTargetVolume:F

    .line 1289
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->removeMessages(I)V

    .line 1290
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->sendEmptyMessage(I)Z

    .line 1291
    return-void
.end method

.method fadeUp(F)V
    .locals 1
    .param p1, "targetVolume"    # F

    .prologue
    .line 1278
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mTargetVolume:F

    .line 1281
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->removeMessages(I)V

    .line 1282
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->sendEmptyMessage(I)Z

    .line 1283
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v2, 0xa

    const v1, 0x3c23d70a    # 0.01f

    .line 1241
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1270
    :goto_0
    return-void

    .line 1243
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    .line 1244
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mTargetVolume:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1245
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->sendEmptyMessageDelayed(IJ)Z

    .line 1253
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1700(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;F)V

    goto :goto_0

    .line 1248
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mTargetVolume:F

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    .line 1249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;

    if-eqz v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;->onFadeFinished(F)V

    goto :goto_1

    .line 1256
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    .line 1257
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mTargetVolume:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 1258
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->sendEmptyMessageDelayed(IJ)Z

    .line 1266
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1700(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;F)V

    goto :goto_0

    .line 1261
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mTargetVolume:F

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    .line 1262
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;

    if-eqz v0, :cond_2

    .line 1263
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;->onFadeFinished(F)V

    goto :goto_2

    .line 1241
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setCurrentVolume(F)V
    .locals 1
    .param p1, "currentVolume"    # F

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mMultiPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1700(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;F)V

    .line 1274
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mCurrentVolume:F

    .line 1275
    return-void
.end method

.method public setOnFadeFinishedListener(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;)V
    .locals 0
    .param p1, "onFadeFinishedListener"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController;->mOnFadeFinishedListener:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$FadeController$OnFadeFinishedListener;

    .line 1237
    return-void
.end method
