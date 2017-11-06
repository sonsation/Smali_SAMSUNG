.class Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver$1;
.super Ljava/lang/Object;
.source "SeslIndexScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexerObserver;->mDataInvalid:Z

    .line 674
    return-void
.end method
