.class public Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;
.super Ljava/lang/Object;
.source "QuramAudioFrameData.java"


# instance fields
.field public frameData:[B

.field public frameDataEndTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBuffer([BI)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;->frameData:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/util/QuramAudioFrameData;->frameDataEndTime:J

    return-void
.end method
