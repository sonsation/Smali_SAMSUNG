.class Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;
.super Landroid/app/SharedElementCallback;
.source "SeslActivityCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallbackImpl"
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    .line 85
    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "viewToGlobalMatrix"    # Landroid/graphics/Matrix;
    .param p3, "screenBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "snapshot"    # Landroid/os/Parcelable;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

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
    .line 108
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 109
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
    .line 103
    .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;->onRejectSharedElements(Ljava/util/List;)V

    .line 104
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
    .line 97
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 99
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
    .line 90
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 92
    return-void
.end method

.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .param p3, "listener"    # Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
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
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallback23;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V

    .line 133
    return-void
.end method
