.class Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl$1;
.super Ljava/lang/Object;
.source "SeslActivityCompat.java"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;

.field final synthetic val$listener:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl$1;->val$listener:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl$1;->val$listener:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;->onSharedElementsReady()V

    .line 393
    return-void
.end method
