.class public final Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;
.super Ljava/lang/Object;
.source "PlugInShootingModesStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlugInShootingMode"
.end annotation


# instance fields
.field public final activityName:Ljava/lang/String;

.field public final cameraType:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

.field public downloaded:I

.field public frontOrder:I

.field public final iconId:I

.field public final id:I

.field public final majorVersion:I

.field public final minorVersion:I

.field public final modeDesc:Ljava/lang/String;

.field public final modeTitle:Ljava/lang/String;

.field public final nativeLibraryDir:Ljava/lang/String;

.field public order:I

.field public final packageName:Ljava/lang/String;

.field public final pressedIconId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;III)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->id:I

    iput-object p2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeDesc:Ljava/lang/String;

    iput p6, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->iconId:I

    iput p7, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->pressedIconId:I

    iput p8, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->majorVersion:I

    iput p9, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->minorVersion:I

    iput-object p10, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->nativeLibraryDir:Ljava/lang/String;

    :try_start_0
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->cameraType:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    move/from16 v0, p12

    iput v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->order:I

    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->frontOrder:I

    move/from16 v0, p14

    iput v0, p0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->downloaded:I

    return-void

    :catch_0
    move-exception v1

    const-string v3, "PlugInSMStorage"

    const-string v4, "not recognized camera type"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;->BOTH:Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$CameraTypes;

    goto :goto_0
.end method
