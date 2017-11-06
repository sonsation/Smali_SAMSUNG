.class Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$1;
.super Ljava/lang/Object;
.source "SeslFluidScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;I)V

    .line 254
    return-void
.end method
