.class public final Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;
.super Ljava/lang/Object;
.source "SemApexEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/SemApexEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BestPhotoScore"
.end annotation


# instance fields
.field private mScore:J

.field private mTimeUs:J

.field private mVideoId:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScore()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;->mScore:J

    return-wide v0
.end method

.method public getTimeUs()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;->mTimeUs:J

    return-wide v0
.end method

.method public getVideoId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;->mVideoId:J

    return-wide v0
.end method

.method public setScore(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;->mScore:J

    return-void
.end method

.method public setTimeUs(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;->mTimeUs:J

    return-void
.end method

.method public setVideoId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/SemApexEngine$BestPhotoScore;->mVideoId:J

    return-void
.end method
