.class Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$6;
.super Ljava/lang/Object;
.source "SeslSearchView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->addOnLayoutChangeListenerToDropDownAnchorBase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSearchView;->adjustDropDownSizeAndPosition()V

    .line 439
    return-void
.end method
