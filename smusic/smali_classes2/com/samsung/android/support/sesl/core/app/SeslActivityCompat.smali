.class public Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;
.super Lcom/samsung/android/support/sesl/core/content/SeslContextCompat;
.source "SeslActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;,
        Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback21Impl;,
        Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/content/SeslContextCompat;-><init>()V

    .line 83
    return-void
.end method

.method private static createCallback(Landroid/app/SharedElementCallback;)Landroid/app/SharedElementCallback;
    .locals 1
    .param p0, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "newCallback":Landroid/app/SharedElementCallback;
    if-eqz p0, :cond_0

    .line 279
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback21Impl;

    .end local v0    # "newCallback":Landroid/app/SharedElementCallback;
    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/app/SharedElementCallback;)V

    .line 281
    .restart local v0    # "newCallback":Landroid/app/SharedElementCallback;
    :cond_0
    return-object v0
.end method

.method private static createCallback23(Landroid/app/SharedElementCallback;)Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;
    .locals 1
    .param p0, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "newCallback":Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;
    if-eqz p0, :cond_0

    .line 288
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;

    .end local v0    # "newCallback":Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;
    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;-><init>(Landroid/app/SharedElementCallback;)V

    .line 290
    .restart local v0    # "newCallback":Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;
    :cond_0
    return-object v0
.end method

.method public static getReferrer(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_1

    .line 104
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi22;->getReferrer(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    :cond_0
    :goto_0
    return-object v1

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 108
    .local v1, "referrer":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 111
    const-string v3, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 113
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 408
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Lcom/samsung/android/support/sesl/core/view/SeslDragAndDropPermissionsCompat;

    move-result-object v0

    return-object v0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 222
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 223
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    instance-of v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$OnRequestPermissionsResultCallback;

    if-eqz v1, :cond_0

    .line 225
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 226
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$1;

    invoke-direct {v1, p1, p0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 129
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;->createCallback23(Landroid/app/SharedElementCallback;)Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23;->setEnterSharedElementCallback(Landroid/app/Activity;Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;->createCallback(Landroid/app/SharedElementCallback;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto :goto_0
.end method

.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 147
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;->createCallback23(Landroid/app/SharedElementCallback;)Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23;->setExitSharedElementCallback(Landroid/app/Activity;Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;->createCallback(Landroid/app/SharedElementCallback;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    goto :goto_0
.end method

.method public static shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 270
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
