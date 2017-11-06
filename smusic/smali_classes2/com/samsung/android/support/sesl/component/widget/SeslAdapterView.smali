.class abstract Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;
.super Landroid/view/ViewGroup;
.source "SeslAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterDataSetObserver;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterContextMenuInfo;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnNotifyKeyPressListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field private mContext:Landroid/content/Context;

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field private mFlagClipToPadding:Z

.field private mFlagDisallowIntercept:Z

.field mInLayout:Z

.field mIsRTL:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;

.field mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;

.field mOnNotifyKeyPressListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnNotifyKeyPressListener;

.field private mPenPressState:Z

.field private mPendingSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 262
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 266
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    .line 87
    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncRowId:J

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNeedSync:Z

    .line 129
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mInLayout:Z

    .line 167
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedPosition:I

    .line 173
    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedRowId:J

    .line 178
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedPosition:I

    .line 184
    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedRowId:J

    .line 216
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOldSelectedPosition:I

    .line 221
    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOldSelectedRowId:J

    .line 242
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mIsRTL:Z

    .line 248
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mBlockLayoutRequests:Z

    .line 252
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFlagDisallowIntercept:Z

    .line 253
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFlagClipToPadding:Z

    .line 272
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setImportantForAccessibility(I)V

    .line 278
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mPendingSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchOnItemSelected()V

    return-void
.end method

.method private dispatchOnItemSelected()V
    .locals 0

    .prologue
    .line 1121
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->fireOnSelected()V

    .line 1122
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->performAccessibilityActionsOnSelected()V

    .line 1123
    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 1126
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 1130
    .local v3, "selection":I
    if-ltz v3, :cond_1

    .line 1131
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 1132
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;

    .line 1133
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 1132
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 1135
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 1209
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1210
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    .line 1211
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 1212
    .local v1, "itemCount":I
    if-lez v1, :cond_1

    .line 1213
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1215
    .end local v1    # "itemCount":I
    :cond_1
    return v2
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 4

    .prologue
    .line 1140
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1141
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1145
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 1146
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 1148
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .param p1, "empty"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 951
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    const/4 p1, 0x0

    .line 955
    :cond_0
    if-eqz p1, :cond_3

    .line 956
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 957
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 958
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setVisibility(I)V

    .line 967
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 968
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onLayout(ZIIII)V

    .line 974
    :cond_1
    :goto_1
    return-void

    .line 961
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setVisibility(I)V

    goto :goto_0

    .line 971
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 972
    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 664
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in SeslAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 677
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in SeslAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 705
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in SeslAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 690
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in SeslAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1220
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 932
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 933
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    move v1, v4

    .line 934
    .local v1, "empty":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    move v2, v4

    .line 938
    .local v2, "focusable":Z
    :goto_1
    if-eqz v2, :cond_7

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 939
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 940
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 941
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->updateEmptyStatus(Z)V

    .line 943
    :cond_4
    return-void

    .end local v1    # "empty":Z
    .end local v2    # "focusable":Z
    :cond_5
    move v1, v5

    .line 933
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_6
    move v2, v5

    .line 934
    goto :goto_1

    .restart local v2    # "focusable":Z
    :cond_7
    move v3, v5

    .line 938
    goto :goto_2

    :cond_8
    move v3, v5

    .line 939
    goto :goto_3
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1293
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->selectionChanged()V

    .line 1295
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOldSelectedPosition:I

    .line 1296
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOldSelectedRowId:J

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mPendingSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    if-eqz v0, :cond_2

    .line 1302
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mPendingSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;->run()V

    .line 1304
    :cond_2
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1154
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1155
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1156
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    const/4 v1, 0x1

    .line 1159
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1011
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1012
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1004
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 1315
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mItemCount:I

    .line 1317
    .local v3, "count":I
    if-nez v3, :cond_1

    .line 1318
    const/4 v13, -0x1

    .line 1390
    :cond_0
    :goto_0
    return v13

    .line 1321
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncRowId:J

    .line 1322
    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncPosition:I

    .line 1325
    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v10, v16

    if-nez v16, :cond_2

    .line 1326
    const/4 v13, -0x1

    goto :goto_0

    .line 1330
    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1331
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1338
    .local v4, "endTime":J
    move v6, v13

    .line 1341
    .local v6, "first":I
    move v9, v13

    .line 1344
    .local v9, "last":I
    const/4 v12, 0x0

    .line 1354
    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1355
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v2, :cond_5

    .line 1356
    const/4 v13, -0x1

    goto :goto_0

    .line 1374
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v14, "rowId":J
    :cond_3
    if-nez v7, :cond_4

    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    .line 1376
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 1377
    move v13, v9

    .line 1379
    const/4 v12, 0x0

    .line 1359
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_6

    .line 1360
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1361
    .restart local v14    # "rowId":J
    cmp-long v16, v14, v10

    if-eqz v16, :cond_0

    .line 1366
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_7

    const/4 v8, 0x1

    .line 1367
    .restart local v8    # "hitLast":Z
    :goto_2
    if-nez v6, :cond_8

    const/4 v7, 0x1

    .line 1369
    .restart local v7    # "hitFirst":Z
    :goto_3
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 1390
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_6
    const/4 v13, -0x1

    goto :goto_0

    .line 1366
    .restart local v14    # "rowId":J
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1367
    .restart local v8    # "hitLast":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 1380
    .restart local v7    # "hitFirst":Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_5

    if-nez v7, :cond_5

    .line 1382
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 1383
    move v13, v6

    .line 1385
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1179
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const-class v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 794
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 892
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 846
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getFlagClipToPadding()Z
    .locals 1

    .prologue
    .line 1518
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFlagClipToPadding:Z

    return v0
