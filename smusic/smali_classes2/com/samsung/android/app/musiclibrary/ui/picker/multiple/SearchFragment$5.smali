.class Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
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
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 344
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    .line 345
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url_authority_base"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>(ZLjava/lang/String;)V

    .line 346
    .local v7, "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "count(*)"

    aput-object v4, v3, v6

    iget-object v4, v7, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 353
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$500(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->access$1000(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    .line 356
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 341
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 360
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
