.class Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;
.super Ljava/lang/Object;
.source "SeslForwardingListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->addDetachListenerBase(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsAttached:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;->mIsAttached:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;->mIsAttached:Z

    .line 107
    .local v0, "wasAttached":Z
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;->mIsAttached:Z

    .line 108
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;->mIsAttached:Z

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V

    .line 111
    :cond_0
    return-void
.end method
