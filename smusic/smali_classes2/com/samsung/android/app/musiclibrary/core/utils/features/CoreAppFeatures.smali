.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;
.super Ljava/lang/Object;
.source "CoreAppFeatures.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreStaticFeatures;
.implements Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;
.implements Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;
.implements Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;
.implements Lcom/samsung/android/app/musiclibrary/ui/feature/USAFeatures;


# static fields
.field public static final IS_MASS_MODEL:Z

.field public static final SUPPORT_FW_FINE_VOLUME:Z

.field public static final SUPPORT_FW_SKIP_SILENCE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isFineVolumeSupported()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->SUPPORT_FW_FINE_VOLUME:Z

    .line 16
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v3, 0x31705

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->SUPPORT_FW_SKIP_SILENCE:Z

    .line 18
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string v3, "j1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->PRODUCT_NAME:Ljava/lang/String;

    const-string v3, "coreprime"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->IS_MASS_MODEL:Z

    return-void

    :cond_2
    move v0, v2

    .line 16
    goto :goto_0
.end method
