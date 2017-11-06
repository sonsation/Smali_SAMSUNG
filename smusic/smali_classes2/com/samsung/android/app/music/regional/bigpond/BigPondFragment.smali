.class public Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "BigPondFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BigPondFragment"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mIsView:Z

.field private mListContainer:Landroid/view/ViewGroup;

.field mModel:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mIsView:Z

    .line 97
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment$1;-><init>(Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 115
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment$2;-><init>(Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->getInst()Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mModel:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mModel:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->registerView(Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;)V

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->showEmptyView(Z)V

    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->setListShown(ZI)V

    .line 64
    return-void
.end method

.method private showEmptyView(Z)V
    .locals 6
    .param p1, "isShow"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 206
    const-string v1, "BigPondFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showEmptyView(isShow) - isShow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz p1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040039

    iget-object v3, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mListContainer:Landroid/view/ViewGroup;

    .line 210
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mEmptyView:Landroid/view/View;

    .line 211
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mEmptyView:Landroid/view/View;

    const v2, 0x7f12013e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    .local v0, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 213
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "no item view must contains R.id.no_item_text"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    const v1, 0x7f0a047e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mListContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 218
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 220
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_2
    :goto_0
    return-void

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 224
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 202
    const-string v0, "bigpond_top10"

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 196
    const v0, 0x1000c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->initList()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mModel:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->start()V

    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    const-string v0, "BigPondFragment"

    const-string v1, "onActivityCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;

    invoke-static {}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->getInst()Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;Lcom/samsung/android/app/music/regional/bigpond/IBigPondController;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter$Builder;->build()Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->onCreateAdapter()Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 137
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 181
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mIsView:Z

    .line 173
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 141
    const v1, 0x7f1205c6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 142
    .local v0, "menuitem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 143
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 145
    :cond_0
    return-void
.end method

.method public onUpdate(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    const/4 v1, 0x1

    .line 76
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mIsView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mModel:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->showEmptyView(Z)V

    .line 83
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->setListShown(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->showEmptyView(Z)V

    goto :goto_1

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 150
    const-string v1, "BigPondFragment"

    const-string v2, "onViewCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mOnItemLongClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->setOnItemLongClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;)V

    .line 153
    const v1, 0x7f0d01be

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->setListSpaceTop(I)Landroid/view/View;

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mContext:Landroid/content/Context;

    .line 155
    const v1, 0x7f120203

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mListContainer:Landroid/view/ViewGroup;

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mEmptyView:Landroid/view/View;

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mIsView:Z

    .line 161
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v2, 0x7f020146

    .line 162
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    const v2, 0x7f0d0169

    .line 163
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    const v2, 0x7f0d04e9

    .line 164
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 165
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 167
    return-void
.end method
