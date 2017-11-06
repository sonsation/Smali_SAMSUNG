.class public Lcom/samsung/android/app/music/common/update/VersionCheckInfo$DeviceInfo;
.super Ljava/lang/Object;
.source "VersionCheckInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/update/VersionCheckInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DeviceInfo"
.end annotation


# static fields
.field static final DEVICE_ID:Ljava/lang/String;

.field private static final DEVICE_ID_NOT_REGISTERED:Ljava/lang/String; = "TST-ANDROID"

.field private static final SAMSUNG_DEVICE_NAME_PREFIX:Ljava/lang/String; = "SAMSUNG-"

.field static final SDK_INT:Ljava/lang/String;

.field static final TEST_MODE_ID:Ljava/lang/String; = "__TST"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SAMSUNG-"

    const-string v2, ""

    .line 47
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/update/VersionCheckInfo$DeviceInfo;->DEVICE_ID:Ljava/lang/String;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/update/VersionCheckInfo$DeviceInfo;->SDK_INT:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
