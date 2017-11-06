.class public Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.source "MusicRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ChoiceMode;
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_MULTIPLE_MODAL_2:I = 0x4

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

.field private mAutoFitEnabled:Z

.field private mAutoFitMinWidth:I

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mChoiceMode:I
    .annotation build Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ChoiceMode;
    .end annotation
.end field

.field private mFastScrollEnabled:Z

.field private mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

.field private mGoToTopEnabled:Z

.field private mLastCheckedItemId:J

.field private final mMultipleModeObservers:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

.field private mOnChildrenOffsetChangedListener:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;

.field private mOnMultipleItemSelectionListener:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

.field private final mOnPaddingChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSizeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnSizeChangedListeners:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnPaddingChangedListeners:Ljava/util/List;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitMinWidth:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitEnabled:Z

    .line 70
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mMultipleModeObservers:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mLastCheckedItemId:J

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->initAutoFitMinWidth()V

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->initImportantForAccessibility()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnSizeChangedListeners:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnPaddingChangedListeners:Ljava/util/List;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitMinWidth:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitEnabled:Z

    .line 70
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mMultipleModeObservers:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mLastCheckedItemId:J

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->initAutoFitMinWidth()V

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->initImportantForAccessibility()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnSizeChangedListeners:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnPaddingChangedListeners:Ljava/util/List;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitMinWidth:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitEnabled:Z

    .line 70
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mMultipleModeObservers:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    .line 108
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mLastCheckedItemId:J

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->initAutoFitMinWidth()V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->initImportantForAccessibility()V

    .line 130
    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnMultipleItemSelectionListener:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    return-object v0
.end method

.method private initAutoFitMinWidth()V
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->grid_item_width_dex:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->grid_item_space_horizontal:I

    .line 191
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitMinWidth:I

    .line 193
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private initImportantForAccessibility()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setImportantForAccessibility(I)V

    .line 199
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 210
    return-void
.end method


# virtual methods
.method public addMultipleModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mMultipleModeObservers:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;->add(Ljava/lang/Object;)V

    .line 761
    return-void
.end method

.method public addOnPaddingChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnPaddingChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public addOnSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method public clearChoices()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 358
    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mLastCheckedItemId:J

    .line 359
    return-void
.end method

