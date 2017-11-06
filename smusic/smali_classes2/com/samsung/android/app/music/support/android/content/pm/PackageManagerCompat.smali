.class public Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# static fields
.field public static final FEATURE_COVER_SVIEW:Ljava/lang/String;

.field public static final FEATURE_FOLDER_TYPE:Ljava/lang/String;

.field public static final FEATURE_HOVERING_UI:Ljava/lang/String;

.field public static final MATCH_UNINSTALLED_PACKAGES:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2000

    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const-string v0, "com.sec.feature.folder_type"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_FOLDER_TYPE:Ljava/lang/String;

    .line 14
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    const-string v0, "com.sec.feature.hovering_ui"

    :goto_1
    sput-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_HOVERING_UI:Ljava/lang/String;

    .line 18
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    const-string v0, "com.sec.feature.cover.sview"

    :goto_2
    sput-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_COVER_SVIEW:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->MATCH_UNINSTALLED_PACKAGES:I

    return-void

    .line 10
    :cond_1
    const-string v0, "com.sec.feature.folder_type"

    goto :goto_0

    .line 14
    :cond_2
    const-string v0, "com.sec.feature.hovering_ui"

    goto :goto_1

    .line 18
    :cond_3
    const-string v0, "com.sec.feature.cover.sview"

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
