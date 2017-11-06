.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "RecyclerViewFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ListItemChecker;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$IndexVisibleStateChangedListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;,
        Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/Deleteable;",
        "Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ListItemChecker;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableList;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;"
    }
.end annotation


# static fields
.field public static final BASE_THROTTLE_TIME:I = 0x7d0

.field private static final DEBUG:Z

.field protected static final LIST_SHOWN_HAVING_VALID_DATA_ONLY:I = 0x4

.field protected static final LIST_SHOWN_WITH_ANIMATION:I = 0x1

.field protected static final LIST_SHOWN_WITH_LOADING_PROGRESS:I = 0x2

.field private static final MAX_RECYCLED_VIEW_COUNT:I = 0x14

.field private static final SAVED_KEY_DELETE_REQUESTED:Ljava/lang/String; = "key_delete_requested"

.field private static final SAVED_KEY_IS_OVERFLOW_MENU_SHOWING:Ljava/lang/String; = "key_is_shown_action_mode_menu"

.field private static final SAVED_KEY_MENU_VISIBLE:Ljava/lang/String; = "key_menu_visible"

.field private static final SAVED_KEY_RESTORE_ACTION_MODE:Ljava/lang/String; = "key_restore_action_mode"

.field private static final SAVED_KEY_RESTORE_REORDER_ENABLED:Ljava/lang/String; = "key_restore_reorder_enabled"


# instance fields
.field private mActionModeMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

.field protected mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

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

.field private mCardViewControllable:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

.field private mCheckBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private mContext:Landroid/content/Context;

.field private mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

.field private mDexListInputController:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewCreator:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

.field private mEmptyViewLayoutResId:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mEmptyViewStringResId:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private final mExtraLoaderIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

.field private final mIndexViewObservers:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

.field private mKeyObservable:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

.field private mListContainer:Landroid/view/ViewGroup;

.field private final mListLoaderCallbacksWrapper:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<TT;>.",
            "ListLoaderCallbacksWrapper;"
        }
    .end annotation
.end field

.field private final mListLoaderIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListScreenIdHelper:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

.field private mListShown:Z

.field private mMenuVisible:Z

.field private final mNotifyDataSetChangedRunnable:Ljava/lang/Runnable;

.field private mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnItemCountListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

.field private final mOnKeyListener:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

.field private final mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

.field private mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

.field private final mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

.field private final mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

.field private mPlayAllButtonViewManager:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

.field private mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

.field private mProgressContainer:Landroid/view/View;

.field protected mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private mReorderManager:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

.field private mRestoreActionMode:Z

.field private mRestoreActionModeMenu:Z

.field private mRestoreReorderEnabled:Z

.field private mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private mSelectedItemPlayable:Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;

.field private mSetItemAnimator:Z

.field private mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

.field private mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

.field private mShowButtonBackground:Ljava/lang/Boolean;

.field private mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

.field private final mShowButtonBgSettingChangedListener:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

.field private mShownOnlyHavingValidDataOnly:Z

.field private mShownWithAnimation:Z

.field private mShownWithLoadingProgress:Z

