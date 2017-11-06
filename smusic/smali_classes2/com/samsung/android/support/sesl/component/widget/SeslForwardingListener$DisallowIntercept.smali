.class Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "SeslForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisallowIntercept"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$DisallowIntercept;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$DisallowIntercept;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 352
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 353
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 355
    :cond_0
    return-void
.end method
