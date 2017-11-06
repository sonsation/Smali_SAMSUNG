.class public Lcom/samsung/sectionmap/SmartVolumeLib;
.super Ljava/lang/Object;
.source "SmartVolumeLib.java"


# static fields
.field public static final SMART_VOLUME_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    :try_start_0
    const-string/jumbo v2, "savscmn"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v2, "savsff"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v2, "savsac"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    const-string v2, "SmartVolumeLib"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const/4 v1, 0x1

    .line 59
    .local v1, "libraryExist":Z
    :goto_0
    sput-boolean v1, Lcom/samsung/sectionmap/SmartVolumeLib;->SMART_VOLUME_ENABLED:Z

    .line 60
    return-void

    .line 55
    .end local v1    # "libraryExist":Z
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SMUSIC-SmartVolumeLib"

    const-string v3, "This device have NOT SmartVolume Library."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x0

    .restart local v1    # "libraryExist":Z
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native SmartVolumeEXE(Ljava/lang/String;)I
.end method

.method public native SmartVolumeInit()I
.end method

.method public native SmartVolumeRelease()I
.end method
