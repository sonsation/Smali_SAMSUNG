.class Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SeslAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    .prologue
    .line 1014
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1016
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    .prologue
    .line 1061
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1062
    return-void
.end method

.method public onChanged()V
    .locals 2

    .prologue
    .line 1020
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mDataChanged:Z

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iget v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mItemCount:I

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOldItemCount:I

    .line 1022
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mItemCount:I

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/os/Parcelable;)V

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1033
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->checkFocus()V

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->requestLayout()V

    .line 1035
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->rememberSyncState()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mDataChanged:Z

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iget v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mItemCount:I

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOldItemCount:I

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mItemCount:I

    .line 1050
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedPosition:I

    .line 1051
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iput-wide v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedRowId:J

    .line 1052
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedPosition:I

    .line 1053
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iput-wide v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedRowId:J

    .line 1054
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iput-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNeedSync:Z

    .line 1056
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->checkFocus()V

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->requestLayout()V

    .line 1058
    return-void
.end method
