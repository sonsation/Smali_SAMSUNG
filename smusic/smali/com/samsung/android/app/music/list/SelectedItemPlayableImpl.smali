.class public Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;
.super Ljava/lang/Object;
.source "SelectedItemPlayableImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;


# static fields
.field protected static final RESULT_FAILED_NO_ITEM:I = 0x1

.field protected static final RESULT_OK:I


# instance fields
.field protected final mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field protected final mFragment:Landroid/app/Fragment;

.field private final mListInfoGetter:Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->mFragment:Landroid/app/Fragment;

    move-object v0, p1

    .line 28
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 29
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->mListInfoGetter:Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->mListInfoGetter:Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    return-object v0
.end method


# virtual methods
.method protected onResult(I)V
    .locals 1
    .param p1, "result"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->finishActionMode()V

    .line 54
    :cond_0
    return-void
.end method

.method public play()V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;->mCheckableList:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl$1;-><init>(Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIdsAsync(ILcom/samsung/android/app/musiclibrary/ui/list/CheckedItemIdListener;)V

    .line 47
    return-void
.end method
