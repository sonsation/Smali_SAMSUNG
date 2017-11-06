.class public final Lcom/mezzo/common/downloadmanager/DownloadThread$RESULT;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mezzo/common/downloadmanager/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RESULT"
.end annotation


# static fields
.field public static final AREADY:I = 0x5

.field public static final DOWNLOAD:I = 0x4

.field public static final NETWORK:I = 0x1

.field public static final OTHEREXCEPTION:I = 0x3

.field public static final OVERDATE:I = 0x6

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
