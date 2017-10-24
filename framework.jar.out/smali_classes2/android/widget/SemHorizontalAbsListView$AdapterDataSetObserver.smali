.class Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "SemHorizontalAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">.AdapterDataSetObserver;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 9164
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 9167
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 9168
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get8(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9169
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get8(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onSectionsChanged()V

    .line 9166
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 9175
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 9176
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get8(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9177
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get8(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onSectionsChanged()V

    .line 9174
    :cond_0
    return-void
.end method