.end method

.method public getFlagDisallowIntercept()Z
    .locals 1

    .prologue
    .line 1507
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFlagDisallowIntercept:Z

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 983
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 984
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 988
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 989
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 856
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemClickListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 391
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public final getOnMultiSelectedListener()Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;
    .locals 1

    .prologue
    .line 488
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;

    return-object v0
.end method

.method public final getOnNotifyKeyPressListener()Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnNotifyKeyPressListener;
    .locals 1

    .prologue
    .line 593
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnNotifyKeyPressListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnNotifyKeyPressListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v5, -0x1

    .line 814
    move-object v3, p1

    .line 817
    .local v3, "listItem":Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 818
    move-object v3, v4

    goto :goto_0

    .line 820
    .end local v4    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 836
    :cond_0
    :goto_1
    return v5

    .line 825
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    if-eqz v3, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getChildCount()I

    move-result v0

    .line 828
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 829
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 830
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 828
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 778
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 779
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 780
    .local v1, "selection":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 781
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 783
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 764
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 755
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1224
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mItemCount:I

    .line 1225
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1227
    .local v1, "found":Z
    if-lez v0, :cond_4

    .line 1232
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 1235
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNeedSync:Z

    .line 1239
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->findSyncPosition()I

    move-result v2

    .line 1240
    .local v2, "newPos":I
    if-ltz v2, :cond_0

    .line 1242
    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1243
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    .line 1245
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setNextSelectedPositionInt(I)V

    .line 1246
    const/4 v1, 0x1

    .line 1250
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 1252
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1255
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    .line 1256
    add-int/lit8 v2, v0, -0x1

    .line 1258
    :cond_1
    if-gez v2, :cond_2

    .line 1259
    const/4 v2, 0x0

    .line 1263
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1264
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    .line 1266
    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1268
    :cond_3
    if-ltz v3, :cond_4

    .line 1269
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setNextSelectedPositionInt(I)V

    .line 1270
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->checkSelectionChanged()V

    .line 1271
    const/4 v1, 0x1

    .line 1275
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 1277
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedPosition:I

    .line 1278
    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedRowId:J

    .line 1279
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedPosition:I

    .line 1280
    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedRowId:J

    .line 1281
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNeedSync:Z

    .line 1282
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->checkSelectionChanged()V

    .line 1285
    :cond_5
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->notifySubtreeAccessibilityStateChangedIfNeeded(Landroid/view/View;)V

    .line 1286
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 902
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1402
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    return p1
.end method

