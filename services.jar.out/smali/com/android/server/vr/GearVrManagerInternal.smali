.class public abstract Lcom/android/server/vr/GearVrManagerInternal;
.super Ljava/lang/Object;
.source "GearVrManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract hasHmtFeature()Z
.end method

.method public abstract isDock()Z
.end method

.method public abstract isHomeKeyBlocked()Z
.end method

.method public abstract isMount()Z
.end method

.method public abstract isOverlayRestrictionWindow(Ljava/lang/String;II)Z
.end method

.method public abstract isStartActivityAllowed(Ljava/lang/String;)Z
.end method

.method public abstract isVrActivity(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract isVrMode()Z
.end method

.method public abstract isVrServiceAvailable()Z
.end method

.method public abstract notifyDeviceEventChanged(I)V
.end method

.method public abstract notifyVrAppError(Landroid/app/ApplicationErrorReport;)V
.end method

.method public abstract readyForVrMode(Landroid/content/ComponentName;Landroid/content/Intent;I)Z
.end method

.method public abstract registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
.end method

.method public abstract startVrHome()V
.end method

.method public abstract unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
.end method
