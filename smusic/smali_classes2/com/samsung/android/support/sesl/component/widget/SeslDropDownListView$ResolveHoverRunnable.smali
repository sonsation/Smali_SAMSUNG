.class Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "SeslDropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveHoverRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->access$102(Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

    .line 357
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method public post()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->access$102(Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

    .line 352
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->drawableStateChanged()V

    .line 353
    return-void
.end method
