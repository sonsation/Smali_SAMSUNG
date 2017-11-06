.class public Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "PrivateFolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 82
    new-instance v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$1;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->getFolderSubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFolderSubPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 105
    .local v0, "end":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 106
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 109
    .end local v0    # "end":I
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, -0x1

    return v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    const-string v1, "bucket_display_name"

    .line 54
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;

    const-string v1, "_data"

    .line 55
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->setWinsetUiEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter$Builder;->build()Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->onCreateAdapter()Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment$PrivateFolderAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 65
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderQueryArgs;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data NOT LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 68
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 38
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v2, 0x7f0d018b

    .line 39
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    const v2, 0x7f0d04e9

    .line 40
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 42
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 45
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;

    const v2, 0x7f0a012e

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/TextEmptyViewCreator;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->setListShown(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;->initListLoader(I)V

    .line 49
    return-void
.end method