.method public notifyKeyPress(Landroid/view/View;IJZ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "shiftPressState"    # Z

    .prologue
    .line 600
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnNotifyKeyPressListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnNotifyKeyPressListener;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnNotifyKeyPressListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnNotifyKeyPressListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnNotifyKeyPressListener;->onNotifyKeyPress(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/view/View;IJZ)V

    .line 602
    const/4 v0, 0x1

    .line 604
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyMultiSelectedStart()V
    .locals 0

    .prologue
    .line 518
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    return-void
.end method

.method public notifyMultiSelectedStart(II)V
    .locals 1
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 535
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;->OnMultiSelectStart(II)V

    .line 538
    :cond_0
    return-void
.end method

.method public notifyMultiSelectedState(Landroid/view/View;IJZZZ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "shiftPressState"    # Z
    .param p6, "ctrlPressState"    # Z
    .param p7, "penPressState"    # Z

    .prologue
    .line 505
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mPenPressState:Z

    .line 506
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;->onMultiSelected(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/view/View;IJZZZ)V

    .line 508
    const/4 v2, 0x1

    .line 510
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyMultiSelectedStop()V
    .locals 1

    .prologue
    .line 525
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mPenPressState:Z

    .line 526
    return-void
.end method

.method public notifyMultiSelectedStop(II)V
    .locals 1
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 547
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mPenPressState:Z

    .line 548
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;->OnMultiSelectStop(II)V

    .line 551
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1067
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1068
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1069
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1196
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1197
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1198
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1199
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1203
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1204
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1205
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1206
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1185
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1186
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1187
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1188
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1191
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 745
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mLayoutHeight:I

    .line 746
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1165
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1168
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1170
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1171
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1172
    const/4 v1, 0x1

    .line 1174
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 334
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 335
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mPenPressState:Z

    if-nez v0, :cond_0

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->playSoundEffect(I)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemClickListener;->onItemClick(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/view/View;IJ)V

    .line 340
    const/4 v6, 0x1

    .line 345
    .local v6, "result":Z
    :goto_0
    if-eqz p1, :cond_1

    .line 346
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 348
    :cond_1
    return v6

    .line 342
    .end local v6    # "result":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "result":Z
    goto :goto_0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1435
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1436
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNeedSync:Z

    .line 1437
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncHeight:J

    .line 1438
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1440
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1441
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncRowId:J

    .line 1442
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncPosition:I

    .line 1443
    if-eqz v1, :cond_0

    .line 1444
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSpecificTop:I

    .line 1446
    :cond_0
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncMode:I

    .line 1463
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1449
    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1450
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1451
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1452
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncRowId:J

    .line 1456
    :goto_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncPosition:I

    .line 1457
    if-eqz v1, :cond_3

    .line 1458
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSpecificTop:I

    .line 1460
    :cond_3
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncMode:I

    goto :goto_0

    .line 1454
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method rememberSyncStateHorizontal(Z)V
    .locals 6
    .param p1, "isRtl"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1471
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1472
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNeedSync:Z

    .line 1473
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncHeight:J

    .line 1474
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_3

    .line 1476
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1477
    .local v1, "v":Landroid/view/View;
    iget-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncRowId:J

    .line 1478
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncPosition:I

    .line 1479
    if-eqz v1, :cond_0

    .line 1480
    if-eqz p1, :cond_2

    .line 1481
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSpecificTop:I

    .line 1486
    :cond_0
    :goto_0
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncMode:I

    .line 1504
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 1483
    .restart local v1    # "v":Landroid/view/View;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSpecificTop:I

    goto :goto_0

    .line 1489
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1490
    .restart local v1    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1491
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1492
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncRowId:J

    .line 1496
    :goto_2
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncPosition:I

    .line 1497
    if-eqz v1, :cond_4

    .line 1498
    if-eqz p1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSpecificTop:I

    .line 1501
    :cond_4
    :goto_3
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncMode:I

    goto :goto_1

    .line 1494
    :cond_5
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncRowId:J

    goto :goto_2

    .line 1499
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSpecificTop:I

    goto :goto_3
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 740
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in SeslAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 718
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in SeslAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 730
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in SeslAdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v2, 0x0

    .line 1092
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mPendingSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    .line 1094
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 1095
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1096
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mInLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 1101
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    if-nez v0, :cond_3

    .line 1102
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    .line 1106
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->post(Ljava/lang/Runnable;)Z

    .line 1111
    :cond_2
    :goto_1
    return-void

    .line 1104
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectionNotifier:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1108
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchOnItemSelected()V

    goto :goto_1
.end method

.method selectionChangedForAccessibility()V
    .locals 0

    .prologue
    .line 1117
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->performAccessibilityActionsOnSelected()V

    .line 1118
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v1, 0x1

    .line 871
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mEmptyView:Landroid/view/View;

    .line 874
    if-eqz p1, :cond_0

    .line 875
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 876
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 879
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 880
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 881
    .local v1, "empty":Z
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->updateEmptyStatus(Z)V

    .line 882
    return-void

    .line 880
    .end local v1    # "empty":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFlagClipToPadding(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1522
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFlagClipToPadding:Z

    .line 1523
    return-void
.end method

.method public setFlagDisallowIntercept(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1511
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mFlagDisallowIntercept:Z

    .line 1512
    return-void
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 907
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 908
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 910
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mDesiredFocusableState:Z

    .line 911
    if-nez p1, :cond_1

    .line 912
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 915
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 916
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 908
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 915
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 920
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 921
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 923
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 924
    if-eqz p1, :cond_1

    .line 925
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mDesiredFocusableState:Z

    .line 928
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 929
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 921
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 928
    goto :goto_1
.end method

.method public setMultiSelectedListener(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;

    .prologue
    .line 480
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnMultiSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;

    .line 481
    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1420
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedPosition:I

    .line 1421
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedRowId:J

    .line 1423
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1424
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncPosition:I

    .line 1425
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSyncRowId:J

    .line 1427
    :cond_0
    return-void
.end method

.method public setNotifyOnKeyPressListener(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnNotifyKeyPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnNotifyKeyPressListener;

    .prologue
    .line 584
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnNotifyKeyPressListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnNotifyKeyPressListener;

    .line 585
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 994
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an SeslAdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 309
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemClickListener;

    .line 310
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    .prologue
    .line 380
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setLongClickable(Z)V

    .line 383
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    .line 384
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 432
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mOnItemSelectedListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemSelectedListener;

    .line 433
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1410
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>;"
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedPosition:I

    .line 1411
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mSelectedRowId:J

    .line 1412
    return-void
.end method

.method public abstract setSelection(I)V
.end method
