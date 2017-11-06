.class public Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$TrackDownloadError;
.super Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;
.source "MilkDownloadConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackDownloadError"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "track download error"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x66

    return v0
.end method
