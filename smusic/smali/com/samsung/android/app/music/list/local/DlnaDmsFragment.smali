.class public Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "DlnaDmsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private mWifiConnected:Z

.field private final mWifiStateListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->mWifiConnected:Z

    .line 132
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 155
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->mWifiStateListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->mWifiConnected:Z

    return p1
.end method

.method private onSetNoItemTextResId()I
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->mWifiConnected:Z

    if-eqz v0, :cond_1

    .line 73
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_DATAPROMPT_POPUP:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0125

    .line 76
    :goto_0
    return v0

    .line 73
    :cond_0
    const v0, 0x7f0a012d

    goto :goto_0

    .line 76
    :cond_1
    sget v0, Lcom/samsung/android/app/music/regional/VariantStringIds;->NO_DMS:I

    goto :goto_0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 123
    const-string/jumbo v0, "provider_id"

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x1000b

    return v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v1, "provider_name"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/DlnaDmsFragment$DlnaDmsAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 128
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f13001a

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 129
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 130
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 112
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/query/DlnaDmsQueryArgs;-><init>()V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
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
    .line 101
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindDlna()V

    .line 102
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 103
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 45
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->mWifiStateListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 85
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->mWifiStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    .line 91
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0d04e9

    .line 50
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 55
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v2, 0x7f020146

    .line 56
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 60
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 63
    const v1, 0x7f0d01be

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->setListSpaceTop(I)Landroid/view/View;

    .line 64
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->onSetNoItemTextResId()I

    move-result v2

    const v3, 0x7f0a0132

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->setListShown(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;->initListLoader(I)V

    .line 69
    return-void
.end method
