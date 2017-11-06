.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
.source "RecyclerCursorAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        ">",
        "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter",
        "<TVH;>;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mActionModeEnabled:Z

.field private final mButtonBackgroundShowables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCheckBoxAnimatableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

.field protected final mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private mChoiceMode:I
    .annotation build Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ChoiceMode;
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private final mCpAttrsCol:Ljava/lang/String;

.field protected mCpAttrsColIndex:I

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private final mFooterViewTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mFragment:Landroid/app/Fragment;

.field private final mHeaderViewTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIgnoreParentPaddingChildViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDownKeyPerforming:Z

.field protected final mIsRemoteTrack:Z

.field private final mKeywordCol:Ljava/lang/String;

.field protected mKeywordIndex:I

.field private final mLargerFontSizeEnabled:Z

.field private mLargerFontSizeId:I

.field private final mListItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

.field private mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private mOnHeaderItemLayoutChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

.field private mOnHeaderViewCreatedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;

.field private mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

.field private final mPredefinedHeaderViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mPredefinedViewResources:Landroid/util/SparseIntArray;

.field private final mPrivateModeCol:Ljava/lang/String;

.field private mPrivateModeColIndex:I

.field protected final mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

.field private final mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

.field protected final mReorderableList:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;

.field private mRowIDColumn:I

.field private mSelectorMode:Z

.field private mShowButtonBackground:Ljava/lang/Boolean;

.field protected final mTag:Ljava/lang/String;

.field private final mText1Col:Ljava/lang/String;

.field private final mText1ColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private mText1FontSize:F

.field protected mText1Index:I

.field private final mText2Col:Ljava/lang/String;

.field private final mText2ColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field protected mText2Index:I

.field private final mText3Col:Ljava/lang/String;

.field private final mText3ColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field protected mText3Index:I

.field private final mThumbnailFullUriCol:Ljava/lang/String;

.field private mThumbnailFullUriIndex:I

.field private final mThumbnailId:Ljava/lang/String;

.field protected mThumbnailKeyIndex:I

.field private final mThumbnailSizeResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private final mThumbnailUri:Landroid/net/Uri;

