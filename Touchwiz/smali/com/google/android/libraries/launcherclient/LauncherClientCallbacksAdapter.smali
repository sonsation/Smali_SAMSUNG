.class public Lcom/google/android/libraries/launcherclient/LauncherClientCallbacksAdapter;
.super Ljava/lang/Object;
.source "LauncherClientCallbacksAdapter.java"

# interfaces
.implements Lcom/google/android/libraries/launcherclient/LauncherClientCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverlayScrollChanged(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 9
    return-void
.end method

.method public onServiceStateChanged(ZZ)V
    .locals 0
    .param p1, "overlayAttached"    # Z
    .param p2, "hotwordActive"    # Z

    .prologue
    .line 12
    return-void
.end method
