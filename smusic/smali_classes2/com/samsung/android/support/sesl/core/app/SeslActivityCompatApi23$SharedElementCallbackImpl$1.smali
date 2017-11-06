.class Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl$1;
.super Ljava/lang/Object;
.source "SeslActivityCompatApi23.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$OnSharedElementsReadyListenerBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;

.field final synthetic val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementsReady()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$SharedElementCallbackImpl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;

    invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V

    .line 131
    return-void
.end method
