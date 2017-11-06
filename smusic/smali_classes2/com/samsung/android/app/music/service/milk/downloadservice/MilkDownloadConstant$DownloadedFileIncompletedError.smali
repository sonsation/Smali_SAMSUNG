.class public Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadedFileIncompletedError;
.super Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;
.source "MilkDownloadConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadedFileIncompletedError"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "downloaded file (id3, track) incompleted error"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;-><init>(Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x69

    return v0
.end method
