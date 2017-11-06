.class Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$1;
.super Ljava/lang/Object;
.source "SeslStaggeredGridLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->checkForGaps()Z

    .line 217
    return-void
.end method
