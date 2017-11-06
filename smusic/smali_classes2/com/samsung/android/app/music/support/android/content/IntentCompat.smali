.class public Lcom/samsung/android/app/music/support/android/content/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# static fields
.field public static final ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    .line 20
    const-string v0, "android.content.Intent"

    const-string v1, "SEM_ACTION_USER_SWITCHED"

    const-string v2, ""

    .line 21
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_USER_SWITCHED:Ljava/lang/String;

    .line 26
    :goto_0
    return-void

    .line 23
    :cond_0
    const-string v0, "com.samsung.MEDIA_SCAN"

    sput-object v0, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    .line 24
    const-string v0, "android.intent.action.USER_SWITCHED"

    sput-object v0, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_USER_SWITCHED:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