.field private final mThumbnailUriSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewEnablers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWinsetUiEnabled:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<*>;"
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;-><init>()V

    .line 120
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1Index:I

    .line 122
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText2Index:I

    .line 124
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText3Index:I

    .line 126
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailKeyIndex:I

    .line 128
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailFullUriIndex:I

    .line 130
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPrivateModeColIndex:I

    .line 132
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mKeywordIndex:I

    .line 134
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCpAttrsColIndex:I

    .line 146
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    .line 148
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mChoiceMode:I

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFooterViewTypes:Ljava/util/List;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPredefinedHeaderViews:Landroid/util/SparseArray;

    .line 157
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPredefinedViewResources:Landroid/util/SparseIntArray;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mViewEnablers:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mButtonBackgroundShowables:Ljava/util/List;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mIgnoreParentPaddingChildViews:Ljava/util/List;

    .line 169
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mLargerFontSizeId:I

    .line 171
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1FontSize:F

    .line 206
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mTag:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->mFragment:Landroid/app/Fragment;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    :goto_2
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCheckBoxAnimatableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;

    :goto_3
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderableList:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;

    .line 217
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mContext:Landroid/content/Context;

    .line 218
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1Col:Ljava/lang/String;

    .line 219
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText2Col:Ljava/lang/String;

    .line 220
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText3Col:Ljava/lang/String;

    .line 221
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailId:Ljava/lang/String;

    .line 222
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailFullUriCol:Ljava/lang/String;

    .line 223
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$600(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mKeywordCol:Ljava/lang/String;

    .line 224
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$700(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCpAttrsCol:Ljava/lang/String;

    .line 226
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1ColorResId:I

    .line 227
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$900(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText2ColorResId:I

    .line 228
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$1000(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText3ColorResId:I

    .line 229
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$1100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mWinsetUiEnabled:Z

    .line 231
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$1200(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailUriSet:Landroid/util/SparseArray;

    .line 232
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$1300(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailUri:Landroid/net/Uri;

    .line 233
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$1400(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailSizeResId:I

    .line 235
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$1500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    const-string v0, "is_secretbox"

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPrivateModeCol:Ljava/lang/String;

    .line 240
    :goto_4
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$1600(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mIsRemoteTrack:Z

    .line 241
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$1700(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mLargerFontSizeEnabled:Z

    .line 242
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;->access$1800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mListItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    .line 246
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnPaddingChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;)V

    .line 256
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setHasStableIds(Z)V

    .line 257
    return-void

    :cond_1
    move-object v0, v1

    .line 208
    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 210
    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    .line 211
    goto/16 :goto_2

    :cond_4
    move-object v0, v1

    .line 214
    goto/16 :goto_3

    .line 238
    :cond_5
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPrivateModeCol:Ljava/lang/String;

    goto :goto_4
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mIgnoreParentPaddingChildViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->ignoreParentPadding(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnHeaderItemLayoutChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1ColorResId:I

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText2ColorResId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText3ColorResId:I

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailFullUriIndex:I

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mListItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)Landroid/view/View$OnGenericMotionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-object v0
.end method

.method public static convertToId(II)J
    .locals 2
    .param p0, "viewType"    # I
    .param p1, "position"    # I

    .prologue
    .line 945
    sub-int v0, p0, p1

    const v1, -0xf4240

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public static convertToViewType(JI)I
    .locals 2
    .param p0, "id"    # J
    .param p2, "position"    # I

    .prologue
    .line 924
    const-wide/32 v0, -0xf4240

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 930
    long-to-int v0, p0

    .line 937
    :goto_0
    return v0

    :cond_0
    long-to-int v0, p0

    add-int/2addr v0, p2

    const v1, -0xf4240

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getCursorInternal(IZ)Landroid/database/Cursor;
    .locals 3
    .param p1, "position"    # I
    .param p2, "throwException"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const/4 v0, 0x0

    .line 639
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->getReorderedPosition(I)I

    move-result p1

    .line 641
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 642
    if-eqz p2, :cond_3

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "use valid position for reorder item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mDataValid:Z

    if-nez v1, :cond_1

    .line 651
    if-eqz p2, :cond_3

    .line 652
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 659
    if-eqz p2, :cond_3

    .line 660
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    :cond_3
    return-object v0
.end method

.method private ignoreParentPadding(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentPaddingStart"    # I
    .param p3, "parentPaddingEnd"    # I

    .prologue
    .line 877
    .line 878
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 879
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 880
    neg-int v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 881
    return-void
.end method

.method private invokeNotifyDataSetChanged()V
    .locals 2

    .prologue
    .line 728
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCheckBoxAnimatableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCheckBoxAnimatableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    .line 729
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    .line 731
    .local v0, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 742
    :goto_1
    return-void

    .line 729
    .end local v0    # "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 740
    .restart local v0    # "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method private onBindPrivateIconView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;, "TVH;"
    const/4 v1, 0x0

    .line 427
    .local v1, "itemType":I
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPrivateModeColIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 428
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPrivateModeColIndex:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 430
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 458
    :cond_1
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 433
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 437
    :pswitch_1
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    if-nez v3, :cond_3

    .line 438
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->list_item_stub_private_icon:I

    .line 439
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 440
    .local v2, "privateIconStub":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewStub;

    if-eqz v3, :cond_3

    .line 441
    check-cast v2, Landroid/view/ViewStub;

    .end local v2    # "privateIconStub":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    .line 442
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$drawable;->music_library_tracks_private_mode:I

    .line 443
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 444
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 445
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mWinsetUiEnabled:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/samsung/android/app/musiclibrary/R$color;->list_item_icon_private_winset:I

    :goto_1
    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 449
    :cond_2
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 453
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->privateIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 445
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    sget v3, Lcom/samsung/android/app/musiclibrary/R$color;->blur_icon:I

    goto :goto_1

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onBindViewHolderChoiceMode(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 10
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;, "TVH;"
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRowIDColumn:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    .line 373
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mSelectorMode:Z

    if-nez v5, :cond_5

    iget-boolean v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasCheckBox:Z

    if-eqz v5, :cond_5

    .line 374
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mChoiceMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mActionModeEnabled:Z

    if-nez v5, :cond_1

    :cond_0
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mChoiceMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mChoiceMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 376
    :cond_1
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox_stub:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, "checkBoxStub":Landroid/view/View;
    instance-of v5, v0, Landroid/view/ViewStub;

    if-eqz v5, :cond_2

    .line 378
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "checkBoxStub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 380
    :cond_2
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .restart local v0    # "checkBoxStub":Landroid/view/View;
    instance-of v5, v0, Landroid/view/ViewStub;

    if-eqz v5, :cond_3

    .line 382
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "checkBoxStub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 385
    :cond_3
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-nez v5, :cond_4

    .line 386
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 387
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mWinsetUiEnabled:Z

    if-eqz v5, :cond_7

    .line 388
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 401
    :cond_4
    :goto_0
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 402
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 413
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v5, :cond_6

    .line 414
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 415
    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 416
    .local v3, "positions":Landroid/util/SparseBooleanArray;
    iget-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mSelectorMode:Z

    if-eqz v5, :cond_a

    .line 417
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setActivated(Z)V

    .line 423
    .end local v3    # "positions":Landroid/util/SparseBooleanArray;
    :cond_6
    :goto_2
    return-void

    .line 390
    :cond_7
    const/4 v5, 0x1

    new-array v4, v5, [[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [I

    aput-object v6, v4, v5

    .line 391
    .local v4, "states":[[I
    const/4 v5, 0x1

    new-array v1, v5, [I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    .line 392
    invoke-virtual {v6}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/app/musiclibrary/R$color;->blur_checkbox_background:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v6

    aput v6, v1, v5

    .line 394
    .local v1, "colors":[I
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 395
    sget-boolean v5, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->ROUND_CHECK_BOX:Z

    if-eqz v5, :cond_4

    .line 396
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$drawable;->checkbox_background_round:I

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_0

    .line 404
    .end local v1    # "colors":[I
    .end local v4    # "states":[[I
    :cond_8
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_5

    .line 405
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 406
    .local v2, "isAnimationRunning":Ljava/lang/Object;
    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "isAnimationRunning":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    .line 407
    :cond_9
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 418
    .restart local v3    # "positions":Landroid/util/SparseBooleanArray;
    :cond_a
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_6

    .line 419
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method

.method private onBindViewHolderMenuItemButton(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 6
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;, "TVH;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mListItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mListItemMenuable:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 504
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface {v1, v2, p2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;->isEnabled(Landroid/view/View;IJ)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRowIDColumn:I

    .line 505
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mActionModeEnabled:Z

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 506
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButtonGuideLine:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 508
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButtonGuideLine:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 510
    :cond_1
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButton:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 512
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButton:Landroid/view/View;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->more_options:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->setHoverContent(Landroid/content/Context;Landroid/view/View;I)V

    .line 514
    return-void

    .line 505
    .end local v0    # "visibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private onBindViewHolderRadioButton(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;, "TVH;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 463
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 464
    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 462
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 466
    :cond_0
    return-void
.end method

.method private onBindViewHolderReorder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;, "TVH;"
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRowIDColumn:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 470
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->list_item_stub_reorder:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 472
    .local v0, "reorderStub":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    .line 473
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "reorderStub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 475
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 476
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->reorder:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    .line 477
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    :cond_1
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :cond_2
    :goto_0
    return-void

    .line 495
    :cond_3
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 496
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->reorderView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final addButtonBackgroundShowable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V
    .locals 1
    .param p1, "buttonBackgroundShowable"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;

    .prologue
    .line 897
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mShowButtonBackground:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mShowButtonBackground:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;->showButtonBackground(Z)V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mButtonBackgroundShowables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    return-void
.end method

.method public addFooterView(II)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "resource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 769
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addFooterView() | viewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFooterViewTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPredefinedViewResources:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 773
    return-void
.end method

.method public addHeaderView(II)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "resource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 762
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addHeaderView() | viewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPredefinedViewResources:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 766
    return-void
.end method

.method public addHeaderView(ILandroid/view/View;)V
    .locals 3
    .param p1, "viewType"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 745
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addHeaderView() | duplicated viewType is added. Do not add duplicated headerView | viewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPredefinedHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 752
    return-void
.end method

.method protected final addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V
    .locals 1
    .param p1, "enabler"    # Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    .prologue
    .line 884
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isActionModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    .line 885
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mViewEnablers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    return-void

    .line 884
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addViewIgnoreParentPadding(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 871
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mIgnoreParentPaddingChildViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 873
    .local v0, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingEnd()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->ignoreParentPadding(Landroid/view/View;II)V

    .line 874
    return-void
.end method

.method protected final convertLargerFontSize(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;, "TVH;"
    const/4 v3, -0x1

    .line 323
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1FontSize:F

    .line 324
    .local v0, "fontSize":F
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mLargerFontSizeId:I

    if-eq v1, v3, :cond_0

    .line 325
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mLargerFontSizeId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v0, v1

    .line 327
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1Index:I

    if-eq v1, v3, :cond_1

    .line 328
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 330
    :cond_1
    return-void
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 615
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getCursor(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 625
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursorInternal(IZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected final getCursorOrThrow(I)Landroid/database/Cursor;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 635
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursorInternal(IZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFooterViewCount()I
    .locals 1

    .prologue
    .line 803
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFooterViewTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getFooterViewType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 795
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFooterViewTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .prologue
    .line 799
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getHeaderViewType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 791
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 541
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 544
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCpAttrs(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const/4 v1, -0x1

    .line 565
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCpAttrsColIndex:I

    if-eq v2, v1, :cond_0

    .line 566
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 567
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCpAttrsColIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 569
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    return v1
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 550
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 551
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getItemKeyword(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const/4 v1, 0x0

    .line 556
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mKeywordIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 557
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 558
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mKeywordIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 560
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    return-object v1
.end method

.method public getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;
    .locals 6
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 585
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mKeywordIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 586
    const/4 v4, 0x0

    .line 598
    :goto_0
    return-object v4

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 589
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v2, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 591
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 592
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "keyword":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 594
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    .end local v1    # "keyword":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 598
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 526
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mDataValid:Z

    if-nez v2, :cond_0

    .line 527
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "this should only be called when the cursor is valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 529
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 530
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " | cursorCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 532
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 534
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRowIDColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 535
    .local v0, "id":J
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRowIDColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const/4 v2, 0x1

    .line 536
    :goto_1
    return v2

    :cond_3
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->convertToViewType(JI)I

    move-result v2

    goto :goto_1
.end method

.method public getModifiedPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 816
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v0, p1, v1

    .line 817
    .local v0, "modifiedPosition":I
    if-gez v0, :cond_0

    .line 818
    const/4 v0, -0x1

    .line 825
    :cond_0
    return v0
.end method

.method public getText1(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const/4 v1, 0x0

    .line 575
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1Index:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 576
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 577
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1Index:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    return-object v1
.end method

.method public getValidItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 807
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const/4 v0, 0x0

    .line 808
    .local v0, "item":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getModifiedPosition(I)I

    move-result v1

    .line 809
    .local v1, "modifiedPosition":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 810
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 812
    .end local v0    # "item":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public hasFooterView(I)Z
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 787
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFooterViewTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasHeaderView(I)Z
    .locals 2
    .param p1, "viewtype"    # I

    .prologue
    .line 783
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 673
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1Col:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1Col:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1Index:I

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText2Col:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText2Col:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText2Index:I

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText3Col:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText3Col:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText3Index:I

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 683
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailId:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailKeyIndex:I

    .line 685
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailFullUriCol:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 686
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailFullUriCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailFullUriIndex:I

    .line 688
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mKeywordCol:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 689
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mKeywordCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mKeywordIndex:I

    .line 691
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPrivateModeCol:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 692
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPrivateModeCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPrivateModeColIndex:I

    .line 694
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCpAttrsCol:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 695
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCpAttrsCol:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCpAttrsColIndex:I

    .line 697
    :cond_7
    return-void
.end method

.method protected isActionModeEnabled()Z
    .locals 1

    .prologue
    .line 606
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mActionModeEnabled:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 949
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isReorderEnabled()Z
    .locals 1

    .prologue
    .line 862
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 866
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->movePosition(II)V

    .line 867
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->notifyItemMoved(II)V

    .line 868
    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 2
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;, "TVH;"
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemViewType(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 295
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V

    .line 296
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mChoiceMode:I

    if-eqz v1, :cond_2

    .line 297
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderChoiceMode(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V

    .line 299
    :cond_2
    iget-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasPrivateIcon:Z

    if-eqz v1, :cond_3

    .line 300
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindPrivateIconView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Landroid/database/Cursor;)V

    .line 302
    :cond_3
    iget-boolean v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->hasReorder:Z

    if-eqz v1, :cond_4

    .line 303
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderReorder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Landroid/database/Cursor;)V

    .line 305
    :cond_4
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_5

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderRadioButton(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 308
    :cond_5
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 309
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V

    .line 311
    :cond_6
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->menuItemButton:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 312
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderMenuItemButton(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V

    .line 315
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolderItemEnabled(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 317
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mLargerFontSizeEnabled:Z

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->convertLargerFontSize(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 66
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderItemEnabled(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 517
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result v1

    .line 518
    .local v1, "isEnabled":Z
    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 519
    .local v0, "alpha":F
    :goto_0
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 520
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 521
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 522
    return-void

    .line 518
    .end local v0    # "alpha":F
    :cond_0
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_0
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 4
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;, "TVH;"
    const/4 v3, -0x1

    .line 334
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1Index:I

    if-eq v0, v3, :cond_0

    .line 335
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1Index:I

    .line 336
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText2Index:I

    if-eq v0, v3, :cond_1

    .line 339
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText2Index:I

    .line 340
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    :cond_1
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText3Index:I

    if-eq v0, v3, :cond_2

    .line 343
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText3Index:I

    .line 344
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_2
    return-void
.end method

.method protected onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 8
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    .local p1, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;, "TVH;"
    const/4 v4, -0x1

    .line 349
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailFullUriIndex:I

    if-eq v3, v4, :cond_0

    .line 350
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailSizeResId:I

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailFullUriIndex:I

    .line 351
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget v6, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DEFAULT_ALBUM_ART:I

    iget-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mIsDownKeyPerforming:Z

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToPublisher(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 369
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mIsRemoteTrack:Z

    if-eqz v3, :cond_1

    .line 359
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DLNA_ARTWORK_URI:Landroid/net/Uri;

    .line 365
    .local v2, "uri":Landroid/net/Uri;
    :goto_1
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailKeyIndex:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 366
    .local v0, "albumId":J
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailSizeResId:I

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withBaseUri(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget v6, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DEFAULT_ALBUM_ART:I

    iget-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mIsDownKeyPerforming:Z

    invoke-direct {v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    .line 367
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToPublisher(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    goto :goto_0

    .line 360
    .end local v0    # "albumId":J
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCpAttrsColIndex:I

    if-eq v3, v4, :cond_2

    .line 361
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailUriSet:Landroid/util/SparseArray;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCpAttrsColIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 363
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mThumbnailUri:Landroid/net/Uri;

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const/4 v4, -0x1

    .line 262
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPredefinedHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 263
    .local v1, "predefinedView":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPredefinedViewResources:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 264
    .local v2, "resource":I
    if-nez v1, :cond_0

    if-eq v2, v4, :cond_0

    .line 265
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    .line 266
    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 267
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnHeaderViewCreatedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnHeaderViewCreatedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;

    invoke-interface {v3, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;->onHeaderViewCreated(ILandroid/view/View;)V

    .line 271
    :cond_0
    const-string v3, "UiList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onCreateViewHolder() viewType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | predefinedView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-result-object v0

    .line 275
    .local v0, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;, "TVH;"
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1FontSize:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 276
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mText1FontSize:F

    .line 278
    :cond_1
    return-object v0
.end method

.method protected abstract onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public removeFooterView(I)V
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 776
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFooterViewTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFooterViewTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFooterViewTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPredefinedViewResources:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 780
    return-void
.end method

.method public removeHeaderView(I)V
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    .line 755
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mHeaderViewTypes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mPredefinedHeaderViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 759
    return-void
.end method

.method public setActionModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 602
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mActionModeEnabled:Z

    .line 603
    return-void
.end method

.method setChoiceMode(IZ)V
    .locals 0
    .param p1, "choiceMode"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ChoiceMode;
        .end annotation
    .end param
    .param p2, "selectorMode"    # Z

    .prologue
    .line 849
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mChoiceMode:I

    .line 850
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mSelectorMode:Z

    .line 851
    return-void
.end method

.method public setIsDownKeyPerforming(Z)V
    .locals 0
    .param p1, "isDownKeyPerforming"    # Z

    .prologue
    .line 920
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mIsDownKeyPerforming:Z

    .line 921
    return-void
.end method

.method public setLargerFontSizeId(I)V
    .locals 1
    .param p1, "fontSizeResId"    # I

    .prologue
    .line 912
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mLargerFontSizeId:I

    if-ne v0, p1, :cond_0

    .line 917
    :goto_0
    return-void

    .line 915
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mLargerFontSizeId:I

    .line 916
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnGenericMotionListener;

    .prologue
    .line 841
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    .line 842
    return-void
.end method

.method public setOnHeaderItemLayoutChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

    .prologue
    .line 837
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnHeaderItemLayoutChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;

    .line 838
    return-void
.end method

.method public setOnHeaderViewCreatedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;

    .prologue
    .line 845
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnHeaderViewCreatedListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnHeaderViewCreatedListener;

    .line 846
    return-void
.end method

.method public setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .prologue
    .line 829
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 830
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    .prologue
    .line 833
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    .line 834
    return-void
.end method

.method public setReorderEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 854
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter.setReorderEnabled() - enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->setEnabled(Z)V

    .line 856
    if-eqz p1, :cond_0

    .line 857
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->resetPositions(I)V

    .line 859
    :cond_0
    return-void
.end method

.method public setViewEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 890
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mViewEnablers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    .line 891
    .local v0, "viewEnabler":Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    goto :goto_0

    .line 893
    .end local v0    # "viewEnabler":Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;
    :cond_0
    return-void
.end method

.method public showButtonBackground(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 905
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mShowButtonBackground:Ljava/lang/Boolean;

    .line 906
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mButtonBackgroundShowables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;

    .line 907
    .local v0, "buttonBackgroundShowable":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;->showButtonBackground(Z)V

    goto :goto_0

    .line 909
    .end local v0    # "buttonBackgroundShowable":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;
    :cond_0
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<TVH;>;"
    const/4 v2, 0x0

    .line 700
    const-string v3, "UiList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " swapCursor() | prevCursor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | newCursor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v3, :cond_1

    .line 703
    const/4 v1, 0x0

    .line 724
    :cond_0
    :goto_0
    return-object v1

    .line 705
    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 706
    .local v0, "newCursorCount":I
    :goto_1
    if-eqz v0, :cond_2

    .line 707
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 710
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 711
    .local v1, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 712
    if-eqz v0, :cond_4

    .line 713
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRowIDColumn:I

    .line 714
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mDataValid:Z

    .line 715
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->invokeNotifyDataSetChanged()V

    .line 721
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mReorderState:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->resetPositions(I)V

    goto :goto_0

    .end local v0    # "newCursorCount":I
    .end local v1    # "oldCursor":Landroid/database/Cursor;
    :cond_3
    move v0, v2

    .line 705
    goto :goto_1

    .line 717
    .restart local v0    # "newCursorCount":I
    .restart local v1    # "oldCursor":Landroid/database/Cursor;
    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mRowIDColumn:I

    .line 718
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->mDataValid:Z

    .line 719
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->invokeNotifyDataSetChanged()V

    goto :goto_2
.end method
