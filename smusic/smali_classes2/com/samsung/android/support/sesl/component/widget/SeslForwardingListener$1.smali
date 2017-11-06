.class Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$1;
.super Ljava/lang/Object;
.source "SeslForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->addDetachListenerApi12(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V

    .line 96
    return-void
.end method
