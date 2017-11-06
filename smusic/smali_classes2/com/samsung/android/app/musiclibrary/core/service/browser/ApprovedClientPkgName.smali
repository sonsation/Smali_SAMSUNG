.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/browser/ApprovedClientPkgName;
.super Ljava/lang/Object;
.source "ApprovedClientPkgName.java"


# static fields
.field public static final APPROVED_PKG:[Ljava/lang/String;

.field public static final PKG_BT:Ljava/lang/String; = "com.android.bluetooth"

.field public static final PKG_CAR_MODE:Ljava/lang/String; = "com.sec.android.automotive.drivelink"

.field public static final PKG_GEAR_MANAGER:Ljava/lang/String; = "com.samsung.android.gearoplugin"

.field public static final PKG_RUBIN:Ljava/lang/String; = "com.samsung.android.rubin.app"

.field public static final PKG_SVOICE_SYNC:Ljava/lang/String; = "com.samsung.svoice.sync"

.field public static final PKG_S_HEALTH:Ljava/lang/String; = "com.sec.android.app.shealth"

.field public static final PKG_S_PAGE:Ljava/lang/String; = "com.samsung.android.app.spage"

.field public static final PKG_S_VOICE_1:Ljava/lang/String; = "com.vlingo.midas"

.field public static final PKG_S_VOICE_2:Ljava/lang/String; = "com.samsung.voiceserviceplatform"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.bluetooth"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.automotive.drivelink"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.vlingo.midas"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.voiceserviceplatform"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.svoice.sync"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.shealth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.samsung.android.app.spage"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.samsung.android.rubin.app"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/ApprovedClientPkgName;->APPROVED_PKG:[Ljava/lang/String;

    return-void
.end method
