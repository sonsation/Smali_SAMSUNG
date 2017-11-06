.class public Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;
.super Ljava/lang/Object;
.source "EmergencyConstantsCompat.java"


# static fields
.field public static final EMERGENCY_STATE_CHANGED:Ljava/lang/String;

.field public static final MODE_DISABLED:I

.field public static final MODE_ENABLED:I

.field public static final MODE_ENABLING:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 9
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    .line 13
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v2, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_ENABLED:I

    .line 17
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    :cond_1
    sput v1, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_ENABLING:I

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    :cond_2
    sput v3, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_DISABLED:I

    return-void

    .line 9
    :cond_3
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
