.class public Lcom/samsung/android/app/music/support/android/os/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# static fields
.field private static final RO_BUILD_SCAFE_VERSION:Ljava/lang/String; = "ro.build.scafe.version"

.field private static final RO_PRODUCT_NAME:Ljava/lang/String; = "ro.product.name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 25
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUxVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "N"

    .line 17
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ro.build.scafe.version"

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
