.class Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GSAPrewamingClientCallbacks"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/Launcher$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/Launcher$1;

    .prologue
    .line 2970
    invoke-direct {p0}, Lcom/android/launcher3/Launcher$GSAPrewamingClientCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverlayScrollChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 2975
    return-void
.end method

.method public onServiceStateChanged(ZZ)V
    .locals 0
    .param p1, "overlayAttached"    # Z
    .param p2, "hotwordActive"    # Z

    .prologue
    .line 2980
    return-void
.end method
