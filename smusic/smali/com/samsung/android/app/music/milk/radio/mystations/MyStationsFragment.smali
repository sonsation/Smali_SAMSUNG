.class public Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "MyStationsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$MyStationsQueryArgs;,
        Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MyStationsFragment"


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private mMyStationsReciever:Landroid/content/BroadcastReceiver;

.field private mReorderableImpl:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->mItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$2;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 113
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$3;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->mReorderableImpl:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    .line 398
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$4;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->mMyStationsReciever:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->setReorderEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->setReorderEnabled(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->setListShown(ZI)V

    return-void
.end method

.method private changeLoadingViewColor(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f110256

    const/high16 v4, 0x3f000000    # 0.5f

    .line 226
    const v2, 0x7f1200fc

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 227
    .local v0, "loadingProgressBar":Landroid/widget/ProgressBar;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 228
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 230
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setAlpha(F)V

    .line 232
    :cond_0
    const v2, 0x7f120200

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 233
    .local v1, "loadingText":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 234
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 238
    :cond_1
    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 317
    const/16 v0, 0x53

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.my.tab.update_mystation_list"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "com.samsung.my.tab.update_mystation_list_from_server"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->mMyStationsReciever:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 134
    const-string v1, "904"

    const-string v2, "905"

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    .line 329
    .local v0, "builder":Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$Builder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$Builder;->build()Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->onCreateAdapter()Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 334
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
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
    .line 339
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 340
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 341
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 182
    const v0, 0x7f130024

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 183
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 365
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$MyStationsQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$MyStationsQueryArgs;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->mMyStationsReciever:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->unregisterBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 176
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDetach()V

    .line 177
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
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
    .line 347
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v3, "MyStationsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " onLoadFinished() | id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " | data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " | count: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_2

    .line 348
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 351
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v1, "stationIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 355
    :cond_0
    const-string/jumbo v2, "station_id"

    .line 356
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "stationId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    const-string v2, "MyStationsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load item : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v0    # "stationId":Ljava/lang/String;
    .end local v1    # "stationIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 348
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->pressMenu(I)V

    .line 200
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 188
    const v1, 0x7f1205d9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 190
    .local v0, "edit":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 191
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0d04e9

    .line 139
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 141
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v4, 0x7f020146

    .line 142
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v3

    .line 143
    invoke-virtual {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v3

    .line 144
    invoke-virtual {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v1

    .line 145
    .local v1, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 148
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->mItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 149
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->mReorderableImpl:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->setReorderable(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V

    .line 150
    new-instance v3, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 151
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a02f8

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 152
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->setChoiceMode(I)V

    .line 153
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v4, 0x7f0a0300

    const v5, 0x7f0a02ff

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    .line 157
    .local v0, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v0, :cond_0

    .line 158
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getListType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->initListLoader(I)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v2

    .line 164
    .local v2, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v2, :cond_1

    .line 165
    const-string v3, "MyStations"

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchResponseMyStation;

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchResponseMyStation;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation;

    invoke-direct {v6, v2, p0}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/executor/radio/LaunchMakingStation$IMyStationPressMenu;)V

    aput-object v6, v4, v5

    .line 165
    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 169
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->changeLoadingViewColor(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method public pressMenu(I)V
    .locals 4
    .param p1, "menuid"    # I

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 207
    :pswitch_0
    const-string v1, "MyStationsFragment"

    const-string/jumbo v2, "onOptionsItemSelected - Edit menu selected."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->startActionMode()V

    .line 209
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "904"

    const-string v3, "9072"

    .line 210
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :pswitch_1
    const-string v1, "MyStationsFragment"

    const-string/jumbo v2, "onOptionsItemSelected - Create menu selected."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/milk/radio/mystations/createstation/CreateStationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 219
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "904"

    const-string v3, "9071"

    .line 220
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x7f1205d8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