.field private mUpdateThrottle:I

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 132
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownWithAnimation:Z

    .line 134
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownWithLoadingProgress:Z

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownOnlyHavingValidDataOnly:Z

    .line 144
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyViewLayoutResId:I

    .line 147
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyViewStringResId:I

    .line 156
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListShown:Z

    .line 175
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListLoaderCallbacksWrapper:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListLoaderIds:Ljava/util/HashSet;

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mExtraLoaderIds:Ljava/util/HashSet;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mViewEnablers:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mButtonBackgroundShowables:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnItemCountListeners:Ljava/util/List;

    .line 200
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexViewObservers:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

    .line 202
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSetItemAnimator:Z

    .line 218
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mUpdateThrottle:I

    .line 222
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mMenuVisible:Z

    .line 384
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    .line 392
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .line 1355
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$7;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShowButtonBgSettingChangedListener:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 1366
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$8;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    .line 1409
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$9;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnKeyListener:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    .line 1440
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$10;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mNotifyDataSetChangedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mActionModeMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mViewEnablers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListLoaderIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSetItemAnimator:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSetItemAnimator:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRestoreActionModeMenu:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRestoreActionModeMenu:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/app/LoaderManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/LoaderManager;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->hasRunningLoaders(Landroid/app/LoaderManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Fragment;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->startPendingDeferredFragments(Landroid/app/Fragment;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnItemCountListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mPlayAllButtonViewManager:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexViewObservers:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShowButtonBackground:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mButtonBackgroundShowables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mNotifyDataSetChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mDexListInputController:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCheckBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRestoreActionMode:Z

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRestoreActionMode:Z

    return p1
.end method

.method private static hasRunningLoaders(Landroid/app/LoaderManager;)Z
    .locals 7
    .param p0, "loaderManager"    # Landroid/app/LoaderManager;

    .prologue
    const/4 v4, 0x0

    .line 1451
    :try_start_0
    const-string v3, "android.app.LoaderManagerImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1452
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "hasRunningLoaders"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1453
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 1456
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 1454
    :catch_0
    move-exception v1

    .line 1455
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v3, "UiList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasRunningLoader failed | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 1456
    goto :goto_0

    .line 1454
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private makeViewType(ILandroid/database/Cursor;I)Landroid/database/Cursor;
    .locals 8
    .param p1, "viewType"    # I
    .param p2, "data"    # Landroid/database/Cursor;
    .param p3, "position"    # I

    .prologue
    .line 599
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, "projection":[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 602
    .local v1, "cursor":Landroid/database/MatrixCursor;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v0, "columnValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->convertToId(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    array-length v3, v4

    .line 605
    .local v3, "len":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 606
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    :cond_0
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 609
    return-object v1
.end method

.method private static startPendingDeferredFragments(Landroid/app/Fragment;)V
    .locals 6
    .param p0, "parentFragment"    # Landroid/app/Fragment;

    .prologue
    .line 1461
    if-nez p0, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1465
    :cond_0
    :try_start_0
    const-string v3, "android.app.FragmentManagerImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1466
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "startPendingDeferredFragments"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1467
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1468
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1469
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1470
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v3, "UiList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPendingDeferredFragments failed | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1469
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final addButtonBackgroundShowable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V
    .locals 1
    .param p1, "buttonBackgroundShowable"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;

    .prologue
    .line 1332
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShowButtonBackground:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShowButtonBackground:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;->showButtonBackground(Z)V

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mButtonBackgroundShowables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    return-void
.end method

.method public addOnIndexVisibleStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;

    .prologue
    .line 1293
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexViewObservers:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;->add(Ljava/lang/Object;)V

    .line 1294
    return-void
.end method

.method public final addOnItemCountListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;

    .prologue
    .line 1013
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getValidItemCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemCountListener;->onItemCountChanged(I)V

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnItemCountListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    return-void
.end method

.method public final addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V
    .locals 1
    .param p1, "enabler"    # Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    .prologue
    .line 1326
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;->setViewEnabled(Z)V

    .line 1327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mViewEnablers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    return-void

    .line 1326
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkDataValidation()Z
    .locals 1

    .prologue
    .line 590
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected final clearChoices()V
    .locals 1

    .prologue
    .line 795
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->clearChoices()V

    .line 796
    return-void
.end method

.method public deleteItems()V
    .locals 3

    .prologue
    .line 934
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    if-eqz v0, :cond_0

    .line 935
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deleteItems() | deleteable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;->deleteItems()V

    .line 938
    :cond_0
    return-void
.end method

.method public finishActionMode()V
    .locals 4

    .prologue
    .line 965
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 966
    .local v0, "actionMode":Landroid/view/ActionMode;
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finishActionMode() | mActionMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    if-eqz v0, :cond_0

    .line 968
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 970
    :cond_0
    return-void
.end method

.method public final getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .locals 1

    .prologue
    .line 800
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCheckBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 786
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemCount()I

    move-result v0

    return v0
.end method

.method public getCheckedItemIds(I)[J
    .locals 1
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param

    .prologue
    .line 776
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemIdsAsync(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V
    .locals 1
    .param p1, "idType"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/list/Id;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;

    .prologue
    .line 781
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIdsAsync(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    .line 782
    return-void
.end method

.method public getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1483
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListScreenIdHelper:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListScreenIdHelper:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;->getScreenId()Ljava/lang/String;

    move-result-object v0

    .line 1484
    :goto_0
    return-object v0

    .line 1483
    :cond_0
    const/4 v0, -0x1

    .line 1484
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValidItemCount()I
    .locals 1

    .prologue
    .line 791
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getValidItemCount()I

    move-result v0

    return v0
.end method

.method protected initExtraLoader(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 493
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mExtraLoaderIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    .line 496
    .local v0, "l":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 497
    const-string v2, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " initExtraLoader() - loader : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " l.isReset() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, " Loader is null"

    .line 498
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | loaderManager: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 499
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    :cond_0
    return-void

    .line 498
    :cond_1
    invoke-virtual {v0}, Landroid/content/Loader;->isReset()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected initListLoader(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 482
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListLoaderIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListLoaderCallbacksWrapper:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    invoke-virtual {v1, p1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    .line 485
    .local v0, "l":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 486
    const-string v2, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " initListLoader() - loader : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " l.isReset() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v1, " Loader is null"

    .line 487
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | loaderManager: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 488
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {v0}, Landroid/content/Loader;->isReset()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected isActionMode()Z
    .locals 1

    .prologue
    .line 973
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 288
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 289
    const-string v0, "UiList"

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mBaseTag:Ljava/lang/String;

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mLifeCycleLogEnabled:Z

    .line 292
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mContext:Landroid/content/Context;

    .line 293
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 294
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnListActionModeListener:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 296
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 297
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    .line 299
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 300
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mKeyObservable:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    .line 302
    :cond_2
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_3

    .line 303
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 305
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v2, 0x0

    .line 309
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setHasOptionsMenu(Z)V

    .line 313
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    .line 316
    if-eqz p1, :cond_0

    .line 317
    const-string v0, "key_is_shown_action_mode_menu"

    .line 318
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRestoreActionModeMenu:Z

    .line 319
    const-string v0, "key_restore_action_mode"

    .line 320
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRestoreActionMode:Z

    .line 321
    const-string v0, "key_restore_reorder_enabled"

    .line 322
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRestoreReorderEnabled:Z

    .line 323
    const-string v0, "key_menu_visible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setMenuVisibility(Z)V

    .line 327
    :cond_0
    return-void
.end method

.method protected abstract onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v3, 0x1

    .line 454
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v0

    .line 457
    .local v0, "choiceMode":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;

    .line 458
    .local v1, "contextMenuObservable":Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setChoiceMode(I)V

    .line 459
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setItemChecked(IZ)V

    .line 460
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;I)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;->addContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V

    .line 467
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 469
    .end local v0    # "choiceMode":I
    .end local v1    # "contextMenuObservable":Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;
    :cond_0
    return-void
.end method

.method protected abstract onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v7

    .line 535
    .local v7, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 536
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onCreateLoader() - id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 537
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orderBy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updateThrottle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mUpdateThrottle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mUpdateThrottle:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 545
    return-object v0
.end method

.method protected abstract onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 332
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v0, 0x1

    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onCreateView()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 333
    sget v0, Lcom/samsung/android/app/musiclibrary/R$layout;->music_ui_recycler_view_list:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 446
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 449
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    .line 450
    return-void
.end method

.method protected onEmptyViewCreated(Landroid/view/View;)V
    .locals 0
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 726
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 11
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 550
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListLoaderIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result v3

    .line 554
    .local v3, "headerCount":I
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewCount()I

    move-result v2

    .line 555
    .local v2, "footerCount":I
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 556
    .local v1, "dataCount":I
    :goto_1
    const-string v8, "UiList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " headers, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " footers | dataCount: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    if-gtz v3, :cond_2

    if-lez v2, :cond_a

    :cond_2
    if-eqz p2, :cond_a

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    if-eqz v8, :cond_a

    .line 561
    add-int/lit8 v8, v3, 0x1

    add-int/2addr v8, v2

    new-array v0, v8, [Landroid/database/Cursor;

    .line 562
    .local v0, "cursors":[Landroid/database/Cursor;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 563
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewType(I)I

    move-result v5

    .line 564
    .local v5, "viewType":I
    invoke-direct {p0, v5, p2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->makeViewType(ILandroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v8

    aput-object v8, v0, v4

    .line 565
    const-string v8, "UiList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ViewType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is added as header"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "cursors":[Landroid/database/Cursor;
    .end local v1    # "dataCount":I
    .end local v4    # "i":I
    .end local v5    # "viewType":I
    :cond_3
    move v1, v6

    .line 555
    goto :goto_1

    .line 567
    .restart local v0    # "cursors":[Landroid/database/Cursor;
    .restart local v1    # "dataCount":I
    .restart local v4    # "i":I
    :cond_4
    aput-object p2, v0, v3

    .line 568
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_5

    .line 569
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getFooterViewType(I)I

    move-result v5

    .line 570
    .restart local v5    # "viewType":I
    add-int v8, v4, v3

    add-int/lit8 v8, v8, 0x1

    add-int v9, v3, v1

    add-int/2addr v9, v4

    .line 571
    invoke-direct {p0, v5, p2, v9}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->makeViewType(ILandroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v9

    aput-object v9, v0, v8

    .line 572
    const-string v8, "UiList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ViewType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is added as footer"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 574
    .end local v5    # "viewType":I
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;

    invoke-direct {v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/database/CustomMergeCursor;-><init>([Landroid/database/Cursor;)V

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 578
    .end local v0    # "cursors":[Landroid/database/Cursor;
    .end local v4    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    if-eqz v8, :cond_8

    .line 579
    if-eqz p2, :cond_6

    .line 580
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    invoke-virtual {v8, p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->setIndexer(Landroid/database/Cursor;I)V

    .line 582
    :cond_6
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    if-lez v1, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v8, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->setIndexViewEnabled(Z)V

    .line 584
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->checkDataValidation()Z

    move-result v6

    if-eqz v6, :cond_0

    if-gtz v1, :cond_9

    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownOnlyHavingValidDataOnly:Z

    if-nez v6, :cond_0

    .line 585
    :cond_9
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setListShown(Z)V

    goto/16 :goto_0

    .line 576
    :cond_a
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v8, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_4
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 103
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 596
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 427
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mKeyObservable:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mKeyObservable:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnKeyListener:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 430
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPause()V

    .line 431
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 414
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setMenuVisibility(Z)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mKeyObservable:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mKeyObservable:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnKeyListener:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 423
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v3, 0x1

    .line 269
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/view/ActionMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getActionMenuView(Landroid/app/Activity;)Landroid/widget/ActionMenuView;

    move-result-object v0

    .line 272
    .local v0, "actionMenuView":Landroid/widget/ActionMenuView;
    const-string v4, "key_is_shown_action_mode_menu"

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 272
    :goto_0
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    const-string v2, "key_restore_action_mode"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    const-string v2, "key_restore_reorder_enabled"

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isReorderEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 277
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v1

    .line 278
    .local v1, "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    instance-of v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v2, :cond_0

    .line 279
    const-string v2, "key_delete_requested"

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 280
    .end local v1    # "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->isDeleteRequested()Z

    move-result v3

    .line 279
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    .end local v0    # "actionMenuView":Landroid/widget/ActionMenuView;
    :cond_0
    const-string v2, "key_menu_visible"

    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mMenuVisible:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    return-void

    .line 273
    .restart local v0    # "actionMenuView":Landroid/widget/ActionMenuView;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 402
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShowButtonBgSettingChangedListener:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 405
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;->addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 410
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 435
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSettingFontChangeManager:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnLargerFontChangeListener:Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;->removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    .line 441
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    .line 442
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v3, 0x1

    .line 338
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 340
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mViewEnablers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 341
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mButtonBackgroundShowables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 343
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->progressContainer:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    .line 344
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->listContainer:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    .line 345
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->recycler_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 346
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)V

    .line 347
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 348
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->enableGoToTop(Z)V

    .line 349
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    .line 350
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getRecycledViewPool()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;

    move-result-object v1

    const/16 v2, 0x14

    .line 351
    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 352
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 355
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V

    .line 356
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 357
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addButtonBackgroundShowable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V

    .line 358
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRestoreReorderEnabled:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setReorderEnabled(Z)V

    .line 360
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mDexListInputController:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    .line 361
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mDexListInputController:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 363
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 364
    .local v0, "itemAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V

    .line 365
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setRemoveItemAnimatorFinishedListener(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 373
    if-eqz p2, :cond_0

    const-string v1, "key_delete_requested"

    const/4 v2, 0x0

    .line 374
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setDeleteRequested()V

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 379
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 382
    :cond_1
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 922
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectedItemPlayable:Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectedItemPlayable:Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;->play()V

    .line 925
    :cond_0
    return-void
.end method

.method public playCardViewItem(ILcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1387
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCardViewControllable:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCardViewControllable:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;->playCardViewItem(ILcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable$OnPlayCardViewListener;)V

    .line 1390
    :cond_0
    return-void
.end method

.method public removeOnIndexVisibleStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;

    .prologue
    .line 1299
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexViewObservers:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnIndexViewObservers;->remove(Ljava/lang/Object;)V

    .line 1300
    return-void
.end method

.method protected restartExtraLoader(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 508
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 509
    return-void
.end method

.method public restartListLoader()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v4, 0x0

    .line 512
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 513
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " restartListLoader() failed | !isAdded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListLoaderIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 517
    .local v0, "id":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListLoaderCallbacksWrapper:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    invoke-virtual {v1, v0, v4, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1

    .line 519
    .end local v0    # "id":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mExtraLoaderIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 520
    .restart local v0    # "id":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    .line 522
    .end local v0    # "id":I
    :cond_3
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 523
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " restartListLoader() is called before mListLoaderId is initiated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected restartListLoader(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 504
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListLoaderCallbacksWrapper:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListLoaderCallbacksWrapper;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 505
    return-void
.end method

.method protected final setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V
    .locals 0
    .param p1, "actionModeMenu"    # Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    .prologue
    .line 977
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mActionModeMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    .line 978
    return-void
.end method

.method public setBixbyCrossSharePackages(Ljava/lang/String;)V
    .locals 1
    .param p1, "packages"    # Ljava/lang/String;

    .prologue
    .line 953
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;->setBixbyCrossSharePackages(Ljava/lang/String;)V

    .line 956
    :cond_0
    return-void
.end method

.method public setCardViewable(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;)V
    .locals 6
    .param p1, "cardViewable"    # Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;

    .prologue
    .line 729
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v2, 0x1

    const-string v3, "UiList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " setCardViewable() | cardViewable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;->onCreateCardViewHolder(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;

    move-result-object v0

    .line 731
    .local v0, "cardViewHolder":Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addViewIgnoreParentPadding(Landroid/view/View;)V

    .line 732
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;)V

    .line 733
    .local v1, "cardViewManager":Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewManager;
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCardViewControllable:Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    .line 734
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 735
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    const/16 v3, -0x7d0

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 736
    return-void
.end method

.method protected final setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V
    .locals 0
    .param p1, "checkableList"    # Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .prologue
    .line 771
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 772
    return-void
.end method

.method protected setChoiceMode(I)V
    .locals 1
    .param p1, "choiceMode"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ChoiceMode;
        .end annotation
    .end param

    .prologue
    .line 855
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setChoiceMode(IZ)V

    .line 856
    return-void
.end method

.method protected setChoiceMode(IZ)V
    .locals 4
    .param p1, "choiceMode"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ChoiceMode;
        .end annotation
    .end param
    .param p2, "selectorMode"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 859
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setChoiceMode(I)V

    .line 860
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setChoiceMode(IZ)V

    .line 861
    packed-switch p1, :pswitch_data_0

    .line 914
    :goto_0
    return-void

    .line 863
    :pswitch_0
    if-nez p2, :cond_0

    .line 864
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCheckBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    .line 866
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;)V

    .line 867
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;)V

    goto :goto_0

    .line 870
    :pswitch_1
    if-nez p2, :cond_1

    .line 871
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mCheckBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    .line 873
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ActionModeListenerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;)V

    .line 874
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    goto :goto_0

    .line 877
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    if-eqz v1, :cond_2

    .line 878
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->onCreateSelectAllViewHolder()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 880
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 881
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 882
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 883
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 884
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 886
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectAllViewHolder:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->clickArea:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$5;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 898
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$6;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addMultipleModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    goto/16 :goto_0

    .line 861
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V
    .locals 3
    .param p1, "deleteable"    # Lcom/samsung/android/app/musiclibrary/ui/Deleteable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 928
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setDeleteable() | deleteable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mDeleteable:Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    .line 930
    return-void
.end method

.method protected final setEmptyView(II)V
    .locals 1
    .param p1, "layoutResId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "stringResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 683
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    .line 684
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyViewLayoutResId:I

    .line 685
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyViewStringResId:I

    .line 686
    return-void
.end method

.method protected final setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V
    .locals 1
    .param p1, "emptyViewCreator"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    .prologue
    .line 689
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    .line 690
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyViewCreator:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    .line 691
    return-void
.end method

.method protected final setEmptyViewVisibility(Z)V
    .locals 5
    .param p1, "isEmpty"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v4, 0x0

    .line 694
    if-eqz p1, :cond_5

    .line 695
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyViewCreator:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    if-eqz v1, :cond_3

    .line 697
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyViewCreator:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;->createEmptyView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    .line 698
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 699
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onEmptyViewCreated(Landroid/view/View;)V

    .line 712
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 714
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 716
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->finishActionMode()V

    .line 723
    :cond_2
    :goto_1
    return-void

    .line 700
    :cond_3
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyViewLayoutResId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyViewLayoutResId:I

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    .line 702
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    .line 703
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->no_item_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 704
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_4

    .line 705
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "no item view must contains R.id.no_item_text"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_4
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyViewStringResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 708
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 709
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onEmptyViewCreated(Landroid/view/View;)V

    goto :goto_0

    .line 718
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 719
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 720
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mEmptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected final setIndexable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;)V
    .locals 1
    .param p1, "indexable"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;

    .prologue
    .line 1244
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setIndexable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;Z)V

    .line 1245
    return-void
.end method

.method protected final setIndexable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;Z)V
    .locals 4
    .param p1, "indexable"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;
    .param p2, "blurUiEnabled"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1249
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    if-eqz v1, :cond_1

    .line 1250
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->getIndexContainer()Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;

    move-result-object v0

    .line 1251
    .local v0, "indexContainer":Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;
    if-eqz v0, :cond_0

    .line 1252
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1254
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnHeaderItemLayoutChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;)V

    .line 1255
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->setIndexViewEnabled(Z)V

    .line 1256
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->setOnIndexVisibleStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;)V

    .line 1257
    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    .line 1259
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    .line 1270
    .end local v0    # "indexContainer":Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;
    :goto_0
    return-void

    .line 1262
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    .line 1263
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;Z)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    .line 1264
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->setList(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 1265
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$IndexVisibleStateChangedListenerWrapper;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$IndexVisibleStateChangedListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->setOnIndexVisibleStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;)V

    .line 1267
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->getIndexContainer()Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1268
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnHeaderItemLayoutChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;)V

    goto :goto_0
.end method

.method public setItemChecked(IIZ)V
    .locals 1
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "value"    # Z

    .prologue
    .line 1401
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IIZ)V

    .line 1402
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1394
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    if-ltz p1, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZ)V

    .line 1397
    :cond_0
    return-void
.end method

.method public setItemCheckedAll(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 1406
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IIZ)V

    .line 1407
    return-void
.end method

.method protected final setListShown(Z)V
    .locals 7
    .param p1, "shown"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const v6, 0x10a0001

    const/high16 v5, 0x10a0000

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 641
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 642
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setListShown() - shown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 645
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 647
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListShown:Z

    if-ne v0, p1, :cond_3

    .line 680
    :cond_2
    :goto_0
    return-void

    .line 650
    :cond_3
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListShown:Z

    .line 651
    if-eqz p1, :cond_5

    .line 652
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownWithAnimation:Z

    if-eqz v0, :cond_4

    .line 653
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mContext:Landroid/content/Context;

    .line 654
    invoke-static {v1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 653
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 655
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mContext:Landroid/content/Context;

    .line 656
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 655
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 661
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 677
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownWithLoadingProgress:Z

    if-nez v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 658
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 659
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    goto :goto_1

    .line 664
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownWithAnimation:Z

    if-eqz v0, :cond_6

    .line 665
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mContext:Landroid/content/Context;

    .line 666
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 665
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 667
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mContext:Landroid/content/Context;

    .line 668
    invoke-static {v1, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 667
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 673
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 670
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 671
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    goto :goto_3
.end method

.method protected final setListShown(ZI)V
    .locals 4
    .param p1, "shown"    # Z
    .param p2, "flags"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 613
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownWithAnimation:Z

    .line 614
    and-int/lit8 v0, p2, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownWithLoadingProgress:Z

    .line 616
    and-int/lit8 v0, p2, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownOnlyHavingValidDataOnly:Z

    .line 618
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setListShownFlag() | mShownWithAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownWithAnimation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mShownWithLoadingProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownWithLoadingProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | mShownOnlyHavingValidDataOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShownOnlyHavingValidDataOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setListShown(Z)V

    .line 624
    return-void

    :cond_0
    move v0, v2

    .line 613
    goto :goto_0

    :cond_1
    move v0, v2

    .line 614
    goto :goto_1

    :cond_2
    move v1, v2

    .line 616
    goto :goto_2
.end method

.method protected final setListShownImmediate(Z)V
    .locals 3
    .param p1, "shown"    # Z

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 627
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListShown:Z

    .line 628
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 629
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 630
    if-eqz p1, :cond_0

    .line 631
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 637
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListSpaceTop(I)Landroid/view/View;
    .locals 9
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 749
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v5, 0x1

    const-string v6, "UiList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " setListSpaceTop()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 751
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/samsung/android/app/musiclibrary/R$layout;->music_ui_list_spacing_top:I

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v8, 0x0

    .line 752
    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 754
    .local v2, "listSpaceTop":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 755
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v1

    .line 756
    .local v1, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 757
    .local v4, "topSize":I
    instance-of v5, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    if-eqz v5, :cond_0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    .line 758
    .end local v1    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;->getOrientation()I

    move-result v5

    if-nez v5, :cond_0

    .line 760
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 764
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    const/16 v6, -0x7d1

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 767
    return-object v2

    .line 762
    :cond_0
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 3
    .param p1, "menuVisible"    # Z

    .prologue
    .line 262
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setMenuVisibility() | menuVisible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mMenuVisible:Z

    .line 264
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setMenuVisibility(Z)V

    .line 265
    return-void
.end method

.method protected final setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .prologue
    .line 804
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 805
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 806
    return-void
.end method

.method protected final setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    .prologue
    .line 809
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    .line 810
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$OnItemLongClickListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;)V

    .line 811
    return-void
.end method

.method public setPlayAll(Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;)V
    .locals 5
    .param p1, "playAll"    # Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 740
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    const/4 v1, 0x1

    const-string v2, "UiList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " setPlayAll() | playAll: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;->createPlayButtonHolder(Landroid/view/ViewGroup;)Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;

    move-result-object v0

    .line 742
    .local v0, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/playall/IPlayAll;Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mPlayAllButtonViewManager:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

    .line 743
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mPlayAllButtonViewManager:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addViewEnabler(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 744
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mPlayAllButtonViewManager:Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewManager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addButtonBackgroundShowable(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;)V

    .line 745
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    const/16 v2, -0x7cf

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/playall/PlayAllButtonViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 746
    return-void
.end method

.method protected final setReorderEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1347
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setReorderEnabled(Z)V

    .line 1348
    return-void
.end method

.method protected setReorderable(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V
    .locals 3
    .param p1, "reorderable"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    .prologue
    .line 1339
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    if-nez p1, :cond_0

    .line 1340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reorderable is null. Reorderable must be implemented to call setReorderable()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1343
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mReorderManager:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    .line 1344
    return-void
.end method

.method protected final setScreenId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "normalScreenId"    # Ljava/lang/String;
    .param p2, "editScreenId"    # Ljava/lang/String;

    .prologue
    .line 1477
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mListScreenIdHelper:Lcom/samsung/android/app/musiclibrary/ui/list/ListScreenIdHelper;

    .line 1478
    return-void
.end method

.method protected final setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V
    .locals 0
    .param p1, "selectAll"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .prologue
    .line 1009
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectAll:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 1010
    return-void
.end method

.method protected setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V
    .locals 0
    .param p1, "selectedItemPlayable"    # Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 917
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mSelectedItemPlayable:Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;

    .line 918
    return-void
.end method

.method protected final setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V
    .locals 0
    .param p1, "shareable"    # Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 941
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    .line 942
    return-void
.end method

.method protected final setUpdateThrottle(I)V
    .locals 0
    .param p1, "updateThrottle"    # I

    .prologue
    .line 529
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mUpdateThrottle:I

    .line 530
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 254
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setUserVisibleHint(Z)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->enableGoToTop(Z)V

    .line 258
    :cond_0
    return-void
.end method

.method public share()V
    .locals 1

    .prologue
    .line 946
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mShareable:Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;->share()V

    .line 949
    :cond_0
    return-void
.end method

.method public startActionMode()V
    .locals 1

    .prologue
    .line 960
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->startActionMode()Landroid/view/ActionMode;

    .line 961
    return-void
.end method

.method public startReorder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .prologue
    .line 1352
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mReorderManager:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->startReorder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 1353
    return-void
.end method
