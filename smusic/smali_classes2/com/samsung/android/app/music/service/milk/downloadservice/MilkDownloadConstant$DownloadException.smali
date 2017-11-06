.class public abstract Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant$DownloadException;
.super Ljava/lang/RuntimeException;
.source "MilkDownloadConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/downloadservice/MilkDownloadConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DownloadException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method abstract getErrorCode()I
.end method
