.class Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;
.super Landroid/os/Handler;
.source "SearchableFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTextChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)V
    .locals 0

    .prologue
    .line 204
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>.QueryTextChangeHandler;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;

    .prologue
    .line 204
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>.QueryTextChangeHandler;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 211
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;, "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<TT;>.QueryTextChangeHandler;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getListType()I

    move-result v0

    .line 212
    .local v0, "listType":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v1

    .local v1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    move-object v2, v1

    .line 213
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->setQueryArgs(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    .line 214
    invoke-virtual {v1}, Landroid/content/Loader;->forceLoad()V

    .line 215
    return-void
.end method
