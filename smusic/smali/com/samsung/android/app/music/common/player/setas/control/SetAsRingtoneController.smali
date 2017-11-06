.class public final Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;
.super Ljava/lang/Object;
.source "SetAsRingtoneController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$AlarmRingtone;,
        Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$CallerRingtone;,
        Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;,
        Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;,
        Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;,
        Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Result;
    }
.end annotation


# static fields
.field private static final ALARM_LAUNCH_MODE:Ljava/lang/String; = "AlarmLaunchMode"

.field private static final ALARM_LAUNCH_SET_AS:I = 0x3

.field private static final ALARM_RINGTONE_EXTRA_URI:Ljava/lang/String; = "alarm_uri"

.field public static final ALARM_RINGTONE_URI:Ljava/lang/String; = "alarm://com.sec.android.app.clockpackage/alarmlist/"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RINGTONE_ROLE_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->LOG_TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->RINGTONE_ROLE_MAP:Landroid/util/SparseArray;

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->RINGTONE_ROLE_MAP:Landroid/util/SparseArray;

    const v1, 0x7f12056d

    new-instance v2, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$PhoneRingtone;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->RINGTONE_ROLE_MAP:Landroid/util/SparseArray;

    const v1, 0x7f120575

    new-instance v2, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$CallerRingtone;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$CallerRingtone;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->RINGTONE_ROLE_MAP:Landroid/util/SparseArray;

    const v1, 0x7f120576

    new-instance v2, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$AlarmRingtone;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$AlarmRingtone;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->mActivity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method setAsRingtone(ILandroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V
    .locals 4
    .param p1, "ringtoneType"    # I
        .annotation build Lcom/samsung/android/app/music/common/player/setas/info/SetAsConstants$RingtoneType$Def;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "highlightOffset"    # I
    .param p4, "listener"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    .prologue
    .line 72
    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->RINGTONE_ROLE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;

    .line 73
    .local v0, "ringtone":Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;
    if-nez v0, :cond_0

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ringtoneType is unknown value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected Ringtone Type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$Ringtone;->setAs(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/common/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V

    .line 78
    return-void
.end method
