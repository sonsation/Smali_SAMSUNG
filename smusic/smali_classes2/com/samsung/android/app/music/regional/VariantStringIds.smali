.class public Lcom/samsung/android/app/music/regional/VariantStringIds;
.super Ljava/lang/Object;
.source "VariantStringIds.java"


# static fields
.field public static final NO_DMS:I

.field public static final UNABLE_TO_SCAN_DEVICE:I

.field public static final WFD_ERR_WIFI_DIRECT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_STRING_WIFI:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a022b

    :goto_0
    sput v0, Lcom/samsung/android/app/music/regional/VariantStringIds;->WFD_ERR_WIFI_DIRECT:I

    .line 15
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_STRING_WIFI:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0a0211

    :goto_1
    sput v0, Lcom/samsung/android/app/music/regional/VariantStringIds;->UNABLE_TO_SCAN_DEVICE:I

    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_REPLACE_STRING_WIFI:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0a012d

    :goto_2
    sput v0, Lcom/samsung/android/app/music/regional/VariantStringIds;->NO_DMS:I

    return-void

    .line 11
    :cond_0
    const v0, 0x7f0a022a

    goto :goto_0

    .line 15
    :cond_1
    const v0, 0x7f0a0210

    goto :goto_1

    .line 19
    :cond_2
    const v0, 0x7f0a012c

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
