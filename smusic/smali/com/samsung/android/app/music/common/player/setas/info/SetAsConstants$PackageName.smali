.class public final Lcom/samsung/android/app/music/common/player/setas/info/SetAsConstants$PackageName;
.super Ljava/lang/Object;
.source "SetAsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/setas/info/SetAsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageName"
.end annotation


# static fields
.field public static final ALARM:Ljava/lang/String; = "com.sec.android.app.clockpackage"

.field public static final CONTACT:Ljava/lang/String;

.field private static final DEFAULT_CONTACT:Ljava/lang/String; = "com.android.contacts"

.field public static final PHONE:Ljava/lang/String; = "com.android.phone"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-string v0, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v1, "com.android.contacts"

    .line 20
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/info/SetAsConstants$PackageName;->CONTACT:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
