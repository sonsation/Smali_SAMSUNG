.class public Lcom/samsung/android/app/music/support/android/drm/DrmStore/ConstraintsColumnsCompat;
.super Ljava/lang/Object;
.source "ConstraintsColumnsCompat.java"


# static fields
.field public static final LICENSE_CATEGORY:Ljava/lang/String;

.field public static final LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const-string v0, "license_original_interval"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/ConstraintsColumnsCompat;->LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;

    .line 14
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const-string v0, "license_category"

    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/ConstraintsColumnsCompat;->LICENSE_CATEGORY:Ljava/lang/String;

    return-void

    .line 10
    :cond_0
    const-string v0, "license_original_interval"

    goto :goto_0

    .line 14
    :cond_1
    const-string v0, "license_category"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
