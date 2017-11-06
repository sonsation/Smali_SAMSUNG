.class public Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "DexListInputController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsCtrlPressed:Z

.field private mIsShiftPressed:Z

.field private final mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

.field private final mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private final mOnKeyListener:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

.field private final mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "fragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<*>;"
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 40
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mOnKeyListener:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    .line 124
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    .line 192
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mLongPressMultiSelectionListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;

    .line 37
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLongPressMultiSelectionListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$SeslLongPressMultiSelectionListener;)V

    .line 38
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mIsCtrlPressed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mIsCtrlPressed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mIsShiftPressed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mIsShiftPressed:Z

    return p1
.end method


# virtual methods
.method public onFragmentPaused(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentPaused(Landroid/app/Fragment;)V

    .line 182
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 184
    .local v1, "onKeyObservable":Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;
    instance-of v2, v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 185
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    .line 187
    :cond_0
    if-eqz v1, :cond_1

    .line 188
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mOnKeyListener:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 190
    :cond_1
    return-void
.end method

.method public onFragmentResumed(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentResumed(Landroid/app/Fragment;)V

    .line 169
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 170
    .local v0, "activity":Landroid/app/Activity;
    const/4 v1, 0x0

    .line 171
    .local v1, "onKeyObservable":Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;
    instance-of v2, v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 172
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    .line 174
    :cond_0
    if-eqz v1, :cond_1

    .line 175
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mOnKeyListener:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 177
    :cond_1
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v2, 0x1

    .line 213
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    .line 214
    .local v1, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v0

    .line 215
    .local v0, "choiceMode":I
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 218
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->startLongPressMultiSelection()V

    .line 219
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-lez v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getActionMode()Landroid/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_1

    .line 220
    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZ)V

    .line 221
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->mRecyclerViewFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->startActionMode()V

    .line 225
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
