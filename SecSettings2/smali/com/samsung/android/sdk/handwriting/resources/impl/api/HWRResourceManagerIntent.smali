.class public Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;
.super Ljava/lang/Object;
.source "HWRResourceManagerIntent.java"


# static fields
.field public static EXTRA_DELETE_RESULT:Ljava/lang/String;

.field public static EXTRA_LANG_KEY:Ljava/lang/String;

.field public static EXTRA_LANG_NAME:Ljava/lang/String;

.field public static EXTRA_LANG_PRELOADED:Ljava/lang/String;

.field public static EXTRA_NOTIFICATION_INTENT:Ljava/lang/String;

.field public static EXTRA_NOTIFICATION_TITLE:Ljava/lang/String;

.field public static EXTRA_PENDING_INTENT:Ljava/lang/String;

.field public static EXTRA_PROGRESS:Ljava/lang/String;

.field public static EXTRA_PROGRESS_SIZE:Ljava/lang/String;

.field public static EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String;

.field public static EXTRA_TOTAL_SIZE:Ljava/lang/String;

.field public static EXTRA_UPDATE_FAILED_TEXT:Ljava/lang/String;

.field public static EXTRA_UPDATE_RESULT:Ljava/lang/String;

.field public static EXTRA_UPDATE_SUCCESS_TEXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_SENDER"

    .line 56
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_LANG"

    .line 61
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_LANG_KEY:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_LANG_NAME"

    .line 66
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_LANG_NAME:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_NOTIFICATION_INTENT"

    .line 71
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_NOTIFICATION_INTENT:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_LANG_PRELOADED"

    .line 75
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_LANG_PRELOADED:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_PROGRESS"

    .line 77
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_PROGRESS:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_TOTAL_SIZE"

    .line 79
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_TOTAL_SIZE:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_PROGRESS_SIZE"

    .line 81
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_PROGRESS_SIZE:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_UPDATE_RESULT"

    .line 83
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_UPDATE_RESULT:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_DELETE_RESULT"

    .line 85
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_DELETE_RESULT:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_PENDING_INTENT"

    .line 87
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_PENDING_INTENT:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_NOTIFICATION_TITLE"

    .line 89
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_NOTIFICATION_TITLE:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_UPDATE_SUCCESS_TEXT"

    .line 91
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_UPDATE_SUCCESS_TEXT:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.EXTRA_UPDATE_FAILED_TEXT"

    .line 93
    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_UPDATE_FAILED_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
