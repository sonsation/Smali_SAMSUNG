.class Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;
.super Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;
.source "SeslActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallback23Impl"
.end annotation


# instance fields
.field private mCallback:Landroid/app/SharedElementCallback;


# direct methods
.method public constructor <init>(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;->mCallback:Landroid/app/SharedElementCallback;

    .line 346
    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;->mCallback:Landroid/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;->mCallback:Landroid/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;->mCallback:Landroid/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 370
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;->mCallback:Landroid/app/SharedElementCallback;

    invoke-virtual {v0, p1}, Landroid/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V

    .line 365
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;->mCallback:Landroid/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 360
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;->mCallback:Landroid/app/SharedElementCallback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 353
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
    .locals 2
    .param p3, "listener"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;",
            ")V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;->mCallback:Landroid/app/SharedElementCallback;

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl$1;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    .line 395
    return-void
.end method
