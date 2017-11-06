.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SearchableFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;,
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;",
        ">",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<TT;>;",
        "Landroid/widget/SearchView$OnQueryTextListener;"
    }
.end annotation


# instance fields
.field private mIsContentChanged:Z

.field private mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

.field private mOnStart:Z

.field private mQueryTextChangeHandler:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment",
            "<TT;>.QueryTextChangeHandler;"
        }
    .end annotation
.end field

.field private mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mOnStart:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mIsContentChanged:Z

    return p1
.end method


# virtual methods
.method protected getSearchText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->getQueryText()Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    .line 169
    :cond_0
    const-string v0, "Ui"

    const-string v1, "There is not mSearchView"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, ""

    goto :goto_0
.end method

.method protected final hideKeyboardAndCursor()V
    .locals 4

    .prologue
    .line 158
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 161
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 163
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    const/4 v3, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 50
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    .line 51
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mQueryTextChangeHandler:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    .line 53
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 45
    :cond_0
    return-void
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
    .line 123
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 124
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 125
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;->cancel()V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mObserver:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mQueryTextChangeHandler:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mQueryTextChangeHandler:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mQueryTextChangeHandler:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    .line 118
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroy()V

    .line 119
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 130
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;

    .line 132
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;, "TT;"
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->setMimeTypeInfo(Landroid/database/Cursor;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->setQueryText(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 144
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->search(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 150
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->hideKeyboardAndCursor()V

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mOnStart:Z

    .line 91
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mIsContentChanged:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->restartListLoader()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->addOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 97
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mOnStart:Z

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->removeOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 105
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    .line 106
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 62
    .local v0, "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 85
    return-void
.end method

.method public restartListLoader()V
    .locals 1

    .prologue
    .line 138
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->restartListLoader()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mIsContentChanged:Z

    .line 140
    return-void
.end method

.method protected final search(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 174
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mQueryTextChangeHandler:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 176
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mQueryTextChangeHandler:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->removeMessages(I)V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->mQueryTextChangeHandler:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