.method public confirmCheckedPositionsById()V
    .locals 20

    .prologue
    .line 471
    sget-object v17, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "confirmCheckedPositionsById() - S | mCheckedIdStates: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v2

    .line 473
    .local v2, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseBooleanArray;->clear()V

    .line 481
    const/4 v3, 0x0

    .line 482
    .local v3, "checkedCountChanged":Z
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v7

    .line 484
    .local v7, "itemCount":I
    const/4 v4, 0x0

    .local v4, "checkedIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/LongSparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    .line 486
    .local v8, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 488
    .local v10, "lastPos":I
    invoke-virtual {v2, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v12

    .line 489
    .local v12, "lastPosId":J
    cmp-long v17, v8, v12

    if-eqz v17, :cond_5

    .line 491
    const/16 v17, 0x0

    add-int/lit8 v18, v10, -0x14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 492
    .local v16, "start":I
    add-int/lit8 v17, v10, 0x14

    move/from16 v0, v17

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 493
    .local v5, "end":I
    const/4 v6, 0x0

    .line 494
    .local v6, "found":Z
    move/from16 v11, v16

    .local v11, "searchPos":I
    :goto_2
    if-ge v11, v5, :cond_2

    .line 495
    invoke-virtual {v2, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v14

    .line 496
    .local v14, "searchId":J
    cmp-long v17, v8, v14

    if-nez v17, :cond_4

    .line 497
    const/4 v6, 0x1

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 504
    .end local v14    # "searchId":J
    :cond_2
    if-nez v6, :cond_3

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseArray;->delete(J)V

    .line 506
    add-int/lit8 v4, v4, -0x1

    .line 507
    const/4 v3, 0x1

    .line 484
    .end local v5    # "end":I
    .end local v6    # "found":Z
    .end local v11    # "searchPos":I
    .end local v16    # "start":I
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 494
    .restart local v5    # "end":I
    .restart local v6    # "found":Z
    .restart local v11    # "searchPos":I
    .restart local v14    # "searchId":J
    .restart local v16    # "start":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 510
    .end local v5    # "end":I
    .end local v6    # "found":Z
    .end local v11    # "searchPos":I
    .end local v14    # "searchId":J
    .end local v16    # "start":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3

    .line 514
    .end local v8    # "id":J
    .end local v10    # "lastPos":I
    .end local v12    # "lastPosId":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    .line 518
    :cond_7
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ActionMode;->invalidate()V

    .line 522
    :cond_8
    sget-object v17, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "confirmCheckedPositionsById() - X / checkedCountChanged: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mCheckedIdStates.size(): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    move-object/from16 v19, v0

    .line 524
    invoke-virtual/range {v19 .. v19}, Landroid/util/LongSparseArray;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 522
    invoke-static/range {v17 .. v18}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public enableGoToTop(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mGoToTopEnabled:Z

    .line 225
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->enableGoToTop(Z)V

    .line 226
    return-void
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getCheckedItemCount()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 450
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v1

    .line 453
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 454
    .local v1, "count":I
    :cond_2
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCheckedItemCount() | count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 433
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 434
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-object v1

    .line 437
    :cond_1
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    if-eqz v2, :cond_0

    .line 438
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1
    .annotation build Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ChoiceMode;
    .end annotation

    .prologue
    .line 348
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    return v0
.end method

.method public getLastCheckedItemPosition()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 459
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 460
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v1

    .line 463
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v2, :cond_2

    .line 465
    .local v1, "position":I
    :goto_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastCheckedItemPosition() | position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    .end local v1    # "position":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mLastCheckedItemId:J

    .line 464
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 298
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidateItemDecorations()V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    const-string v1, "invalidateItemDecorations is called while computing layout"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScrollEnabled:Z

    return v0
.end method

.method public isGoToTopEnabled()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mGoToTopEnabled:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 444
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 445
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public offsetChildrenVertical(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 934
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->offsetChildrenVertical(I)V

    .line 935
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnChildrenOffsetChangedListener:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnChildrenOffsetChangedListener:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;->onChildrenOffsetChanged(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 938
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 275
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onAttachedToWindow()V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setScrollbarPosition(I)V

    .line 279
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 181
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onLayout(ZIIII)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->updateThumbPosition()V

    .line 185
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onMeasure(II)V

    .line 144
    iget-boolean v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitEnabled:Z

    if-eqz v7, :cond_2

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_0

    .line 145
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v3

    .line 147
    .local v3, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    instance-of v7, v3, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    if-eqz v7, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    .line 150
    .local v2, "gridLayoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingStart()I

    move-result v5

    .line 151
    .local v5, "paddingStart":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingEnd()I

    move-result v4

    .line 152
    .local v4, "paddingEnd":I
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitMinWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 153
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 154
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 155
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 156
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    .local v1, "displayWidth":I
    sub-int v7, v1, v5

    sub-int/2addr v7, v4

    .line 159
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->getSpanCount()I

    move-result v8

    div-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitMinWidth:I

    .line 167
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "displayWidth":I
    :cond_1
    const/4 v7, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v8, v5

    sub-int/2addr v8, v4

    iget v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitMinWidth:I

    div-int/2addr v8, v9

    .line 167
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 169
    .local v6, "spanCount":I
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->getSpanCount()I

    move-result v7

    if-eq v7, v6, :cond_2

    .line 173
    invoke-virtual {v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->setSpanCount(I)V

    .line 177
    .end local v2    # "gridLayoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;
    .end local v3    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .end local v4    # "paddingEnd":I
    .end local v5    # "paddingStart":I
    .end local v6    # "spanCount":I
    :cond_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 594
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    const-string v2, "onRestoreInstanceState()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 595
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    .line 596
    .local v0, "ss":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 598
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 601
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 605
    :cond_1
    iget-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    if-eqz v1, :cond_3

    .line 608
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    .line 610
    :cond_3
    iget-wide v2, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->lastCheckedItemId:J

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mLastCheckedItemId:J

    .line 611
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onRtlPropertiesChanged(I)V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setScrollbarPosition(I)V

    .line 287
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 615
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    const-string v6, "onSaveInstanceState()"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    .line 618
    .local v4, "superState":Landroid/os/Parcelable;
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 620
    .local v3, "ss":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->inActionMode:Z

    .line 623
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v5, :cond_1

    .line 624
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v5

    iput-object v5, v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 626
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v5, :cond_4

    .line 627
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 628
    .local v2, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 629
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 630
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 620
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 632
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_3
    iput-object v2, v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 634
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_4
    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mLastCheckedItemId:J

    iput-wide v6, v3, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$SavedState;->lastCheckedItemId:J

    .line 635
    return-object v3
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "oldWidth"    # I
    .param p4, "oldHeight"    # I

    .prologue
    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onSizeChanged(IIII)V

    .line 265
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnSizeChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;

    .line 266
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;->onSizeChanged(IIII)V

    goto :goto_0

    .line 268
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->updateLayout()V

    .line 271
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMultipleModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mMultipleModeObservers:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;->remove(Ljava/lang/Object;)V

    .line 766
    return-void
.end method

.method public removeOnSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnSizeChangedListener;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnSizeChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public removePaddingChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnPaddingChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public setActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->setWrapped(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;)V

    .line 712
    return-void
.end method

.method public setAutoFitEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mAutoFitEnabled:Z

    .line 220
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 4
    .param p1, "choiceMode"    # I
        .annotation build Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ChoiceMode;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 321
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChoiceMode() | choiceMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 325
    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    .line 327
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    if-eqz v0, :cond_4

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    .line 332
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnMultipleItemSelectionListener:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    if-nez v0, :cond_3

    .line 335
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnMultipleItemSelectionListener:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    .line 337
    :cond_3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setOnMultiSelectedListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;)V

    .line 339
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->clearChoices()V

    .line 340
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnMultipleItemSelectionListener:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setOnMultipleItemSelectionListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;)V

    .line 344
    :cond_6
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 2
    .param p1, "fastScrollEnabled"    # Z

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 533
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScrollEnabled:Z

    .line 534
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScrollEnabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setEnabled(Z)V

    .line 536
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->updateLayout()V

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 538
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    .line 539
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->updateLayout()V

    goto :goto_0
.end method

.method public setFastScrollIndexEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 546
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 547
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$FastScrollSectionIndexer;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setSectionIndexer(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSectionIndexer;)V

    .line 549
    :cond_0
    return-void

    .line 547
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItemChecked(IIZ)V
    .locals 10
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "value"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 410
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    instance-of v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 411
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 412
    .local v2, "recyclerCursorAdapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_3

    .line 413
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    invoke-virtual {p0, v1, p3, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZZ)V

    .line 412
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    .end local v1    # "i":I
    .end local v2    # "recyclerCursorAdapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    :cond_1
    move v1, p1

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, p2, :cond_3

    .line 419
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 420
    invoke-virtual {p0, v1, p3, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZZ)V

    .line 418
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 425
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_4

    .line 426
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    .line 428
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mMultipleModeObservers:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;->notifyItemCheckedStateChanged()V

    .line 429
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 430
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 362
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZZ)V

    .line 363
    return-void
.end method

.method public setItemChecked(IZZ)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "value"    # Z
    .param p3, "notify"    # Z

    .prologue
    const/4 v4, 0x1

    .line 366
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " setItemChecked() position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | choice mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 369
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 371
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 372
    if-eqz p2, :cond_3

    .line 373
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    .line 374
    .local v2, "id":J
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mLastCheckedItemId:J

    .line 375
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 380
    .end local v2    # "id":J
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    .line 381
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    .line 383
    :cond_1
    if-eqz p3, :cond_2

    .line 384
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mMultipleModeObservers:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleModeObservers;->notifyItemCheckedStateChanged()V

    .line 405
    :cond_2
    :goto_1
    return-void

    .line 377
    :cond_3
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mLastCheckedItemId:J

    .line 378
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    .line 386
    :cond_4
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mChoiceMode:I

    if-ne v5, v4, :cond_2

    .line 387
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->hasStableIds()Z

    move-result v5

    if-eqz v5, :cond_7

    move v1, v4

    .line 390
    .local v1, "updateIds":Z
    :goto_2
    if-nez p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isItemChecked(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 391
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 392
    if-eqz v1, :cond_6

    .line 393
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->clear()V

    .line 398
    :cond_6
    if-eqz p2, :cond_2

    .line 399
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 400
    if-eqz v1, :cond_2

    .line 401
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 387
    .end local v1    # "updateIds":Z
    :cond_7
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setOnChildrenOffsetChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;

    .prologue
    .line 925
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnChildrenOffsetChangedListener:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnCustomScrollListener;

    .line 926
    return-void
.end method

.method public setOnMultiSelectedListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 781
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setOnMultiSelectedListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;)V

    .line 782
    return-void
.end method

.method public setOnMultipleItemSelectionListener(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnMultipleItemSelectionListener:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    .line 908
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setPaddingRelative(IIII)V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mOnPaddingChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;

    .line 136
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;->onPaddingChanged(IIII)V

    goto :goto_0

    .line 138
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnPaddingChangedListener;
    :cond_0
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 587
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setTintColor(I)V

    .line 590
    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setVerticalScrollbarPosition(I)V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mFastScroller:Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/FastScroller;->setScrollbarPosition(I)V

    .line 309
    :cond_0
    return-void
.end method

.method public startActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionModeListenerWrapper:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    .line 699
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method
