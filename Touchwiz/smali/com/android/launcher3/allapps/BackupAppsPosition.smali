.class public Lcom/android/launcher3/allapps/BackupAppsPosition;
.super Ljava/lang/Object;
.source "BackupAppsPosition.java"


# static fields
.field public static INVALID_DATA:I


# instance fields
.field private rank:I

.field private screenId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/allapps/BackupAppsPosition;->INVALID_DATA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget v0, Lcom/android/launcher3/allapps/BackupAppsPosition;->INVALID_DATA:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/launcher3/allapps/BackupAppsPosition;->screenId:J

    .line 23
    sget v0, Lcom/android/launcher3/allapps/BackupAppsPosition;->INVALID_DATA:I

    iput v0, p0, Lcom/android/launcher3/allapps/BackupAppsPosition;->rank:I

    return-void
.end method


# virtual methods
.method public getRank()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/android/launcher3/allapps/BackupAppsPosition;->rank:I

    return v0
.end method

.method public getScreenId()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/android/launcher3/allapps/BackupAppsPosition;->screenId:J

    return-wide v0
.end method

.method public setRank(I)V
    .locals 0
    .param p1, "rank"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/android/launcher3/allapps/BackupAppsPosition;->rank:I

    .line 27
    return-void
.end method

.method public setScreenId(J)V
    .locals 1
    .param p1, "screenId"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/android/launcher3/allapps/BackupAppsPosition;->screenId:J

    .line 31
    return-void
.end method
