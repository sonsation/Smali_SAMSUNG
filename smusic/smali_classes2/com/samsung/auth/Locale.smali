.class public Lcom/samsung/auth/Locale;
.super Ljava/lang/Object;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/auth/Locale$AccessType;
    }
.end annotation


# static fields
.field public static so_load_level:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const/4 v1, 0x0

    sput v1, Lcom/samsung/auth/Locale;->so_load_level:I

    .line 22
    :try_start_0
    const-string v1, "gnustl_shared"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    const-string v1, "locale-font"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 24
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 25
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static native f1(I[B[B[B[BIJ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation
.end method

.method public static native f2(I[B[B[B[BIJ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation
.end method

.method public static native f3(I[B[B[B[BIJ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation
.end method

.method public static native setApplicationInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method
