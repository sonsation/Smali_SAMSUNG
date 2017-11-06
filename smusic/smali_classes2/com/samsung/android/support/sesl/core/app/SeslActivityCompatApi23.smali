.class Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23;
.super Ljava/lang/Object;
.source "SeslActivityCompatApi23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;,
        Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;,
        Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$RequestPermissionsRequestCodeValidator;,
        Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCallback(Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;
    .locals 1
    .param p0, "callback"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "newListener":Landroid/app/SharedElementCallback;
    if-eqz p0, :cond_0

    .line 69
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;

    .end local v0    # "newListener":Landroid/app/SharedElementCallback;
    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;)V

    .line 71
    .restart local v0    # "newListener":Landroid/app/SharedElementCallback;
    :cond_0
    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 44
    instance-of v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 45
    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    .line 46
    invoke-interface {v0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    .prologue
    .line 58
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23;->createCallback(Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 59
    return-void
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    .prologue
    .line 63
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23;->createCallback(Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 64
    return-void
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
