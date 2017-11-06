.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;
.source "SeslAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
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
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 8364
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 8367
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->onChanged()V

    .line 8368
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8369
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onSectionsChanged()V

    .line 8373
    :cond_0
    :goto_0
    return-void

    .line 8370
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8371
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onSectionsChanged()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 8377
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 8378
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8379
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onSectionsChanged()V

    .line 8383
    :cond_0
    :goto_0
    return-void

    .line 8380
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8381
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onSectionsChanged()V

    goto :goto_0
.end method
