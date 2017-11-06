.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;
.source "SeslAbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 8309
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 8312
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 8313
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8314
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->onSectionsChanged()V

    .line 8316
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 8320
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 8321
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8322
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->onSectionsChanged()V

    .line 8324
    :cond_0
    return-void
.end method
