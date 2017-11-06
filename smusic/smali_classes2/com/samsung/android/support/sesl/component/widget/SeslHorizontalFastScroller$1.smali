.class Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller$1;
.super Ljava/lang/Object;
.source "SeslHorizontalFastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;I)V

    .line 226
    return-void
.end method
