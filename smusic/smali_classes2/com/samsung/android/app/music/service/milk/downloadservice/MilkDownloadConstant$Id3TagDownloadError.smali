.class public Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$Id3TagDownloadError;
.super Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;
.source "MilkDownloadConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Id3TagDownloadError"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "id3 tag download error"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x65

    return v0
.end method
