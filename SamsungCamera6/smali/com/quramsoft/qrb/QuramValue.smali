.class public Lcom/quramsoft/qrb/QuramValue;
.super Ljava/lang/Object;
.source "QuramValue.java"


# static fields
.field public static final QRV_LIBRARY_NAME:Ljava/lang/String; = "Qjpeg"

.field public static final QRV_VERSION_MAJOR:I = 0x1

.field public static final QRV_VERSION_MICRO:I

.field public static final QRV_VERSION_MINOR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static qrvGetJarVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method
